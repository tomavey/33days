<!---
	This is the parent model file that all your models should extend.
	You can add functions to this file to make them globally available in all your models.
	Do not delete this file.
--->

<cfcomponent extends="Wheels">
	<cffunction name="setCampaign">
		<cfif not isDefined("this.campaign")>
			<cfset this.campaign = getCampaign()>
		</cfif>	
	</cffunction>

	<cffunction name="trimProperties">
		<cfloop collection=#this.properties()# item="prop">
			<cfset this[prop] = trim(this[prop])>
		</cfloop>
	</cffunction>

</cfcomponent>
