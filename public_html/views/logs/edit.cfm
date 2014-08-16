<h1>Editing log</h1>

<cfoutput>#includePartial("showFlash")#</cfoutput>

<cfoutput>

			
			#errorMessagesFor("log")#
	
			#startFormTag(action="update", key=params.key)#
		
				
															
				
					
						#textField(objectName='log', property='controller', label='Controller')#
															
				
					
						#textField(objectName='log', property='action', label='Action')#
															
				
					
						#textField(objectName='log', property='kkey', label='Key')#
															
				
					
						#textField(objectName='log', property='userid', label='Userid')#
															
				
					
						#textField(objectName='log', property='useremail', label='Useremail')#
															
				
					
						#textField(objectName='log', property='remote_addr', label='Remote_addr')#
															
				
					
						#textField(objectName='log', property='script_name', label='Script_name')#
															
				
															
				
															
				
															
				
				
				#submitTag()#
				
			#endFormTag()#
			
		

#linkTo(text="Return to the listing", action="index")#
</cfoutput>
