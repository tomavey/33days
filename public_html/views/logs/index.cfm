<h1>Listing logs</h1>

<cfoutput>#includePartial("showFlash")#</cfoutput>

<cfoutput>
	<p>#linkTo(text="New log", action="new")#</p>
</cfoutput>

<cftable query="logs" colHeaders="true" HTMLTable="true">
	
			
				
					<cfcol header="Id" text="#id#" />
				
					<cfcol header="Controller" text="#controller#" />
				
					<cfcol header="Action" text="#action#" />
				
					<cfcol header="Key" text="#kkey#" />
				
					<cfcol header="Userid" text="#userid#" />
				
					<cfcol header="Useremail" text="#useremail#" />
				
					<cfcol header="Remote_addr" text="#remote_addr#" />
				
					<cfcol header="Script_name" text="#script_name#" />
				
					<cfcol header="Created At" text="#dateFormat(createdAt)# @ #timeFormat(createdAt,'hh.mm.ss')#" />
			
		
	<cfcol header="" text="#linkTo(text='Show', action='show', key=id)#" />
	<cfcol header="" text="#linkTo(text='Edit', action='edit', key=id)#" />
	<cfcol header="" text="#linkTo(text='Delete', action='delete', key=id, confirm='Are you sure?')#" />
</cftable>

<cfdump var="#cgi#">