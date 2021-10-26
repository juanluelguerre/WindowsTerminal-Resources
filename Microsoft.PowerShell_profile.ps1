# %PROFILE
# C:\Users\jguerrerominero\Documents\PowerShell\Microsoft.PowerShell_profile.ps1
#
# https://www.hanselman.com/blog/my-ultimate-powershell-prompt-with-oh-my-posh-and-the-windows-terminal
#
oh-my-posh --init --shell pwsh --config  ~/"OneDrive - Deloitte (O365D)"/juanlu.omp.json | Invoke-Expression

Import-Module -Name Terminal-Icons

# Install-Module -Name PSReadLine -RequiredVersion 2.2.0-beta3 -AllowPrerelease
Import-Module PSReadLine
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView
Set-PSReadLineOption -EditMode Windows
