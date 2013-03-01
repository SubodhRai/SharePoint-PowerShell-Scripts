add-pssnapin microsoft.sharepoint.powershell -EA 0
Write-Host "This script will loop through all site collections in a web application and list the collection's URL, Primary Owner, and Secondary Owner"
Write-Host " "
$webapp = read-host "Enter full URL of WEB Application: "


$Web = Get-SPWebApplication $webapp
 
foreach ($sites in $web.sites) {
	Write-Host "-------------------------------------------"
	Write-Host "Site: " $sites.url
	Write-Host "Primary Owner: " $sites.owner
	Write-Host "Secondary Owner: " $sites.secondarycontact
	Write-Host "-------------------------------------------"
}
Write-Host "-----END------"