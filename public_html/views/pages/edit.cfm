<div class="container">
<h1>Editing page</h1>

<cfoutput>#includePartial("showFlash")#</cfoutput>

<cfoutput>

			
			#errorMessagesFor("page")#
	
			#startFormTag(action="update", key=params.key)#
		
			#includePartial("form")#			
				
			#submitTag()#
				
			#endFormTag()#
			
		

#linkTo(text="Return to the listing", action="index")#
</cfoutput>
</div>