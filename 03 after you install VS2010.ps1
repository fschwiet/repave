#skipped, not sure:
    # cmd /C "webpicmdline\webpicmdline.exe /AcceptEula /SuppressReboot /Products:SMO 
    # cmd /C "webpicmdline\webpicmdline.exe /AcceptEula /SuppressReboot /Products:SMO32 
    # cmd /C "webpicmdline\webpicmdline.exe /AcceptEula /SuppressReboot /Products:SQLCE 
    # cmd /C "webpicmdline\webpicmdline.exe /AcceptEula /SuppressReboot /Products:SQLCETools 
    # cmd /C "webpicmdline\webpicmdline.exe /AcceptEula /SuppressReboot /Products:SQLCEVSTools 
    # cmd /C "webpicmdline\webpicmdline.exe /AcceptEula /SuppressReboot /Products:SQLCEVSTools_4_0
    # cmd /C "webpicmdline\webpicmdline.exe /AcceptEula /SuppressReboot /Products:SQLCEVSToolsInstallerNew_4_0 
    # cmd /C "webpicmdline\webpicmdline.exe /AcceptEula /SuppressReboot /Products:SQLCLRTypes 
    # cmd /C "webpicmdline\webpicmdline.exe /AcceptEula /SuppressReboot /Products:SQLCLRTypes32
    # cmd /C "webpicmdline\webpicmdline.exe /AcceptEula /SuppressReboot /Products:SQLNativeClient
    # cmd /C "webpicmdline\webpicmdline.exe /AcceptEula /SuppressReboot /Products:SQLManagementStudio 

    # Developer tools
    # cmd /C "webpicmdline\webpicmdline.exe /AcceptEula /SuppressReboot /Products:VWD_RTW"

    # Other
    # cmd /C "webpicmdline\webpicmdline.exe /AcceptEula /SuppressReboot /Products:WASConfigurationAPI" 
    # cmd /C "webpicmdline\webpicmdline.exe /AcceptEula /SuppressReboot /Products:WASNetFxEnvironment"
    # cmd /C "webpicmdline\webpicmdline.exe /AcceptEula /SuppressReboot /Products:WASProcessModel"
    # cmd /C "webpicmdline\webpicmdline.exe /AcceptEula /SuppressReboot /Products:WDeploy" 
    # cmd /C "webpicmdline\webpicmdline.exe /AcceptEula /SuppressReboot /Products:WDeploy_v2"
    # cmd /C "webpicmdline\webpicmdline.exe /AcceptEula /SuppressReboot /Products:WDeploy11" 	
    # cmd /C "webpicmdline\webpicmdline.exe /AcceptEula /SuppressReboot /Products:WDeployNoSMO"
    # cmd /C "webpicmdline\webpicmdline.exe /AcceptEula /SuppressReboot /Products:WDeployPS" 
    # cmd /C "webpicmdline\webpicmdline.exe /AcceptEula /SuppressReboot /Products:WebMatrix" 
    # cmd /C "webpicmdline\webpicmdline.exe /AcceptEula /SuppressReboot /Products:WebMatrix_WHP"



$webpiTargets = @(

    "IISExpress",
    "AppFabric",
    "AppFabricSetup",

    # SQL Server

    "SQLExpress",
    "SQLExpressAdv",
    "SQLExpressTools",
    "SQLManagementStudio",
    "SQLNativeClient",

    # Developer tools
    "VISUALSTUDIO2010SP1PATCH",
    "MVC2",
    "MVC3",
    "MVC3Loc",
    "MVC3Runtime",
    "Plan9",
    "Plan9Loc",
    "AzureAppFabricSDKV1PROD",
    "WindowsAzureSDK",
    "WindowsAzureToolsVS2010",

    # nodejs / iisnode
    "NodeJS",
    "iisnode"
);

cmd /C ("webpicmdline\webpicmdline.exe /AcceptEula /SuppressReboot /Products:" + [string]::Join(",", $webpiTargets))

# R#
cinst resharper

# Oracle VM VirtualBox 
cinst VirtualBox

# some registry changes
regedit /s '.\registry\DisableVisualStudioAttachWarning.reg'
regedit /s '.\registry\replace notepad.reg'
regedit /s '.\registry\swapCapsLockAndLWin.reg'
