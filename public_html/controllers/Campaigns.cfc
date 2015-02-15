<cfcomponent extends="Controller" output="false">

	<cffunction name="init">
		<cfset usesLayout("/layout_admin")>
	</cffunction>
	
	<!--- campaigns/index --->
	<cffunction name="index">
		<cfset campaigns = model("Campaign").findAll()>
	</cffunction>
	
	<!--- campaigns/show/key --->
	<cffunction name="show">
		
		<!--- Find the record --->
    	<cfset campaign = model("Campaign").findByKey(params.key)>
    	
    	<!--- Check if the record exists --->
	    <cfif NOT IsObject(campaign)>
	        <cfset flashInsert(error="Campaign #params.key# was not found")>
	        <cfset redirectTo(action="index")>
	    </cfif>
			
	</cffunction>
	
	<!--- campaigns/new --->
	<cffunction name="new">
		<cfset campaign = model("Campaign").new()>
	</cffunction>
	
	<!--- campaigns/edit/key --->
	<cffunction name="edit">
	
		<!--- Find the record --->
    	<cfset campaign = model("Campaign").findByKey(params.key)>
    	
    	<!--- Check if the record exists --->
	    <cfif NOT IsObject(campaign)>
	        <cfset flashInsert(error="Campaign #params.key# was not found")>
			<cfset redirectTo(action="index")>
	    </cfif>
		
	</cffunction>
	
	<!--- campaigns/create --->
	<cffunction name="create">
		<cfset campaign = model("Campaign").new(params.campaign)>
		
		<!--- Verify that the campaign creates successfully --->
		<cfif campaign.save()>
			<cfset flashInsert(success="The campaign was created successfully.")>
			<cfif campaign.active is "yes">
				<cfset setOthersInactive(campaign.id)>
			</cfif>
            <cfset redirectTo(action="index")>
		<!--- Otherwise --->
		<cfelse>
			<cfset flashInsert(error="There was an error creating the campaign.")>
			<cfset renderPage(action="new")>
		</cfif>
	</cffunction>
	
	<!--- campaigns/update --->
	<cffunction name="update">
		<cfset campaign = model("Campaign").findByKey(params.key)>
		
		<!--- Verify that the campaign updates successfully --->
		<cfif campaign.update(params.campaign)>
			<cfset flashInsert(success="The campaign was updated successfully.")>	
			<cfif campaign.active is "yes">
				<cfset setOthersInactive(campaign.id)>
			</cfif>
            <cfset redirectTo(action="index")>
		<!--- Otherwise --->
		<cfelse>
			<cfset flashInsert(error="There was an error updating the campaign.")>
			<cfset renderPage(action="edit")>
		</cfif>
	</cffunction>
	
	<!--- campaigns/delete/key --->
	<cffunction name="delete">
		<cfset campaign = model("Campaign").findByKey(params.key)>
		
		<!--- Verify that the campaign deletes successfully --->
		<cfif campaign.delete()>
			<cfset flashInsert(success="The campaign was deleted successfully.")>	
            <cfset redirectTo(action="index")>
		<!--- Otherwise --->
		<cfelse>
			<cfset flashInsert(error="There was an error deleting the campaign.")>
			<cfset redirectTo(action="index")>
		</cfif>
	</cffunction>

	<cffunction name="setOthersInactive">
	<cfargument name="campaignid" required="true" type="numeric">
		<cfset others = model("Campaign").findAll(where="id <> #campaignid#")>
		<cfloop query="others">
			<cfset other = model("Campaign").findOne(where="id=#id#").update(active="No")>
		</cfloop>
		<cfreturn true>
	</cffunction>
	
</cfcomponent>
