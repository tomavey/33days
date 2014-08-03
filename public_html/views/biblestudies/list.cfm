		<cfoutput query="biblestudies" group="week">
				<h2>#linkto(text="Week ###week# - #subject#", route="week", key=week)#</h2>
			<cfoutput>
				<p class="eachday">#linkto(text="#day# - #subject#", controller="biblestudies", action="show", key=id)#</p>
			</cfoutput>
		</cfoutput>
