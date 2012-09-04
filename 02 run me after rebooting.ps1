
cinst webpicommandline

$webpiTargets = @(

# Windows Installer
    "WindowsInstaller31",
    "WindowsInstaller45",

# Powershell
    "PowerShell",
    "PowerShell2",

# .NET
    "NETFramework2",
    "NETFramework35",
    "NETFramework4",
    "NETFramework45",
	
    "AppFabric",
    "AppFabricSetup",

    # Developer tools
    "MVC2",
    "MVC3",
    "Plan9",
    "Plan9Loc",
);

cmd /C ("webpicmd /Install /AcceptEula /SuppressReboot /Products:" + [string]::Join(",", $webpiTargets))

cinst virtualclonedrive
cinst sysinternals
cinst githubforwindows
cinst fiddler
cinst curl
cinst putty

cinst VirtualBox
cinst P4Merge

cinst ProgrammersNotepad
regedit /s '.\registry\replace notepad.reg'

cinst console-devel
cp .\console2.config.xml "$env:userprofile\AppData\Roaming\Console\console.xml"

