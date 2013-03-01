add-pssnapin microsoft.sharepoint.powershell -EA 0
$webs = Get-SPWebApplication

foreach ($web in $webs) {
    $webURL = $web.url.tostring()
    Write-host "Web Application: " $webURL
   
    $webArray= @($web.AllowedInlineDownloadedMimeTypes)
    foreach ($item in $webArray){
       
        $item.tostring()
        Write-Host $item
    }
    $webArray = $null
}