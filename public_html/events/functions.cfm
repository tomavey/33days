<!--- Place functions here that should be globally available in your application. --->

<cffunction name="getCampaign">
	<cfset var loc = structNew()>
	<cfif isDefined("params.campaign")>
		<cfset loc.return = params.campaign>
	<cfelse>
		<cfset loc.return = application.wheels.campaign>
	</cfif>
	<cfreturn loc.return>		
</cffunction>
