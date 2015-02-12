<div class="container">
<h1>Listing Guides</h1>
<cfoutput>
<p>#getCampaign()#</p>
#includePartial("showFlash")#
	<p>
		#linkTo(text="Add a new guide", route="adminguidesnew")# | 
		#linkTo(text="List the Weeks", route="adminweeks")# | 
		#linkTo(text="Home Page", route="home")#
	</p>
</cfoutput>

<div class="table table-striped">

<cftable query="biblestudies" colHeaders="true" HTMLTable="true">
				
					<cfcol header="Week" text="#week#" />

					<cfcol header="Day" text="#day#" />
				
					<cfcol header="Subject" text="#subject#" />

					<cfcol header="Last Updated" text="#dateFormat(updatedAt)#" />
		
	<cfcol header="" text="#linkTo(text='Show', action='show', key=id)#" />
	<cfcol header="" text="#linkTo(text='Edit', action='edit', key=id)#" />
	<cfcol header="" text="#linkTo(text='Copy', action='copy', key=id)#" />
	<cfcol header="" text="#linkTo(text='Delete', action='delete', key=id, confirm='Are you sure?')#" />
</cftable>

</div>
</div>