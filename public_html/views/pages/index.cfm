<div class="container">

<h1>Listing pages</h1>

<cfoutput>#includePartial("showFlash")#</cfoutput>

<cfoutput>
	<p>#linkTo(text="New page", action="new")#</p>
</cfoutput>

<div class="table">

<cftable query="pages" colHeaders="true" HTMLTable="true">
	
			
				
					<cfcol header="Shortlink" text="#shortlink#" />
				
					<cfcol header="Content" text="#left(content,20)#" />
				
					<cfcol header="Author" text="#author#" />
				
					<cfcol header="Active" text="#active#" />
				
					<cfcol header="Created At" text="#dateFormat(createdAt)#" />
				
		
	<cfcol header="" text="#linkTo(text='Show', action='show', key=id)#" />
	<cfcol header="" text="#linkTo(text='Edit', action='edit', key=id)#" />
	<cfcol header="" text="#linkTo(text='Copy', action='copy', key=id)#" />
	<cfcol header="" text="#linkTo(text='Delete', action='delete', key=id, confirm='Are you sure?')#" />
</cftable>

</div>

</div>
