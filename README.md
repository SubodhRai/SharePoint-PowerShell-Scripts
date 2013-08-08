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

Audit Databases
---------------

This script will loop through all the content databases for all SharePoint web applications and display information about content databases reside on a chosen SQL server. This is useful if you have a large number of content databases across multiple SQL servers, and need to quickly determine what content databases reside on a particular server rather than manually looking through Central Administration or SQL Server Management Studio.

Replace SERVERYOUARELOOKINGFOR with the netbios or FQDN of the SQL server.