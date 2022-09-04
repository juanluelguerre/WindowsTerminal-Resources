# How to install and config Windows Terminal
This is a simple report to install and configure WSL on Windows Terminal aslgo with Oh my Posh

## Notes
 - **WSL:** Windows Subsystem Linux
 - **Prerrequisites:**  You must be running Windows 10 version 2004 and higher (Build 19041 and higher) or Windows 11

## Activate Windows Features
  ○ Install WSL  
  ○ Install Ubuntu //  also wsl.exe -- install -d "<distribution-name>"

## Install Powershell
  - Install: https://docs.microsoft.com/en-us/powershell/scripting/install/installing-powershell-on-windows?view=powershell-7.1
  - Config Windows Terminal to set pswh.exe path !
  - perfil Powershell
   

## Oh my Posh (https://ohmyposh.dev/)
  * Install:
    * Chocolatey (https://chocolatey.org/) : 
      - Without Admin right: https://docs.chocolatey.org/en-us/choco/setup#non-administrative-install 
	 - choco install oh-my-posh
	 - Fonts: https://www.nerdfonts.com/ --> downloads -->  "Caskaydia Cove Nerd Font"	
	 - Powershell: C:\Users\jguerrerominero\Documents\PowerShell\Microsoft.PowerShell_profile.ps1
	 - Icons:
	    - Install-Module -Name Terminal-Icons -Repository PSGallery
	    - Import-Module -Name Terminal-Icons
	 - Linux (Ubuntu / bash):
	 - Mac: N/A
		
## AZ Predictor
  * Find-Module Az.Tools.Predictor -AllowPrerelease
  * Install-Module -Name Az.Tools.Predictor -RequiredVersion 0.4.0 -Scope CurrentUser

## Install GUI in WSL 2
 - https://medium.com/@japheth.yates/the-complete-wsl2-gui-setup-2582828f4577 
   - sudo apt update && sudo apt -y upgrade
   - sudo apt install build-essential
   - sudo apt install net-tools
   - sudo apt install xrdp -y && sudo systemctl 
   - sudo apt install -y tasksel
   - sudo tasksel install xubuntu-desktop
   - sudo apt install gtk2-engines
   - export DISPLAY=$(cat /etc/resolv.conf | grep nameserver | awk '{print $2; exit;}'):0.0
   - export LIBGL_ALWAYS_INDIRECT=1
   - sudo /etc/init.d/dbus start &> /dev/null
   - nano ~/.bashrc
   
## Install Telegram (Linux)
  - sudo add-apt-repository ppa:atareao/telegram
  - sudo apt update && sudo apt install telegram-desktop

# WSL (NO WSLG)
  - Install Windows Server X: https://sourceforge.net/projects/vcxsrv/ Or download and unzip it using 7-Zip.
  - Run xalunch.exe and configure it.
  - Save  previous configuration as config.xlaunch to use in `Start-WinLinux.cmd` script 
