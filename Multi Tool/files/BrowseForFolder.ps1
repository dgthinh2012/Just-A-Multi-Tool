function Select-Folder {
    param(
        [string]$InitialDirectory = ""
    )
    Add-Type -AssemblyName System.Windows.Forms
    $folderBrowser = New-Object System.Windows.Forms.FolderBrowserDialog
    if (-not [string]::IsNullOrEmpty($InitialDirectory) -and (Test-Path $InitialDirectory -PathType Container)) {
        $folderBrowser.SelectedPath = $InitialDirectory
    }
    $folderBrowser.Description =
    $result = $folderBrowser.ShowDialog()

    if ($result -eq [System.Windows.Forms.DialogResult]::OK) {
        Write-Output $folderBrowser.SelectedPath
    } else {
        Write-Output ""
    }
}

Select-Folder -InitialDirectory "C:\"