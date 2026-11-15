param(
    [Parameter(Mandatory=$true)][string]$AndroidSdk,
    [string]$ApktoolJar = (Join-Path $PSScriptRoot 'tools/apktool.jar'),
    [string]$Keystore = (Join-Path $PSScriptRoot 'signing/tv-release.keystore'),
    [string]$Output = (Join-Path $PSScriptRoot 'Screenlight-TV-Android9-v1.9-32bit-release.apk')
)

$ErrorActionPreference = 'Stop'
$source = Join-Path $PSScriptRoot 'src/com/tg666/tv'
$decoded = Join-Path $PSScriptRoot 'apktool'
$build = Join-Path $PSScriptRoot 'build'
$classes = Join-Path $build 'classes'
$dex = Join-Path $build 'dex'
$androidJar = Join-Path $AndroidSdk 'platforms/android-28/android.jar'
$tools = Join-Path $AndroidSdk 'build-tools/35.0.0/android-15'
$d8 = Join-Path $tools 'd8.bat'
$zipalign = Join-Path $tools 'zipalign.exe'
$signer = Join-Path $tools 'apksigner.bat'
$aapt = Join-Path $tools 'aapt.exe'

foreach ($required in @($ApktoolJar, $Keystore, $androidJar, $d8, $zipalign, $signer, $aapt)) {
    if (-not (Test-Path $required)) { throw "Missing build dependency: $required" }
}
if (-not $env:SCREENLIGHT_STORE_PASS) { throw 'Set SCREENLIGHT_STORE_PASS to the release keystore password.' }
New-Item -ItemType Directory -Force $classes, $dex | Out-Null

& javac -encoding UTF-8 -source 8 -target 8 -cp $androidJar -d $classes `
    (Join-Path $source 'TvApi.java') (Join-Path $source 'TvActivity.java') (Join-Path $source 'TvPlayerActivity.java')
if ($LASTEXITCODE -ne 0) { throw 'javac failed' }
$classFiles = @(Get-ChildItem $classes -Recurse -Filter '*.class' | ForEach-Object FullName)
& $d8 --min-api 18 --lib $androidJar --output $dex $classFiles
if ($LASTEXITCODE -ne 0) { throw 'd8 failed' }
Copy-Item (Join-Path $dex 'classes.dex') (Join-Path $dex 'classes2.dex') -Force

$unsigned = Join-Path $build 'unsigned.apk'
$aligned = Join-Path $build 'aligned.apk'
& java -jar $ApktoolJar b $decoded -o $unsigned
if ($LASTEXITCODE -ne 0) { throw 'apktool failed' }
& jar uf $unsigned -C $dex classes2.dex
if ($LASTEXITCODE -ne 0) { throw 'jar failed' }
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
