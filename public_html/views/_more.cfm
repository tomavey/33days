<cfoutput>

		<li>#linkTo(text="Introduction", route="introduction", class="ui-link")#</li>
		<li>#linkTo(text="Today's study guide", route="today", key="", class="ui-link")#</li>
		<li>#linkTo(text="List all study guides", route="guides", class="ui-link")#</li>
		<li>#linkTo(text="Prayer Guide", route="prayerguide", class="ui-link")#</li>
		<li>#linkto(text="Subscribe", route="subscribe", class="ui-link")#</li>
		<li>#linkTo(text="KnowGrowShow", href="/images/knowgrowshow.jpg", data_ajax="false")#</li>

	<cfif flashKeyExists("success")>
	    <div class="success"> 
			#flash("success")#
	    </div>
	</cfif>

</cfoutput>