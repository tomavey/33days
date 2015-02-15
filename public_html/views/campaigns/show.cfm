<div class="container">
<h1>Showing campaign</h1>

<cfoutput>#includePartial("showFlash")#</cfoutput>

<cfoutput>

			
				
					<p><span>Id:</span> 
						#campaign.id#</p>
				
					<p><span>Name:</span> 
						#campaign.name#</p>
				
					<p><span>Campaign:</span> 
						#campaign.campaign#</p>

					<p><span>Main image:</span> 
						#campaign.mainimage#</p>
				
					<p><span>Main title:</span> 
						#campaign.maintitle#</p>
				
					<p><span>Nav Bar Color:</span> 
						#campaign.navbarcolor#</p>
				
					<p><span>Start date:</span> 
						#campaign.startdate#</p>
				
					<p><span>Active?:</span> 
						#campaign.active#</p>

					<p><span>Created: </span> 
						#dateFormat(campaign.createdAt)#</p>
				
#linkTo(text="Return to the listing", action="index")# | #linkTo(text="Edit this campaign", action="edit", key=campaign.id)#
</cfoutput>
</div>