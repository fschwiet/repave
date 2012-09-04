

cmd /C "ninite\ninite.client.exe"

# some registry changes
regedit /s '.\registry\swapCapsLockAndLWin.reg'

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

#import-module WebAdministration

& $env:windir\Microsoft.NET\Framework64\v4.0.30319\aspnet_regiis.exe -i
& $env:windir\Microsoft.NET\Framework\v4.0.30319\aspnet_regiis.exe -i
