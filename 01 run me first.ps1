.\VerifyRunningAsAdministrator.ps1

cmd /C "ninite\ninite.core.exe"

##configure windows update to download but prompt before installing
#. .\Misc\WindowsUpdateConfig.ps1
#Set-WindowsUpdateConfig 3 -IncludeRecommended $false

# installing chocolatey requires restarting the console, so do this before next step
iex ((new-object net.webclient).DownloadString("http://bit.ly/psChocInstall"))

function InstallFeature($name) {
	Write-Host "Installing $name"
	cmd /c "ocsetup $name /passive"
}

Write-Host "Beginning installation"
InstallFeature IIS-WebServerRole
	InstallFeature IIS-WebServer
		InstallFeature IIS-CommonHttpFeatures
			InstallFeature IIS-DefaultDocument
			InstallFeature IIS-DirectoryBrowsing
			InstallFeature IIS-HttpErrors
			InstallFeature IIS-HttpRedirect
			InstallFeature IIS-StaticContent
		InstallFeature IIS-HealthAndDiagnostics
			InstallFeature IIS-CustomLogging
			InstallFeature IIS-HttpLogging
			InstallFeature IIS-HttpTracing
			InstallFeature IIS-LoggingLibraries
		InstallFeature IIS-Security
			InstallFeature IIS-RequestFiltering
			InstallFeature IIS-WindowsAuthentication
		InstallFeature IIS-ApplicationDevelopment
			InstallFeature IIS-NetFxExtensibility
			InstallFeature IIS-ISAPIExtensions
			InstallFeature IIS-ISAPIFilter
			InstallFeature IIS-ASPNET
	InstallFeature IIS-WebServerManagementTools 
		InstallFeature IIS-ManagementConsole 
		InstallFeature IIS-ManagementScriptingTools
		