Add-Type -AssemblyName System.Drawing

$srcPath = "C:\cli\206 Burger\imagens\imgi_12_466151012_18138093853365289_2988647165701844979_n.jpg"
$destPath = "C:\cli\206 Burger\imagens\burger-cutout.png"

$bmp = [System.Drawing.Bitmap]::FromFile($srcPath)
$w = $bmp.Width
$h = $bmp.Height

$rect = New-Object System.Drawing.Rectangle(0, 0, $w, $h)
$srcData = $bmp.LockBits($rect, [System.Drawing.Imaging.ImageLockMode]::ReadOnly, [System.Drawing.Imaging.PixelFormat]::Format32bppArgb)

$outBmp = New-Object System.Drawing.Bitmap($w, $h, [System.Drawing.Imaging.PixelFormat]::Format32bppArgb)
$dstData = $outBmp.LockBits($rect, [System.Drawing.Imaging.ImageLockMode]::WriteOnly, [System.Drawing.Imaging.PixelFormat]::Format32bppArgb)

$srcPtr = $srcData.Scan0
$dstPtr = $dstData.Scan0

$totalBytes = $w * $h * 4
$bytes = New-Object byte[] $totalBytes
[System.Runtime.InteropServices.Marshal]::Copy($srcPtr, $bytes, 0, $totalBytes)

# We want the burger located in center
# Let's compute distance from center ellipse
$cx = $w * 0.50
$cy = $h * 0.50
$rx = $w * 0.44
$ry = $h * 0.42

for ($y = 0; $y -lt $h; $y++) {
    for ($x = 0; $x -lt $w; $x++) {
        $idx = ($y * $w + $x) * 4
        $b = $bytes[$idx]
        $g = $bytes[$idx + 1]
        $r = $bytes[$idx + 2]
        $a = $bytes[$idx + 3]

        # Normalized distance from center
        $dx = ($x - $cx) / $rx
        $dy = ($y - $cy) / $ry
        $dist = [Math]::Sqrt($dx*$dx + $dy*$dy)

        # Check color: burger has strong warm tones (R > B + 20, or high saturation)
        # Background is dark or grey/blue (R, G, B close or low brightness)
        $brightness = (0.299 * $r + 0.587 * $g + 0.114 * $b)
        $isWarm = ($r - $b) -gt 25

        if ($dist -gt 1.15) {
            # Outside outer ellipse -> completely transparent
            $bytes[$idx + 3] = 0
        } elseif ($dist -gt 0.85) {
            # In boundary transition zone: blend based on color warmth and distance
            $edgeFactor = (1.15 - $dist) / 0.30
            if (-not $isWarm -and $brightness -lt 70) {
                # Dark background in boundary
                $bytes[$idx + 3] = [byte]0
            } else {
                $alpha = [int]($edgeFactor * 255)
                if ($alpha -gt 255) { $alpha = 255 }
                if ($alpha -lt 0) { $alpha = 0 }
                $bytes[$idx + 3] = [byte]$alpha
            }
        } else {
            # Inside core burger region
            if ($dist -gt 0.7 -and -not $isWarm -and $brightness -lt 45) {
                $bytes[$idx + 3] = [byte]0
            } else {
                $bytes[$idx + 3] = [byte]255
            }
        }
    }
}

[System.Runtime.InteropServices.Marshal]::Copy($bytes, 0, $dstPtr, $totalBytes)

$bmp.UnlockBits($srcData)
$outBmp.UnlockBits($dstData)

$outBmp.Save($destPath, [System.Drawing.Imaging.ImageFormat]::Png)

$outBmp.Dispose()
$bmp.Dispose()
Write-Host "Processed transparent cutout burger: $destPath"
