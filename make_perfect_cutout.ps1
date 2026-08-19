Add-Type -AssemblyName System.Drawing

$srcPath = "C:\cli\206 Burger\imagens\imgi_12_466151012_18138093853365289_2988647165701844979_n.jpg"
$destPath = "C:\cli\206 Burger\imagens\burger-hero.png"

$bmp = [System.Drawing.Bitmap]::FromFile($srcPath)
$w = $bmp.Width
$h = $bmp.Height

# Refined smooth organic contour wrapping the burger
[System.Drawing.PointF[]]$pts = @(
    [System.Drawing.PointF]::new(720, 240),   # Top bun peak
    [System.Drawing.PointF]::new(880, 265),
    [System.Drawing.PointF]::new(1020, 320),
    [System.Drawing.PointF]::new(1140, 400),
    [System.Drawing.PointF]::new(1210, 500),
    [System.Drawing.PointF]::new(1240, 600),
    [System.Drawing.PointF]::new(1230, 710),  # Right bun edge
    [System.Drawing.PointF]::new(1280, 800),  # Bacon
    [System.Drawing.PointF]::new(1290, 920),
    [System.Drawing.PointF]::new(1300, 1020), # Melted cheese right
    [System.Drawing.PointF]::new(1240, 1150),
    [System.Drawing.PointF]::new(1160, 1260), # Right bottom bun
    [System.Drawing.PointF]::new(1040, 1370),
    [System.Drawing.PointF]::new(890, 1450),
    [System.Drawing.PointF]::new(720, 1480),  # Bottom bun base
    [System.Drawing.PointF]::new(550, 1450),
    [System.Drawing.PointF]::new(400, 1370),  # Left bottom bun
    [System.Drawing.PointF]::new(280, 1260),
    [System.Drawing.PointF]::new(190, 1140),  # Left patties
    [System.Drawing.PointF]::new(150, 1020),
    [System.Drawing.PointF]::new(130, 900),   # Left cheddar
    [System.Drawing.PointF]::new(120, 780),   # Fried cheese left
    [System.Drawing.PointF]::new(140, 660),
    [System.Drawing.PointF]::new(200, 540),
    [System.Drawing.PointF]::new(300, 420),
    [System.Drawing.PointF]::new(440, 320),
    [System.Drawing.PointF]::new(580, 265)
)

$outBmp = New-Object System.Drawing.Bitmap($w, $h, [System.Drawing.Imaging.PixelFormat]::Format32bppArgb)
$g = [System.Drawing.Graphics]::FromImage($outBmp)
$g.SmoothingMode = [System.Drawing.Drawing2D.SmoothingMode]::AntiAlias
$g.InterpolationMode = [System.Drawing.Drawing2D.InterpolationMode]::HighQualityBicubic
$g.PixelOffsetMode = [System.Drawing.Drawing2D.PixelOffsetMode]::HighQuality

$path = New-Object System.Drawing.Drawing2D.GraphicsPath
$path.AddClosedCurve($pts, 0.40)

$g.SetClip($path)
$g.DrawImage($bmp, 0, 0, $w, $h)

$outBmp.Save($destPath, [System.Drawing.Imaging.ImageFormat]::Png)

$g.Dispose()
$outBmp.Dispose()
$bmp.Dispose()

Write-Host "Generated pristine burger cutout: $destPath"
