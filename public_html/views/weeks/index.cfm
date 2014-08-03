<div class="container">
<h1>Listing weeks</h1>

<cfoutput>#includePartial("showFlash")#</cfoutput>

<cfoutput>
	<p>
		#linkTo(text="Add a new week", route="adminweeksnew")# | 	
		#linkTo(text="List the Guides", route="adminguides")# | 
		#linkTo(text="Home Page", route="home")#
	</p>
</cfoutput>

<div class="table">
<cftable query="weeks" colHeaders="true" HTMLTable="true">
	
			
				
					<cfcol header="Week" text="#week#" />
				
					<cfcol header="Subject" text="#subject#" />
				
					<cfcol header="Verse" text="#verse#" />

					<cfcol header="Last Updated" text="#dateFormat(updatedAt)#" />
				
	<cfcol header="" text="#linkTo(text='Show', action='show', key=id)#" />
	<cfcol header="" text="#linkTo(text='Edit', action='edit', key=id)#" />
	<cfcol header="" text="#linkTo(text='Delete', action='delete', key=id, confirm='Are you sure?')#" />
</cftable>

</div>
</div>
