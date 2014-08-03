<div class="container" id="swipeable">
<cfoutput>

					<p id="week">Week ###biblestudies.weeks.week# - <span>#biblestudies.weeks.subject#</span>; Weekly memory verse = #biblestudies.weeks.verse# #linkto(text="See overview of Week ###biblestudies.weeks.week#", route="week", key=biblestudies.weeks.week)#<br/>
					Day: #biblestudies.day#
					</p>

					<h3 id="subject">#biblestudies.subject#</h3>
				
					<p id="content">#biblestudies.content#</p>

</cfoutput>
</div>