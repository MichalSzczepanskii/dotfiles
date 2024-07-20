Clear-Host
oh-my-posh init pwsh --config ~/Documents/WindowsPowerShell/theme.toml | Invoke-Expression

Invoke-Expression (& { (zoxide init --cmd cd powershell | Out-String) })

Import-Module PSFzf

Set-PSReadLineOption -PredictionSource History
#Set-PSReadlineOption -PredictionViewStyle ListView
Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete
Set-PSReadlineKeyHandler -Key UpArrow -Function HistorySearchBackward
Set-PSReadlineKeyHandler -Key DownArrow -Function HistorySearchForward

Set-PsFzfOption -PSReadLineChordProvider 'Ctrl+F' -PSReadLineChordReverseHistory 'Ctrl+R'

$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}

function eza-ls {
  eza.exe --long --header --icons --group-directories-first --git --no-permissions
}

function eza-ld {
  eza.exe --long --header --icons --group-directories-first --git --only-dirs
}

function eza-lf {
  eza.exe --long --header --icons --git -lf
}

Set-Alias -Name ls -Value eza-ls -Option AllScope
Set-Alias -Name ld -Value eza-ld -Option AllScope
Set-Alias -Name lf -Value eza-lf -Option AllScope
Set-Alias -Name vim -Value nvim -Option AllScope
Set-Alias -Name vi -Value nvim -Option AllScope
