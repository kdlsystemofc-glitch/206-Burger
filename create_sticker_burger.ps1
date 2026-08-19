Add-Type -AssemblyName System.Drawing

$srcPath = "C:\cli\206 Burger\imagens\burger-hero.png"
$destPath = "C:\cli\206 Burger\imagens\burger-sticker-hero.png"

$bmp = [System.Drawing.Bitmap]::FromFile($srcPath)
$w = $bmp.Width
$h = $bmp.Height

$outBmp = New-Object System.Drawing.Bitmap($w, $h, [System.Drawing.Imaging.PixelFormat]::Format32bppArgb)
$g = [System.Drawing.Graphics]::FromImage($outBmp)
$g.SmoothingMode = [System.Drawing.Drawing2D.SmoothingMode]::AntiAlias
$g.InterpolationMode = [System.Drawing.Drawing2D.InterpolationMode]::HighQualityBicubic
$g.PixelOffsetMode = [System.Drawing.Drawing2D.PixelOffsetMode]::HighQuality

# Burger contour points
[System.Drawing.PointF[]]$pts = @(
    [System.Drawing.PointF]::new(720, 240),
    [System.Drawing.PointF]::new(880, 265),
    [System.Drawing.PointF]::new(1020, 320),
    [System.Drawing.PointF]::new(1140, 400),
    [System.Drawing.PointF]::new(1210, 500),
    [System.Drawing.PointF]::new(1240, 600),
    [System.Drawing.PointF]::new(1230, 710),
    [System.Drawing.PointF]::new(1280, 800),
    [System.Drawing.PointF]::new(1290, 920),
    [System.Drawing.PointF]::new(1300, 1020),
    [System.Drawing.PointF]::new(1240, 1150),
    [System.Drawing.PointF]::new(1160, 1260),
    [System.Drawing.PointF]::new(1040, 1370),
    [System.Drawing.PointF]::new(890, 1450),
    [System.Drawing.PointF]::new(720, 1480),
    [System.Drawing.PointF]::new(550, 1450),
    [System.Drawing.PointF]::new(400, 1370),
    [System.Drawing.PointF]::new(280, 1260),
    [System.Drawing.PointF]::new(190, 1140),
    [System.Drawing.PointF]::new(150, 1020),
    [System.Drawing.PointF]::new(130, 900),
    [System.Drawing.PointF]::new(120, 780),
    [System.Drawing.PointF]::new(140, 660),
    [System.Drawing.PointF]::new(200, 540),
    [System.Drawing.PointF]::new(300, 420),
    [System.Drawing.PointF]::new(440, 320),
    [System.Drawing.PointF]::new(580, 265)
)

$burgerPath = New-Object System.Drawing.Drawing2D.GraphicsPath
$burgerPath.AddClosedCurve($pts, 0.40)

# 1. White die-cut sticker backing
$whiteBrush = New-Object System.Drawing.SolidBrush([System.Drawing.Color]::White)
$whitePen = New-Object System.Drawing.Pen([System.Drawing.Color]::White, 55)
$whitePen.LineJoin = [System.Drawing.Drawing2D.LineJoin]::Round

# Draw white backing
$g.FillPath($whiteBrush, $burgerPath)
$g.DrawPath($whitePen, $burgerPath)

# 2. Draw burger photo
$g.DrawImage($bmp, 0, 0, $w, $h)

# 3. Cartoon Character Eyes (matching reference exactly)
# Left eye (x: 520, y: 220, size: 150)
$eyeOuterPen = New-Object System.Drawing.Pen([System.Drawing.Color]::White, 20)
$pupilBrush = New-Object System.Drawing.SolidBrush([System.Drawing.Color]::FromArgb(255, 20, 20, 22))

# Eye 1 (Left)
$g.FillEllipse($whiteBrush, 520, 210, 160, 160)
$g.DrawEllipse($eyeOuterPen, 520, 210, 160, 160)
$g.FillPie($pupilBrush, 540, 230, 120, 120, 140, 290)

# Eye 2 (Right)
$g.FillEllipse($whiteBrush, 670, 200, 160, 160)
$g.DrawEllipse($eyeOuterPen, 670, 200, 160, 160)
$g.FillPie($pupilBrush, 690, 220, 120, 120, 140, 290)

# 4. White expression motion dashes (Left top)
$linePen = New-Object System.Drawing.Pen([System.Drawing.Color]::White, 18)
$linePen.StartCap = [System.Drawing.Drawing2D.LineCap]::Round
$linePen.EndCap = [System.Drawing.Drawing2D.LineCap]::Round

$g.DrawArc($linePen, 410, 190, 90, 90, 200, 75)
$g.DrawArc($linePen, 450, 150, 80, 80, 200, 75)

# Save
$outBmp.Save($destPath, [System.Drawing.Imaging.ImageFormat]::Png)

$linePen.Dispose()
$pupilBrush.Dispose()
$eyeOuterPen.Dispose()
$whiteBrush.Dispose()
$whitePen.Dispose()
$burgerPath.Dispose()
$g.Dispose()
$outBmp.Dispose()
$bmp.Dispose()

Write-Host "Created reference-matched sticker burger: $destPath"
