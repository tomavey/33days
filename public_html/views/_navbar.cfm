<cfoutput>

<cfset navargs["data-transition"] = "slide">
<cfset navargs["data-prefetch"] = "true">

<cfset navargsback["data-direction"] = "reverse">
<cfset navargsback["data-transition"] = "slide">
<cfset navargsback["data-prefetch"] = "true">

<cfset navargstoday["data-transition"] = "fade">
<cfset navargstoday["data-prefetch"] = "true">

		<ul>
		<cfif isDefined("params.key") AND params.key NEQ 1>
			<li>#linkTo(text="Back One Day", route="guide", key=params.key - 1, argumentCollection=navargsback, data_icon="arrow-l")#</li>
		</cfif>
			<li>#linkTo(text="Today's Study Guide", route="today", argumentCollection=navargstoday, data_icon="home")#</li>
		<cfif isDefined("params.key") and params.key LTE 32>	
			<li>#linkTo(text="Forward One Day", route="guide", key=params.key + 1, argumentCollection=navargs, data_icon="arrow-r")#</li>
		</cfif>	
		</ul>
</cfoutput>