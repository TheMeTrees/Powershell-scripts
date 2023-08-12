# Function to close all open Chrome windows
function CloseChromeWindows {
    $chromeProcesses = Get-Process -Name chrome -ErrorAction SilentlyContinue
    if ($chromeProcesses) {
        Stop-Process -Name "chrome" -Force
        Write-Host "Closed all open Chrome windows."
    } else {
        Write-Host "No open Chrome windows found."
    }
}

# Function to run GoogleUpdate.exe
function RunGoogleUpdate {
    $googleUpdatePath = "C:\Program Files (x86)\Google\Update\GoogleUpdate.exe"
    if (Test-Path $googleUpdatePath) {
        Start-Process -FilePath $googleUpdatePath -Wait
        Write-Host "GoogleUpdate.exe executed."
    } else {
        Write-Host "GoogleUpdate.exe not found in the specified path."
    }
}

Write-Host "Process started."

# Close Chrome windows
CloseChromeWindows

# Run GoogleUpdate.exe
RunGoogleUpdate

Write-Host "Process completed."


