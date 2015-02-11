<cfcomponent extends="Model" output="false">

	<cffunction name="init">
		<cfset validatesUniquenessOf(property = "email", message = "This email address has already been used.")>
		<cfset validatesFormatOf(property = "email", type="email")>
	</cffunction>

</cfcomponent>
