
function Show-Certificates {
	param (
		[Parameter(Mandatory = $true)]
		[ValidateSet('CurrentUser','LocalMachine')]
		[String] $type
	)
    
	Show -type $type
	
	function Show ($type) {
		Get-Item ("Cert:\"+$type+"\My") | Get-ChildItem
	}
	
}

