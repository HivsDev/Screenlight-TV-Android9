from io import BytesIO
from pathlib import Path

import cairosvg
from PIL import Image, ImageDraw, ImageFont


HERE = Path(__file__).resolve().parent
decoded = HERE / "apktool" if (HERE / "apktool").exists() else HERE.parent / "tv_smali"
RES = decoded / "res"
(RES / "drawable-mdpi").mkdir(parents=True, exist_ok=True)
(RES / "drawable-hdpi").mkdir(parents=True, exist_ok=True)
svg = (HERE / "screenlight-icon.svg").read_bytes()

icon = Image.open(BytesIO(cairosvg.svg2png(bytestring=svg, output_width=512, output_height=512))).convert("RGBA")
icon.save(RES / "drawable-mdpi" / "icon.png", optimize=True)
icon.save(RES / "drawable-hdpi" / "icon.png", optimize=True)

width, height = 640, 360
banner = Image.new("RGB", (width, height))
pixels = banner.load()
for y in range(height):
    for x in range(width):
        mix = (x / width * 0.65 + y / height * 0.35)
        pixels[x, y] = tuple(round(a * (1 - mix) + b * mix) for a, b in zip((21, 26, 58), (43, 47, 119)))

banner.paste(icon.resize((256, 256), Image.Resampling.LANCZOS), (32, 52), icon.resize((256, 256), Image.Resampling.LANCZOS))
draw = ImageDraw.Draw(banner)
font_cn = ImageFont.truetype(r"C:\Windows\Fonts\msyhbd.ttc", 57)
font_en = ImageFont.truetype(r"C:\Windows\Fonts\msyh.ttc", 27)
draw.text((302, 128), "暮光TV", font=font_cn, fill=(247, 250, 255))
draw.text((305, 210), "SCREENLIGHT TV", font=font_en, fill=(127, 228, 250))
banner.save(RES / "drawable-mdpi" / "screenlight_banner.png", optimize=True)
