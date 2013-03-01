SharePoint-PowerShell-Scripts
=============================

Scripts for doing various tasks in SharePoint.

List Mime Types
---------------
This script will list all the Mime types associated with each web application in the farm.

List Audiences and Their Members
--------------------------------
This script will compile a list of audiences for a particular Web Application, and list the members of each audience with the member's Active Directory domain name, preferred name, and email address.

Site Collection Site Title and URL Search
-----------------------------------------
This script will use PowerShell to search for a Site Collection with keywords in the site's title or URL.

List URL, Primary Owner, and Secondary Owner
--------------------------------------------
This script will ask for the URL of a Web Application. It will loop through each Site Collection inside it and report:
	The Site Collection URL.
	The Primary Administrator of the Site Collection.
	The Secondary Administrator of the Site Collection.

The data will be placed in a file called SiteCollectionReport.txt

There is also a simplified version of this script that just outputs data to PowerShell's window.