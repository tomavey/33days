<cfoutput>
						#ckeditor()#				

						#textField(objectName="biblestudies", label="Subject:", property="subject")#

						#select(objectName="biblestudies", property="weeksid", label="Week", options="1,2,3,4,5")#
					
						#select(objectName='biblestudies', property='day', label='Day', options="1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33")#
																
						#textArea(objectName='biblestudies', property='content', label='', class="ckeditor")#
					
						#select(objectName='biblestudies', property='active', label='Active', options="Yes,No")#
																
				
</cfoutput>																