add-pssnapin microsoft.sharepoint.powershell -EA 0
 
$Web = Get-SPWebApplication http://webappname
 
Write-Host "-----URLs or Site Titles in " $Web "---------"
foreach ($sites in $web.sites) {
	# Write-Host $sites.URL, $sites.AllWebs
	if ($sites.URL -like "*hub*") {
		Write-Host "Found URL: " $sites.url 
	}
	if ($sites.AllWebs -like "*hub*") {
		Write-Host "Found Title: " $sites.AllWebs "at URL " $sites.url
	}
}
Write-Host "-----END------"