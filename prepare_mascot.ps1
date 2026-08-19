Add-Type -AssemblyName System.Drawing

$srcPath = "C:\cli\206 Burger\imagens\imgi_17_370602965_18089102977365289_4156203765211079968_n.jpg"
$destPath = "C:\cli\206 Burger\imagens\mascot-fries.png"

$bmp = [System.Drawing.Bitmap]::FromFile($srcPath)
$w = $bmp.Width
$h = $bmp.Height

# Exact bounding box of the french fries character
$rx = [int]($w * 0.30)
$ry = 0
$rw = [int]($w * 0.44)
$rh = [int]($h * 0.40)

$rect = New-Object System.Drawing.Rectangle($rx, $ry, $rw, $rh)
$cropBmp = $bmp.Clone($rect, $bmp.PixelFormat)

# Create sticker with smooth contour and white border
$outBmp = New-Object System.Drawing.Bitmap($cropBmp.Width, $cropBmp.Height, [System.Drawing.Imaging.PixelFormat]::Format32bppArgb)
$g = [System.Drawing.Graphics]::FromImage($outBmp)
$g.SmoothingMode = [System.Drawing.Drawing2D.SmoothingMode]::AntiAlias
$g.InterpolationMode = [System.Drawing.Drawing2D.InterpolationMode]::HighQualityBicubic

$path = New-Object System.Drawing.Drawing2D.GraphicsPath
$path.AddEllipse(15, 15, $cropBmp.Width - 30, $cropBmp.Height - 30)

$whiteBrush = New-Object System.Drawing.SolidBrush([System.Drawing.Color]::White)
$whitePen = New-Object System.Drawing.Pen([System.Drawing.Color]::White, 36)
$g.FillPath($whiteBrush, $path)
$g.DrawPath($whitePen, $path)

$g.SetClip($path)
$g.DrawImage($cropBmp, 0, 0, $cropBmp.Width, $cropBmp.Height)

$outBmp.Save($destPath, [System.Drawing.Imaging.ImageFormat]::Png)

$whitePen.Dispose()
$whiteBrush.Dispose()
$path.Dispose()
$g.Dispose()
$outBmp.Dispose()
$cropBmp.Dispose()
$bmp.Dispose()

Write-Host "Created mascot sticker: $destPath"
