<cfcomponent extends="Model" output="false">

	<cffunction name="init">
		<cfset beforeSave("setCampaign")>
		<cfset belongsTo(name="Campaign", foreignKey="campaignid")>
	</cffunction>

</cfcomponent>
