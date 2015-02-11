<h1>Listing users</h1>

<cfoutput>#includePartial("showFlash")#</cfoutput>

<cfoutput>
	<p>#linkTo(text="New users", action="new")#</p>
</cfoutput>

<div class="table">
<cftable query="users" colHeaders="true" HTMLTable="true" >
	
			
				
					<cfcol header="Email" text="#email#" />
				
					<cfcol header="First name" text="#fname#" />
				
					<cfcol header="Last name" text="#lname#" />
				
					<cfcol header="Study?" text="#sendstudy#" />
				
					<cfcol header="Created At" text="#dateformat(createdAt)#" />
				
		
	<cfcol header="" text="#linkTo(text='Show', action='show', key=id)#" />
	<cfcol header="" text="#linkTo(text='Edit', action='edit', key=id)#" />
	<cfcol header="" text="#linkTo(text='Delete', action='delete', key=id, confirm='Are you sure?')#" />
	<cfcol header="" text="#linkTo(text='Send', controller="subscriptions", action='send', params="email=#email#", confirm='Are you sure?')#" />
</cftable>
</div>
