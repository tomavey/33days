<cfcomponent extends="Model" output="false">

	<cffunction name="init">
		<cfset belongsTo(name="Campaign", foreignKey="campaignid")>
		<cfset validatesUniquenessOf(property = "emailcampaigncheck", message = "This email address has already been subscribed.")>
		<cfset validatesFormatOf(property = "email", type="email")>
		<cfset beforeSave("setCampaign")>
		<cfset beforeSave("setUUID")>
		<cfset beforeValidation("trimProperties")>
	</cffunction>

	<cffunction name="setUUID">
		<cfset this.UUID = createUUID()>	
	</cffunction>

</cfcomponent>
