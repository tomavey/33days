<cfcomponent extends="Controller" output="false">
	
	<cffunction name="init">
		<cfset filters(through="isOffice", only="index,create,update,delete,new")>
		<cfset filters(through="getWeek", only="show,edit,update,copy")>
		<cfset usesLayout("/layout_admin")>
	</cffunction>

	<cffunction name="getweek">
		<!--- Find the record --->
		<cfset weeks = model("Week").findOne(where="week=#params.key# AND campaignId='#getCampaignId()#'")>
	</cffunction>
	
	<!--- weeks/index --->
	<cffunction name="index">
		<cfset weeks = model("Week").findAll(where="campaignId='#getCampaignId()#'")>
	</cffunction>
	
	<!--- weeks/show/key --->
	<cffunction name="show">

    	<!--- Check if the record exists --->
	    <cfif NOT IsObject(weeks)>
	        <cfset flashInsert(error="Weeks #params.key# was not found")>
	        <cfset redirectTo(route="adminweeks")>
	    </cfif>

	    <cfset renderPage(layout="/layout")>

	</cffunction>
	
	<!--- weeks/new --->
	<cffunction name="new">
		<cfset weeks = model("Week").new()>
		<cfif isDefined("params.week")>
			<cfset weeks.week = params.week>
		</cfif>
		<cfset renderPage(layout="/layout_admin")>
	</cffunction>
	
	<!--- weeks/edit/key --->
	<cffunction name="edit">
	
    	<!--- Check if the record exists --->
	    <cfif NOT IsObject(weeks)>
	        <cfset flashInsert(error="Weeks #params.key# was not found")>
			<cfset redirectTo(route="adminweeks")>
	    </cfif>

		<cfset renderPage(layout="/layout_admin")>
		
	</cffunction>
	
	<!--- weeks/edit/key --->
	<cffunction name="copy">

    	<cfset campaigns = model("Campaign").findAll()>
	
    	<!--- Check if the record exists --->
	    <cfif NOT IsObject(weeks)>
	        <cfset flashInsert(error="Weeks #params.key# was not found")>
			<cfset redirectTo(route="adminweeks")>
	    </cfif>

		<cfset renderPage(layout="/layout_admin")>
		
	</cffunction>
	
	<!--- weeks/create --->
	<cffunction name="create">
		<cfset weeks = model("Week").new(params.weeks)>
		
		<!--- Verify that the weeks creates successfully --->
		<cfif weeks.save()>
			<cfset flashInsert(success="The week was created successfully.")>
            <cfset redirectTo(route="adminweeks")>
		<!--- Otherwise --->
		<cfelse>
			<cfset flashInsert(error="There was an error creating the weeks.")>
			<cfset renderPage(action="new")>
		</cfif>
	</cffunction>
	
	<!--- weeks/update --->
	<cffunction name="update">

		<!--- Verify that the weeks updates successfully --->
		<cfif weeks.update(params.weeks)>
			<cfset flashInsert(success="The weeks was updated successfully.")>	
            <cfset redirectTo(route="adminweeks")>
		<!--- Otherwise --->
		<cfelse>
			<cfset flashInsert(error="There was an error updating the weeks.")>
			<cfset renderPage(action="edit")>
		</cfif>
	</cffunction>
	
	<!--- weeks/delete/key --->
	<cffunction name="delete">
		<cfset weeks = model("Week").findByKey(params.key)>
		
		<!--- Verify that the weeks deletes successfully --->
		<cfif weeks.delete()>
			<cfset flashInsert(success="The weeks was deleted successfully.")>	
            <cfset redirectTo(route="adminweeks")>
		<!--- Otherwise --->
		<cfelse>
			<cfset flashInsert(error="There was an error deleting the weeks.")>
			<cfset redirectTo(route="adminweeks")>
		</cfif>
	</cffunction>
	
</cfcomponent>
