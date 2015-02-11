<h1>Editing users</h1>

<cfoutput>#includePartial("showFlash")#</cfoutput>

<cfoutput>

			
			#errorMessagesFor("users")#
	
			#startFormTag(action="update", key=params.key)#
		
			#includePartial("form")#												
			#submitTag()#
				
			#endFormTag()#
			
		

#linkTo(text="Return to the listing", action="index")#
</cfoutput>
