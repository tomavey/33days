<cfoutput>
					<cftry>
					<p id="week">Week ###week.week# - <span>#week.subject#</span>; Weekly memory verse = #week.verse# <br/>
					<cfcatch>
						<h2>Weekly study not entered yet. </h2>
						<p>#linkto(text="Create week ###biblestudy.weeksid# study", route="adminweeksnew", params="week=#biblestudy.weeksid#")#</p>
					</cfcatch>
					</cftry>

					Day: #biblestudy.day#
					</p>

					<h3 id="subject">#biblestudy.subject#</h3>
				
					<p id="content">#biblestudy.content#</p>

					<h3>Weekly Assignment</h3>
					<cftry>	
					<p id="content">#week.content#</p>
					<cfcatch>Weekly study not uploaded yet.</cfcatch>
					</cftry>
</cfoutput>