
cmd /C "webpicmdline\webpicmdline.exe /AcceptEula /SuppressReboot /Products:IISExpress"
cmd /C "webpicmdline\webpicmdline.exe /AcceptEula /SuppressReboot /Products:AppFabric"
cmd /C "webpicmdline\webpicmdline.exe /AcceptEula /SuppressReboot /Products:AppFabricSetup"



# IIS
cmd /C "webpicmdline\webpicmdline.exe /AcceptEula /SuppressReboot /Products:UrlRewrite2"
cmd /C "webpicmdline\webpicmdline.exe /AcceptEula /SuppressReboot /Products:CGI"

# # SQL Server

cmd /C "webpicmdline\webpicmdline.exe /AcceptEula /SuppressReboot /Products:SQLExpress 
cmd /C "webpicmdline\webpicmdline.exe /AcceptEula /SuppressReboot /Products:SQLExpressAdv 
cmd /C "webpicmdline\webpicmdline.exe /AcceptEula /SuppressReboot /Products:SQLExpressTools 
cmd /C "webpicmdline\webpicmdline.exe /AcceptEula /SuppressReboot /Products:SQLManagementStudio 
cmd /C "webpicmdline\webpicmdline.exe /AcceptEula /SuppressReboot /Products:SQLNativeClient 


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
# cmd /C "webpicmdline\webpicmdline.exe /AcceptEula /SuppressReboot /Products:VISUALSTUDIO2010SP1PATCH"
cmd /C "webpicmdline\webpicmdline.exe /AcceptEula /SuppressReboot /Products:MVC2" 
cmd /C "webpicmdline\webpicmdline.exe /AcceptEula /SuppressReboot /Products:MVC3"
cmd /C "webpicmdline\webpicmdline.exe /AcceptEula /SuppressReboot /Products:MVC3Loc"
cmd /C "webpicmdline\webpicmdline.exe /AcceptEula /SuppressReboot /Products:MVC3Runtime" 
cmd /C "webpicmdline\webpicmdline.exe /AcceptEula /SuppressReboot /Products:Plan9" 
cmd /C "webpicmdline\webpicmdline.exe /AcceptEula /SuppressReboot /Products:Plan9Loc" 
cmd /C "webpicmdline\webpicmdline.exe /AcceptEula /SuppressReboot /Products:AzureAppFabricSDKV1PROD"
cmd /C "webpicmdline\webpicmdline.exe /AcceptEula /SuppressReboot /Products:WindowsAzureSDK"
cmd /C "webpicmdline\webpicmdline.exe /AcceptEula /SuppressReboot /Products:WindowsAzureToolsVS2010"

cmd /C "webpicmdline\webpicmdline.exe /AcceptEula /SuppressReboot /Products:NodeJS"
cmd /C "webpicmdline\webpicmdline.exe /AcceptEula /SuppressReboot /Products:iisnode"

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

# R#
cinst resharper

# Oracle VM VirtualBox 
cinst VirtualBox
