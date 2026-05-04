$publicDir = Join-Path -Path $PSScriptRoot -ChildPath 'Public'
$privateDir = Join-Path -Path $PSScriptRoot -ChildPath 'Private'

if (Test-Path -Path $publicDir) {
    Get-ChildItem -Path $publicDir -Filter '*.ps1' | ForEach-Object { . $_.FullName }
}

if (Test-Path -Path $privateDir) {
    Get-ChildItem -Path $privateDir -Filter '*.ps1' | ForEach-Object { . $_.FullName }
}

Export-ModuleMember -Function 'Invoke-FileGeneration'