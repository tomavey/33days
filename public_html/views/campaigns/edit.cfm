<div class="container">
<h1>Editing campaign</h1>

<cfoutput>#includePartial("showFlash")#</cfoutput>

<cfoutput>

			
			#errorMessagesFor("campaign")#
	
			#startFormTag(action="update", key=params.key)#
		
				
			#includePartial("form")#				
															
			#submitTag()#
				
			#endFormTag()#
			
		

#linkTo(text="Return to the listing", action="index")#
</cfoutput>
</div>