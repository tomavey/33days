<div class="container">
<h1>Editing page</h1>

<cfoutput>#includePartial("showFlash")#</cfoutput>

<cfoutput>

			
			#errorMessagesFor("page")#
	
			#startFormTag(action="create", key=params.key)#

			#textField(objectName="page", property="campaign", text="Campaign:")#
		
			#textField(objectName="page", property="shortlink", text="Shortlink:")#

			#includePartial("form")#			
				
			#submitTag()#
				
			#endFormTag()#
			
		

#linkTo(text="Return to the listing", action="index")#
</cfoutput>
</div>