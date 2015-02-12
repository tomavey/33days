<div class="container">
<h1>Editing weeks</h1>

<cfoutput>#includePartial("showFlash")#</cfoutput>

<cfoutput>

			
			#errorMessagesFor("weeks")#
	
			#startFormTag(action="create", key=params.key)#

			#textField(objectName="weeks", property="campaign", text="Campaign:")#

			#includePartial("form")#

			#submitTag()#
				
			#endFormTag()#
			
		

#linkTo(text="Return to the listing", action="index")#
</cfoutput>
</div>