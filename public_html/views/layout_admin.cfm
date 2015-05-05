<!DOCTYPE html> 
<html> 
<head>
<cfoutput>
	#styleSheetLinkTag("bootstrap")#    
</cfoutput>
</head>

<body>
<cfoutput>	
    <div class="navbar">
    <div class="navbar-inner">
    #linkTo(text="Home", route="home", class="brand")#
    <ul class="nav">
    <li>#linkTo(text="Guides", route="adminguides")#</li>
    <li>#linkTo(text="Weeks", route="adminweeks")#</li>
    <li>#linkTo(text="Edit Prayer Guide", route="editprayerguide")#</li>
    <li>#linkTo(text="Edit Introduction", route="editintroduction")#</li>
    <li>#linkTo(text="Subscriptions", controller="users", action="index")#</li>
    <li>#linkTo(text="Campaigns", controller="campaigns", action="index")#</li>
    <li>#linkTo(text="Logs", controller="logs", action="index")#</li>
    </ul>
    </div>
    </div>
 	#includeContent()#

</cfoutput>
</body>
</html>