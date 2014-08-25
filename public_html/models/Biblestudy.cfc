<cfcomponent extends="Model" output="false">

	<cffunction name="init">
		<cfset belongsTo(name="Week", foreignKey="weeksid")>
	</cffunction>

</cfcomponent>
