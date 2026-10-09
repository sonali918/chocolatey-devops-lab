
Write-Host "=================================="
Write-Host " Chocolatey Environment Checker"
Write-Host "=================================="

# Check Chocolatey
if (Get-Command choco -ErrorAction SilentlyContinue) {
    Write-Host "Chocolatey is installed."
    choco --version
} else {
    Write-Host "Chocolatey is not installed."
}

# Display configured package sources
Write-Host "`nConfigured Chocolatey sources:"
choco source list

# Check Git
Write-Host "`nChecking Git..."
if (Get-Command git -ErrorAction SilentlyContinue) {
    git --version
} else {
    Write-Host "Git is not installed."
}

Write-Host "`nEnvironment check completed!"

