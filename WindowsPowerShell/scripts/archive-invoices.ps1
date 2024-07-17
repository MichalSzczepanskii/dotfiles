# Get the current directory (the location from where the script is executed)
$sourceDirectory = Get-Location

# Define the destination directory (same as source directory)
$destinationDirectory = $sourceDirectory

$previousMonthDate = (Get-Date).AddMonths(-1).ToString("yyyy-MM")

# Define the name of the ZIP file
$zipFileName = "szczepanski-michal-faktury-$previousMonthDate.zip"
$zipFilePath = Join-Path -Path $destinationDirectory -ChildPath $zipFileName

# Check if the Compress-Archive cmdlet is available (PowerShell 5.0 and later)
if (Get-Command -Name Compress-Archive -ErrorAction SilentlyContinue) {
    # Archive the files into a ZIP file
    Compress-Archive -Path "$sourceDirectory\*" -DestinationPath $zipFilePath
    Write-Output "Files from $sourceDirectory have been archived to $zipFilePath"
} else {
    Write-Output "Compress-Archive cmdlet is not available on this system."
}