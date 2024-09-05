# Enkelt backup-script for LOKAL backup

#### Code

Param(
  [Parameter(Mandatory)]
  [string]$Path = '',
  [Parameter(Mandatory)]
  [string]$DestinationPath = ''
)
$date = Get-Date -format "yyyy-MM-dd-HH-mm"
Compress-Archive -Path $Path -CompressionLevel 'Fastest' -DestinationPath "$($DestinationPath + 'backup-' + $date)"
Write-Host "Created backup at $($DestinationPath + 'backup-' + $date + '.zip')"
