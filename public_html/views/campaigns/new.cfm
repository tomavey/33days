<div class="container">
<h1>Create a New campaign</h1>

<cfoutput>#includePartial("showFlash")#</cfoutput>

<cfoutput>

			
			
			#errorMessagesFor("campaign")#
	
			#startFormTag(action="create")#
		
				
			#includePartial("form")#																

				#submitTag()#
				
			#endFormTag()#
			
		

#linkTo(text="Return to the listing", action="index")#
</cfoutput>
</div>