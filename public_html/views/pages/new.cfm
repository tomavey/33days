<div class="container">
<h1>Create a New page</h1>

<cfoutput>#includePartial("showFlash")#</cfoutput>

<cfoutput>

			
			
			#errorMessagesFor("page")#
	
			#startFormTag(action="create")#

			<cfif NOT isDefined("page.shortlink")>

				#textField(objectName='page', property='shortlink', label='Shortlink: (ie:www.33days.us/pages/????')#

			<cfelse>

				#hiddenField(objectName='page', property='shortlink', label='Shortlink: (ie:www.33days.us/pages/????')#

				<p>Shortlink: #page.shortlink#</p>

			</cfif>
		
			#includePartial("form")#
				
			#textField(objectName='page', property='author', label='Author')#
																
			#select(objectName='page', property='active', label='Active', options="Yes,No")#
				
			#submitTag()#
				
			#endFormTag()#
			
		

#linkTo(text="Return to the listing", action="index")#
</cfoutput>
</div>