param(
    [string]$ReportPath,
    [string]$ReportServerUri = "http://192.168.1.5/Reports",
    [string]$DestinationFolder = "/powerbifiles",
    [string]$Overwrite = $true
)

# Load the required module
Import-Module ReportingServicesTools

# Publish the report
Publish-RsReport -ReportServerUri $ReportServerUri -ReportPath $ReportPath -DestinationFolder $DestinationFolder -Overwrite $Overwrite

if ($?) {
    Write-Host "Report deployed successfully."
} else {
    Write-Error "Failed to deploy the report."
}
