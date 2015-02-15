<!--- Place functions here that should be globally available in your application. --->

<cffunction name="getCampaign">
	<cfset var loc = structNew()>
	<cfif isDefined("session.33days.campaign") and len(session.33days.campaign)>
		<cfset loc.return = session.33days.campaign>
	<cfelseif isDefined("params.campaign")>
		<cfset session.33days.campaign = params.campaign>	
		<cfset loc.return = params.campaign>
	<cfelse>
		<cfset campaign = model("campaign").findOne(where="active='yes'")>
		<cfset loc.return = campaign.campaign>
	</cfif>
	<cfreturn loc.return>		
</cffunction>
