# How to install and config Windows Terminal
This is a simple report with resources to configure Windows Terminal with **Oh my Posh** for PowerShell and Windows Subsistem Linux (WSL).

**Prerrequisites:**  You must be running Windows 10 version 2004 and higher (Build 19041 and higher) or Windows 11

# On Windows
## Install Powershell
  - Install: https://docs.microsoft.com/en-us/powershell/scripting/install/installing-powershell-on-windows?view=powershell-7.1
  - Config Windows Terminal to set pswh.exe path if it needed (mainly when you install it as a portable)
   
## Oh my Posh (https://ohmyposh.dev/)
  * Install Chocolatey (https://chocolatey.org/) : 
     - `choco install oh-my-posh`. **Note**: Without admin right follow this instructions: https://docs.chocolatey.org/en-us/choco/setup#non-administrative-install
     - Fonts: Navigate tu "https://www.nerdfonts.com/" and downloads "Caskaydia Cove Nerd Font"	
     - Copy the file "Microsoft.PowerShell_profile.ps1" in your path: "C:\Users\<USER_NAME>\Documents\PowerShell\"
     - Run below sentences in your PS terminal to install icons:
        - `Install-Module -Name Terminal-Icons -Repository PSGallery`
        - `Import-Module -Name Terminal-Icons`	
	
   * Update Windows Terminal settings:
     - Select settings / PowerShell / Apperance and for the "Font Face", choose font "Caskaydia Cove Nerd Font" (the previous one donwnloaded). 
     - **Important**: the current "juanlu.omp.json" is working with the previous font. So update this file if you consider use another one !
     - Update background image like this:![image](https://user-images.githubusercontent.com/5904157/188324064-13cef42a-7109-4a37-901e-a77b9a10560e.png)   

## Preditor
  <No completed yet>

### AZ Predictor
  * Find-Module Az.Tools.Predictor -AllowPrerelease
  * Install-Module -Name Az.Tools.Predictor -RequiredVersion 0.4.0 -Scope CurrentUser

## The result
After complete the previous steps your terminal for Powershell shoud be like this one, where you also see "Prediction" (in a list mode) when you're writing something:
![image](https://user-images.githubusercontent.com/5904157/188324249-51e164be-bcb2-49ef-89b6-7c0783525d4b.png)


# On Windows Subsistem Linux (WSL)
   * First, be sure "Windows Subsistem for Linux" has been enabled in the Windows Features
    ![image](https://user-images.githubusercontent.com/5904157/190855086-556bfcd0-af72-41c4-8785-e7f5e7000542.png)
   
   * Install WSL and configure it to use WSL2 (https://learn.microsoft.com/en-us/windows/wsl/install)
   * Install Ubuntu (from Windows Store or else run `wsl.exe -- install -d "<distribution-name>`"


# On Mac
   Not implemented yet !



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
