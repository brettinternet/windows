Write-Host "Updating all apps with winget..." -ForegroundColor Green

try {
  winget upgrade --all --accept-package-agreements --accept-source-agreements

  Write-Host "All apps updated successfully!" -ForegroundColor Green
}
catch {
  Write-Host "Error updating apps: $_" -ForegroundColor Red
  exit 1
}
