<div data-role="popup">
<h1>Send studies to me...</h1>

<cfoutput>#includePartial("../users/showFlash")#</cfoutput>

<cfoutput>

			
			
			#errorMessagesFor("users")#
	
			#startFormTag(action="create")#
		
						#textField(objectName='users', property='email', label='Email:')#
																
						#textField(objectName='users', property='fname', label='First Name:')#
																
						#textField(objectName='users', property='lname', label='Last Name:')#
																
						#hiddenField(objectName='users', property='sendstudy', label='Send which study:')#
																
																
			#submitTag("Subscribe")#
				
			#endFormTag()#
			
		
</cfoutput>
</div>