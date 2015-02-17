<cfoutput>
					<cftry>
					<p id="week">Week ###week.week# - <span>#week.subject#</span>; Weekly memory verse = #week.verse# <br/>
					<cfcatch>Weekly study not uploaded yet.</cfcatch>
					</cftry>
					Day: #biblestudy.day#
					</p>

					<h3 id="subject">#biblestudy.subject#</h3>
				
					<p id="content">#biblestudy.content#</p>

					<h3>Weekly Assignment</h3>

					<p id="content">#week.content#</p>
</cfoutput>