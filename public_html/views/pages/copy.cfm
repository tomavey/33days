<div class="container">
<h1>Editing page</h1>

<cfoutput>#includePartial("showFlash")#</cfoutput>

<cfoutput>

			
			#errorMessagesFor("page")#
	
			#startFormTag(action="create", key=params.key)#

			#select(objectName="biblestudy", property="campaignId", text="Campaign:", options=campaigns, valuefield="id")#

			#textField(objectName="page", property="shortlink", text="Shortlink:")#

			#includePartial("form")#			
				
			#submitTag()#
				
			#endFormTag()#
			
		

#linkTo(text="Return to the listing", action="index")#
</cfoutput>
</div>