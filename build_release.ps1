param(
    [Parameter(Mandatory=$true)][string]$AndroidSdk,
    [string]$ApktoolJar = (Join-Path $PSScriptRoot 'tools/apktool.jar'),
    [string]$Keystore = (Join-Path $PSScriptRoot 'signing/screenlight-release.keystore'),
    [string]$Output = (Join-Path $PSScriptRoot 'Screenlight-TV-v1.9.1-Android4.4plus-32bit-release.apk')
)

$ErrorActionPreference = 'Stop'
$source = Join-Path $PSScriptRoot 'src/com/screenlight/tv'
$decoded = Join-Path $PSScriptRoot 'apktool'
$build = Join-Path $PSScriptRoot 'build'
$classes = Join-Path $build 'classes'
$dex = Join-Path $build 'dex'
$merged = Join-Path $build 'merged'
$androidJar = Join-Path $AndroidSdk 'platforms/android-28/android.jar'
$tools = Join-Path $AndroidSdk 'build-tools/35.0.0/android-15'
$d8 = Join-Path $tools 'd8.bat'
$zipalign = Join-Path $tools 'zipalign.exe'
$signer = Join-Path $tools 'apksigner.bat'
$aapt = Join-Path $tools 'aapt.exe'

foreach ($required in @($ApktoolJar, $Keystore, $androidJar, $d8, $zipalign, $signer, $aapt)) {
    if (-not (Test-Path $required)) { throw "Missing build dependency: $required" }
}
if (-not $env:SCREENLIGHT_STORE_PASS) {
    $passwordFile = Join-Path $PSScriptRoot 'signing/release-password.txt'
    if (Test-Path $passwordFile) {
        $env:SCREENLIGHT_STORE_PASS = (Get-Content $passwordFile -Raw).Trim()
    } else { throw 'Set SCREENLIGHT_STORE_PASS to the release keystore password.' }
}
foreach ($directory in @($classes, $dex, $merged)) {
    if (Test-Path $directory) { Remove-Item -LiteralPath $directory -Recurse -Force }
}
New-Item -ItemType Directory -Force $classes, $dex, $merged | Out-Null

& javac -encoding UTF-8 -source 8 -target 8 -cp $androidJar -d $classes `
    (Join-Path $source 'LegacyTls.java') (Join-Path $source 'TvApi.java') (Join-Path $source 'PlaybackState.java') `
    (Join-Path $source 'TvActivity.java') (Join-Path $source 'TvPlayerActivity.java')
if ($LASTEXITCODE -ne 0) { throw 'javac failed' }
$classFiles = @(Get-ChildItem $classes -Recurse -Filter '*.class' | ForEach-Object FullName)
& $d8 --min-api 19 --lib $androidJar --output $dex $classFiles
if ($LASTEXITCODE -ne 0) { throw 'd8 failed' }

$unsigned = Join-Path $build 'unsigned.apk'
$aligned = Join-Path $build 'aligned.apk'
& java -jar $ApktoolJar b $decoded -o $unsigned
if ($LASTEXITCODE -ne 0) { throw 'apktool failed' }
Push-Location $build
try { & jar xf $unsigned classes.dex }
finally { Pop-Location }
if ($LASTEXITCODE -ne 0) { throw 'Could not extract original classes.dex' }
& $d8 --min-api 19 --lib $androidJar --output $merged `
    (Join-Path $build 'classes.dex') (Join-Path $dex 'classes.dex')
if ($LASTEXITCODE -ne 0) { throw 'Main DEX merge failed' }
if (Test-Path (Join-Path $merged 'classes2.dex')) { throw 'Merged code exceeds one DEX' }
& jar uf $unsigned -C $merged classes.dex
if ($LASTEXITCODE -ne 0) { throw 'Could not replace main DEX' }
& $zipalign -f -p 4 $unsigned $aligned
if ($LASTEXITCODE -ne 0) { throw 'zipalign failed' }
& $signer sign --ks $Keystore --ks-key-alias screenlighttv --ks-pass env:SCREENLIGHT_STORE_PASS --key-pass env:SCREENLIGHT_STORE_PASS --out $Output $aligned
if ($LASTEXITCODE -ne 0) { throw 'apksigner failed' }
& $zipalign -c -p 4 $Output
if ($LASTEXITCODE -ne 0) { throw 'zipalign verification failed' }
& $signer verify --verbose $Output
if ($LASTEXITCODE -ne 0) { throw 'signature verification failed' }
& $aapt dump badging $Output | Select-String '^(package:|application-label:|native-code:|sdkVersion:|targetSdkVersion:)' | ForEach-Object Line
Write-Output "Release APK: $Output"
