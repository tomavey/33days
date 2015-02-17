<!--- Place helper functions here that should be available for use in all view pages of your application --->

<cffunction name="getWeek">
<cfargument name='weekNo' required="true" type="numeric">
<cfset var loc=structNew()>
	<cfset loc.week = model("Week").findOne(where="week=#arguments.weekNo# AND campaignId = '#getCampaignId()#'")>
<cfreturn loc.week>	
</cffunction>

<cffunction name="getMainImage">
<cfset var loc = structNew()>
	<cfset campaign = model("campaign").findOne(where="active='yes'")>
<cfreturn campaign.mainimage>	
</cffunction>

<cffunction name="getMainTitle">
<cfset var loc = structNew()>
	<cfset campaign = model("campaign").findOne(where="active='yes'")>
<cfreturn campaign.maintitle>	
</cffunction>

<cffunction name="getNavBarColor">
<cfset var loc = structNew()>
	<cfset campaign = model("campaign").findOne(where="active='yes'")>
<cfreturn campaign.navbarcolor>	
</cffunction>

<cfset navbarcolor = "###getNavBarColor()#">

<cffunction name="getCampaignName">
	<cfset var loc = structNew()>
		<cfset campaign = model("campaign").findOne(where="active='yes'")>
		<cfset loc.return = campaign.name>
	<cfreturn loc.return>		
</cffunction>
