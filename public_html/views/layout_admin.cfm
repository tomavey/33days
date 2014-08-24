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
    </ul>
    </div>
    </div>
 	#includeContent()#

</cfoutput>
</body>
</html>