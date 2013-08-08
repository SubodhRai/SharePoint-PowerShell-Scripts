add-pssnapin microsoft.sharepoint.powershell -EA 0
$WebApp = get-spwebapplication
foreach ($Web in $WebApp) {
    $contentdatabases = $Web.contentdatabases
    foreach ($contentdatabase in $contentdatabases) {
        if ($contentdatabase.Server -eq "SERVERYOUARELOOKINGFOR") {
            Write-Host "Server: " $contentdatabase.Server
            Write-Host "DB Name: " $contentdatabase.Name
            Write-Host "Web App: " $contentdatabase.WebApplication
            Write-Host "Site Count: " $contentdatabase.CurrentSiteCount
        }
    }
}
