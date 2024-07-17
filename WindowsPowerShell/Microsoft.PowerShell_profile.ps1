Clear-Host
#oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH/material.omp.json" | Invoke-Expression
oh-my-posh init pwsh --config ~/Documents/WindowsPowerShell/theme.toml | Invoke-Expression

Set-PSReadLineOption -PredictionSource History
Set-PSReadlineOption -PredictionViewStyle ListView

function archive-invoices {
    & 'C:\Users\Michal\Documents\WindowsPowerShell\scripts\archive-invoices.ps1'
}

# Import the Chocolatey Profile that contains the necessary code to enable
# tab-completions to function for `choco`.
# Be aware that if you are missing these lines from your profile, tab completion
# for `choco` will not function.
# See https://ch0.co/tab-completion for details.
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
