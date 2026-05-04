function Invoke-FileGeneration {
    $fileCountStr = Read-Host "1. Mitu faili soovid luua?"
    $fileCount = [int]$fileCountStr

    $filePrefix = Read-Host "2. Mis nimega (eesliide) peaksid failid algama? (Võid jätta tühjaks)"

    Write-Host "Kuhu tahad failid teha? Soovitan ise c:\Temp\files" -ForegroundColor Yellow
    $targetDirectory = Read-Host "3. Kuhu kausta soovid failid luua?"

    if ([string]::IsNullOrWhiteSpace($targetDirectory)) {
        $targetDirectory = "c:\Temp\files"
    }

    if (-not (Test-Path -Path $targetDirectory)) {
        Write-Host "Loon uue kausta: $targetDirectory" -ForegroundColor Green
        New-Item -Path $targetDirectory -ItemType Directory -Force | Out-Null
    }

    for ($i = 1; $i -le $fileCount; $i++) {
        $baseName = Get-RandomFileName
        $extension = Get-RandomExtension
        
        if ([string]::IsNullOrWhiteSpace($filePrefix)) {
            $finalName = "${baseName}${extension}"
        } else {
            $finalName = "${filePrefix}_${baseName}${extension}"
        }
        
        $filePath = Join-Path -Path $targetDirectory -ChildPath $finalName
        New-Item -Path $filePath -ItemType File -Force | Out-Null
        Write-Host "Loodud fail: $filePath" -ForegroundColor Cyan
    }

    Write-Host "Failide genereerimine on edukalt lõpetatud!" -ForegroundColor Green
}