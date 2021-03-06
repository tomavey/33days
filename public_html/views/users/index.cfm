<div class="container">

<h1>Listing subscriptions:</h1>

<cfoutput>#includePartial("showFlash")#</cfoutput>

<cfoutput>
	<p>#linkTo(text="New subscription", controller="subscriptions", action="new")#</p>
</cfoutput>

<div class="table">
<cftable query="users" colHeaders="true" HTMLTable="true" >
	
			
				
					<cfcol header="Email" text="#mailto(email)#" />
				
					<cfcol header="First name" text="#fname#" />
				
					<cfcol header="Last name" text="#lname#" />
				
					<cfcol header="Last Sent" text="#dateformat(laststudysentat)#" />

					<cfcol header="Confirmed" text="#dateformat(confirmed)#" />

					<cfcol header="Created" text="#dateformat(createdAt)#" />
				
		
	<cfcol header="" text="#linkTo(text='Show', action='show', key=id)#" />
	<cfcol header="" text="#linkTo(text='Edit', action='edit', key=id)#" />
	<cfcol header="" text="#linkTo(text='Delete', action='delete', key=id, confirm='Are you sure?')#" />
	<cfcol header="" text="#linkTo(text='Send', controller="subscriptions", action='send', params="email=#email#", confirm='Are you sure?')#" />
</cftable>
</div>
</div>