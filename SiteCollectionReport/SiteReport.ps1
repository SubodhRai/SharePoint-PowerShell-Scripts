add-pssnapin microsoft.sharepoint.powershell -EA 0
$location = (Get-Location).Path
$outputFile = $location + "\" + "SiteCollectionReport.txt"
Write-Host "This script will loop through all site collections in a web application and list the collection's URL, Primary Owner, and Secondary Owner"
Write-Host " "
$webapp = read-host "Enter full URL of WEB Application: "

$Web = Get-SPWebApplication $webapp
$text = ""
$text | out-file $outputFile 
foreach ($sites in $Web.sites) {
	$text = "-------------------------------------------"
	$text | out-file $outputFile -append 
    $text = "Site: " + $sites.url
    $text | out-file $outputFile -append
	$text = "Primary Owner: " + $sites.owner
    $text | out-file "$outputfile" -append
	$text = "Secondary Owner: " + $sites.secondarycontact
    $text | out-file "$outputfile" -append
	$text = "-------------------------------------------"
    $text | out-file "$outputfile" -append
}
Write-Host "-----END------"
