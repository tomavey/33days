<cfoutput>

		<li>#linkTo(text="Today's study guide", route="today", key="", class="ui-link")#</li>
		<li>#linkTo(text="List all study guides", route="guides", class="ui-link")#</li>
		<li>#linkTo(text="Prayer Guide", route="prayerguide", class="ui-link")#</li>
		<li>#linkTo(text="KnowGrowShow", href="/images/knowgrowshow.jpg", data_ajax="false")#</li>
		<li>#linkTo(text="About", controller="home", action="about", class="ui-link")#</li>

</cfoutput>