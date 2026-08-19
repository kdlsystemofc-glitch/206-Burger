Add-Type -AssemblyName System.Drawing

$refPath = "C:\cli\206 Burger\referencia\reference-full.png.png"
$destPath = "C:\cli\206 Burger\reports\reference-hero-crop.png"

$bmp = [System.Drawing.Bitmap]::FromFile($refPath)
$w = $bmp.Width
# Crop the first 1400px of height
$h = 1350

$rect = New-Object System.Drawing.Rectangle(0, 0, $w, $h)
$cropBmp = $bmp.Clone($rect, $bmp.PixelFormat)

$cropBmp.Save($destPath, [System.Drawing.Imaging.ImageFormat]::Png)

$cropBmp.Dispose()
$bmp.Dispose()

Write-Host "Cropped reference hero to $destPath"
