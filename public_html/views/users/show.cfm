<h1>Showing users</h1>

<cfoutput>#includePartial("showFlash")#</cfoutput>

<cfoutput>

			
					<p><span>Email:</span> 
						#users.email#</p>
				
					<p><span>First name:</span>
						#users.fname#</p>
				
					<p><span>Last name:</span>
						#users.lname#</p>
				
					<p><span>Study:</span>
						#users.sendstudy#</p>
				
					<p><span>Created:</span>
						#dateformat(users.createdAt)#</p>
				
					<p><span>Updated:</span>
						#dateformat(users.updatedAt)#</p>
				

#linkTo(text="Return to the listing", action="index")# | #linkTo(text="Edit this user", action="edit", key=users.id)#
</cfoutput>
