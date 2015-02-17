<cfcomponent extends="Model" output="false">

	<cffunction name="init">
		<cfset belongsTo(name="Week", foreignKey="weeksid")>
		<cfset belongsTo(name="Campaign", foreignKey="campaignid")>
		<cfset beforeSave("setCampaign")>
	</cffunction>

</cfcomponent>
