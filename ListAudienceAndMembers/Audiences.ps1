add-pssnapin microsoft.sharepoint.powershell -EA 0
$site = Get-SPSite "http://webapp/" 
$context = Get-SPServiceContext $site
$upm = New-Object Microsoft.Office.Server.UserProfiles.UserProfileManager($context)
$audmgr = New-Object Microsoft.Office.Server.Audience.AudienceManager($context)
$aud = $audmgr.Audiences
foreach ($audience in $aud) {
    Write-host $audience.audiencename
    $members = $audience.GetMembership()  
    $members | ft NTName, PreferredName, Email -autosize        
   }