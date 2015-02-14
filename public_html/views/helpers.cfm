<!--- Place helper functions here that should be available for use in all view pages of your application --->

<cffunction name="getWeek">
<cfargument name='weekNo' required="true" type="numeric">
<cfset var loc=structNew()>
	<cfset loc.week = model("Week").findOne(where="week=#arguments.weekNo# AND campaign = '#getCampaign()#'")>
<cfreturn loc.week>	
</cffunction>