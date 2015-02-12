<cfcomponent extends="Model" output="false">

	<cffunction name="init">
		<cfset hasMany("Biblestudies")>
		<cfset beforeSave("setCampaign")>
	</cffunction>

</cfcomponent>
