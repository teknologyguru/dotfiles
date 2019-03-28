Set-PSReadlineOption -BellStyle None
Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete

function prompt {
    $lastResult = Invoke-Expression '$?'
    if (!$lastResult) {
        Write-Host "Last command exited with error status." -ForegroundColor Red
    }
    Write-Output "${msg}$( Get-Date -UFormat "%I:%M%p" ) $(Get-Location)> "
}

Import-Module posh-git
Import-Module oh-my-posh
Set-Theme -name Agnoster

if ($host.UI.RawUI.WindowTitle -match "Administrator") {
    $host.UI.RawUI.BackgroundColor = "DarkRed";
    $host.UI.RawUI.ForegroundColor = "White";
    Clear-Host;
    Write-Output "`n   Running as Administrator`n"
}