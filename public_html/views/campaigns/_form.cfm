<cfoutput>				
					
						#textField(objectName='campaign', property='name', label='Name:')#
																
						#textField(objectName='campaign', property='campaign', label='Campaign:')#
				
						#textField(objectName='campaign', property='mainimage', label='Main Image:')#
					
						#textField(objectName='campaign', property='maintitle', label='Main Title:')#
					
						#textField(objectName='campaign', property='navbarcolor', label='Nav Bar Color:')#
					
						Start Date: #dateSelect(objectName='campaign', property='startdate', label='')#
																
						#select(objectName='campaign', property='active', label='Active?', options="Yes,No")#

</cfoutput>