# How to install and config Windows Terminal
This is a simple report with resources to configure Windows Terminal with **Oh my Posh** for PowerShell and Windows Subsistem Linux (WSL).
**Prerrequisites:**  You must be running Windows 10 version 2004 and higher (Build 19041 and higher) or Windows 11

# On Windows
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
   * Update Windows Terminal settings:
     - Select settings / PowerShell / Apperance and for the "Font Face" choose font "Caskaydia Cove Nerd Font" (the previous donwnloaded). 
     - **Important**: the current "juanlu.omp.json" is working with "juanlu.omp.json". So update this file if you choose whatever other font !
     - Update background image like this:![image](https://user-images.githubusercontent.com/5904157/188324064-13cef42a-7109-4a37-901e-a77b9a10560e.png)   
		
## AZ Predictor
  * Find-Module Az.Tools.Predictor -AllowPrerelease
  * Install-Module -Name Az.Tools.Predictor -RequiredVersion 0.4.0 -Scope CurrentUser

## The result
After complete the previous steps your terminal for Powershell shoud be like this one, where you also see "Prediction" (in a list mode) when you're writing something:
![image](https://user-images.githubusercontent.com/5904157/188324249-51e164be-bcb2-49ef-89b6-7c0783525d4b.png)


# On Windows Subsistem Linux (WSL)
## Activate Windows Features
  ○ Install WSL  
  ○ Install Ubuntu //  also wsl.exe -- install -d "<distribution-name>"
	
## Update Windows Terminal settings:
   - Update background image like this:    
	
# Running native Linux Graphical Applications under WSL (WSLG)
## For latest Windows Versions (Windows 11 (build 22000.*) or Windows 11 Insider Preview (builds 21362+): 
  - Follow steps from here: https://github.com/microsoft/wslg
  -  <Pending to Install/configure it on Windows Termina>
	
	
## Previous Windows Versions :
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
	
  - Install Windows Server X: https://sourceforge.net/projects/vcxsrv/ Or download and unzip it using 7-Zip.
  - Run xalunch.exe and configure it.
  - Save  previous configuration as config.xlaunch to use in `Start-WinLinux.cmd` script 
	
## [Optional] Install Telegram (on WLS)
  - sudo add-apt-repository ppa:atareao/telegram
  - sudo apt update && sudo apt install telegram-desktop
