<cfcomponent extends="Model" output="false">

	<cffunction name="init">
		<cfset hasMany("Biblestudies")>
		<cfset beforeSave("setCampaign")>
		<cfset belongsTo(name="Campaign", foreignKey="campaignid")>
	</cffunction>

</cfcomponent>
