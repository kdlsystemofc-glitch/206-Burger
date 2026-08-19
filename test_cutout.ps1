Add-Type -AssemblyName System.Drawing

$srcPath = "C:\cli\206 Burger\imagens\imgi_12_466151012_18138093853365289_2988647165701844979_n.jpg"
$destPath = "C:\cli\206 Burger\imagens\burger-cutout.png"

$bmp = [System.Drawing.Bitmap]::FromFile($srcPath)
$width = $bmp.Width
$height = $bmp.Height

Write-Host "Source image size: $width x $height"

# Create a 32-bit ARGB bitmap
$outBmp = New-Object System.Drawing.Bitmap($width, $height, [System.Drawing.Imaging.PixelFormat]::Format32bppArgb)
$g = [System.Drawing.Graphics]::FromImage($outBmp)
$g.SmoothingMode = [System.Drawing.Drawing2D.SmoothingMode]::AntiAlias
$g.InterpolationMode = [System.Drawing.Drawing2D.InterpolationMode]::HighQualityBicubic

# Create a closed path around the burger (center 85% area)
$path = New-Object System.Drawing.Drawing2D.GraphicsPath
# Burger sits centrally in imgi_12: center around (cx, cy)
$cx = $width / 2.0
$cy = $height * 0.52
$rx = $width * 0.44
$ry = $height * 0.42

$path.AddEllipse([float]($cx - $rx), [float]($cy - $ry), [float]($rx * 2), [float]($ry * 2))

# Use TextureBrush or DrawImage with Clip
$g.SetClip($path)
$g.DrawImage($bmp, 0, 0, $width, $height)

$outBmp.Save($destPath, [System.Drawing.Imaging.ImageFormat]::Png)

$g.Dispose()
$outBmp.Dispose()
$bmp.Dispose()

Write-Host "Saved cutout to $destPath"
