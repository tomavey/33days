<div class="container">
<h1>Create a new bible study</h1>

<cfoutput>#includePartial("showFlash")#</cfoutput>

<cfoutput>

			
			
			#errorMessagesFor("biblestudies")#
	
			#startFormTag(action="create")#
		
			#includePartial("form")#				
																
			#submitTag()#
				
			#endFormTag()#
			
		

#linkTo(text="Return to the listing", action="index")#
</cfoutput>
</div>