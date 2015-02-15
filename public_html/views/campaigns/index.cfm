<div class="container">
<h1>Listing campaigns</h1>

<cfoutput>
<p>Active campaign = #getCampaign()#

#includePartial("showFlash")#

<p>#linkTo(text="New campaign", action="new")#</p>
</cfoutput>

<div class="table">
<cftable query="campaigns" colHeaders="true" HTMLTable="true">
	
			
				
					<cfcol header="Id" text="#id#" />
				
					<cfcol header="Name" text="#name#" />
				
					<cfcol header="Campaign" text="#campaign#" />

					<cfcol header="Main image" text="#linkTo(text=mainimage, href='/images/#mainimage#')#" />
				
					<cfcol header="Main title" text="#maintitle#" />
				
					<cfcol header="Nav Bar Color" text="#navbarcolor#" />

					<cfcol header="Start date" text="#dateFormat(startdate)#" />
				
					<cfcol header="Active" text="#active#" />

					<cfcol header="Created" text="#dateformat(createdAt)#" />
				
		
	<cfcol header="" text="#linkTo(text='Show', action='show', key=id)#" />
	<cfcol header="" text="#linkTo(text='Edit', action='edit', key=id)#" />
	<cfcol header="" text="#linkTo(text='Delete', action='delete', key=id, confirm='Are you sure?')#" />
</cftable>
</div>
</div>