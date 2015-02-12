<cfoutput>
						#ckeditor()#				

						#textField(objectName="biblestudy", label="Subject:", property="subject")#

						#select(objectName="biblestudy", property="weeksid", label="Week", options="1,2,3,4,5", class="input-mini")#
					
						#select(objectName='biblestudy', property='day', label='Day', options="1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33", class="input-mini")#
																
						#textArea(objectName='biblestudy', property='content', label='', class="ckeditor")#
					
						#select(objectName='biblestudy', property='active', label='Active', options="Yes,No")#
																
				
</cfoutput>																