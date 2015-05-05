<div class="container">
    
<h1>Listing logs</h1>

<cfoutput>#includePartial("showFlash")#</cfoutput>

<div class="table">    
<cftable query="logs" colHeaders="true" HTMLTable="true">
	
			
				
					<cfcol header="Date/time" text="#dateFormat(createdAt)# @ #timeFormat(createdAt,'hh.mm.ss')#" />

                    <cfcol header="Controller" text="#controller#" />
				
					<cfcol header="Action" text="#action#" />
				
					<cfcol header="Key" text="#kkey#" />
				
	<cfcol header="" text="#linkTo(text='Show', action='show', key=id)#" />
	<cfcol header="" text="#linkTo(text='Edit', action='edit', key=id)#" />
	<cfcol header="" text="#linkTo(text='Delete', action='delete', key=id, confirm='Are you sure?')#" />
</cftable>
                                                                                                     
                                                                                                     
</div>
                                                                                                     
</div>
