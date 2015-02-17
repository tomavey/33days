<!--- Place functions here that should be globally available in your application. --->

<cffunction name="getCampaignId">
	<cfset var loc = structNew()>
	<cfif isDefined("session.33days.campaignid") and val(session.33days.campaign)>
		<cfset loc.return = session.33days.campaignid>
	<cfelseif isDefined("params.campaignid")>
		<cfset session.33days.campaignid = params.campaignid>	
		<cfset loc.return = params.campaignid>
	<cfelse>
		<cfset campaign = model("campaign").findOne(where="active='yes'")>
		<cfset loc.return = campaign.id>
	</cfif>
	<cfreturn loc.return>		
</cffunction>
