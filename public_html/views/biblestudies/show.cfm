<div class="container" id="swipeable">
<cfoutput>

					<p id="week">Week ###biblestudy.week.week# - <span>#biblestudy.week.subject#</span>; Weekly memory verse = #biblestudy.week.verse# #linkto(text="See overview of Week ###biblestudy.week.week#", route="week", key=biblestudy.week.week)#<br/>
					Day: #biblestudy.day#
					</p>

					<h3 id="subject">#biblestudy.subject#</h3>
				
					<p id="content">#biblestudy.content#</p>

					<h3>Weekly Assignment</h3>

					<p id="content">#biblestudy.week.content#</p>

</cfoutput>
</div>