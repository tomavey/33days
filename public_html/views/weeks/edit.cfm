<div class="container">
<h1>Editing weeks</h1>

<cfoutput>#includePartial("showFlash")#</cfoutput>

<cfoutput>

			
			#errorMessagesFor("weeks")#
	
			#startFormTag(action="update", key=params.key)#
				
			#includePartial("form")#

			#submitTag()#
				
			#endFormTag()#
			
		

#linkTo(text="Return to the listing", action="index")#
</cfoutput>
</div>