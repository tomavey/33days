<cfcomponent extends="Model" output="false">

	<cffunction name="init">
			<cfset beforeSave("setCampaign")>
	</cffunction>

</cfcomponent>
