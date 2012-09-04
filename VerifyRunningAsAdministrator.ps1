function get-isadministrator {
	$currentPrincipal = New-Object Security.Principal.WindowsPrincipal( [Security.Principal.WindowsIdentity]::GetCurrent() ) 
	$currentPrincipal.IsInRole( [Security.Principal.WindowsBuiltInRole]::Administrator )
}

if (-not (get-isadministrator)) {
	throw "Must run as administrator"
}

"Running as administrator" | write-host -fore green