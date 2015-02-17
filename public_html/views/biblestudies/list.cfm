		<cfoutput query="biblestudies" group="weeksid">
				<cfset thisweek = getWeek(weeksid)>
				<cftry>
				<h2>#linkto(text="Week ###thisweek.week# - #thisweek.subject#", route="week", key=thisweek.week)#</h2>
				<cfcatch><h2>Weekly study not entered yet</h2></cfcatch>
				</cftry>
			<cfoutput>
				<p class="eachday">#linkto(text="#day# - #subject#", controller="biblestudies", action="show", key=day)#</p>
			</cfoutput>
		</cfoutput>
