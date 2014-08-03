<!DOCTYPE html> 
<html> 
	<title>33 Days</title> 
	<meta name="viewport" content="width=device-width, initial-scale=1"> 
	<!---test of git changes--->
<head>
	<cfoutput>
		#styleSheetLinkTag("jquery.mobile-1.3.1,vision2020mobile,style")#    
		<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js"></script>
		<cfif application.wheels.environment NEQ "design">
			#javaScriptIncludeTag("jquery.mobile-1.3.1.min,jquery.touchSwipe.min")#
		</cfif>
	</cfoutput>

</head>

<body>
<cfoutput>	

<div data-role="page" data-theme="a" id="welcome">

	<div data-role="header">
		#includePartial("/header")#

		<div data-role="navbar">
			#includePartial("/navbar")#
		</div><!-- /navbar -->

	</div><!-- /header -->


	<div data-role="panel" id="left-panel" data-display="overlay">
		#includePartial("/leftsidebar")#
    </div>

    <div data-role="content">
	 	#includeContent()#
 	</div>

	<div data-role="footer">
		#includePartial("/footer")#
	</div><!-- /footer -->

</div>	



</cfoutput>
</body>
</html>