# Make it a bit more Linux like
function prompt
{
    Write-Host ($env:USERNAME.ToLower()) -NoNewline -ForegroundColor DarkYellow
    Write-Host ("@") -NoNewline -ForegroundColor Gray
    Write-Host ($env:COMPUTERNAME.ToLower()) -NoNewline -ForegroundColor DarkRed
    Write-Host (" " + $(Split-Path(Get-Location) -Leaf) + " $") -NoNewline -ForegroundColor Gray
    return " "
}

# Used more than ls
Set-Alias -Name ll -Value Get-ChildItem

# Exit on CTRL-D
Set-PSReadlineKeyHandler -Key Ctrl+d -Function DeleteCharOrExit

Clear-Host
