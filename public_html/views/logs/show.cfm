<h1>Showing log</h1>

<cfoutput>#includePartial("showFlash")#</cfoutput>

<cfoutput>

			
				
					<p><span>Id</span> <br />
						#log.id#</p>
				
					<p><span>Controller</span> <br />
						#log.controller#</p>
				
					<p><span>Action</span> <br />
						#log.action#</p>
				
					<p><span>Key</span> <br />
						#log.kkey#</p>
				
					<p><span>Userid</span> <br />
						#log.userid#</p>
				
					<p><span>Useremail</span> <br />
						#log.useremail#</p>
				
					<p><span>Remote_addr</span> <br />
						#log.remote_addr#</p>
				
					<p><span>Script_name</span> <br />
						#log.script_name#</p>
				
					<p><span>Created At</span> <br />
						#log.createdAt#</p>
				
					<p><span>Updated At</span> <br />
						#log.updatedAt#</p>
				
					<p><span>Deleted At</span> <br />
						#log.deletedAt#</p>
				
			
		

#linkTo(text="Return to the listing", action="index")# | #linkTo(text="Edit this log", action="edit", key=log.id)#
</cfoutput>
