<div class="container">
<h1>Editing a bible study</h1>

<cfoutput>#includePartial("showFlash")#</cfoutput>

<cfoutput>

			
			#errorMessagesFor("biblestudy")#
	
			#startFormTag(action="create", key=params.key)#

			#select(objectName="biblestudy", property="campaign", text="Campaign:", options=campaigns, valuefield="campaign")#

		
			#includePartial("form")#	

			#submitTag()#
				
			#endFormTag()#
			
		

#linkTo(text="Return to the listing", action="index")#
</cfoutput>
</div>