Add-Type -AssemblyName System.Drawing

$srcPath = "C:\cli\206 Burger\imagens\imgi_6_732435592_18200888842365289_1697813225018122103_n.jpg"
$destPath = "C:\cli\206 Burger\imagens\mascot-character.png"

$bmp = [System.Drawing.Bitmap]::FromFile($srcPath)
$w = $bmp.Width
$h = $bmp.Height
Write-Host "imgi_6 size: $w x $h"

# Create clean sticker circle with white border
$outBmp = New-Object System.Drawing.Bitmap($w, $h, [System.Drawing.Imaging.PixelFormat]::Format32bppArgb)
$g = [System.Drawing.Graphics]::FromImage($outBmp)
$g.SmoothingMode = [System.Drawing.Drawing2D.SmoothingMode]::AntiAlias
$g.InterpolationMode = [System.Drawing.Drawing2D.InterpolationMode]::HighQualityBicubic

$path = New-Object System.Drawing.Drawing2D.GraphicsPath
$path.AddEllipse(20, 20, $w - 40, $h - 40)

$whiteBrush = New-Object System.Drawing.SolidBrush([System.Drawing.Color]::White)
$whitePen = New-Object System.Drawing.Pen([System.Drawing.Color]::White, 40)
$g.FillPath($whiteBrush, $path)
$g.DrawPath($whitePen, $path)

$g.SetClip($path)
$g.DrawImage($bmp, 0, 0, $w, $h)

$outBmp.Save($destPath, [System.Drawing.Imaging.ImageFormat]::Png)

$whitePen.Dispose()
$whiteBrush.Dispose()
$path.Dispose()
$g.Dispose()
$outBmp.Dispose()
$bmp.Dispose()

Write-Host "Saved imgi_6 sticker: $destPath"
