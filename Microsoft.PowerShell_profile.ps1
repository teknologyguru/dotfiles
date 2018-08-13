Set-PSReadlineOption -BellStyle None
Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete

function prompt {
    $lastResult = Invoke-Expression '$?'
    if (!$lastResult) {
        Write-Host "Last command exited with error status." -ForegroundColor Red
    }
    Write-Output "${msg}$( Get-Date -UFormat "%I:%M%p" ) $(Get-Location)> "
}
