<cfcomponent extends="Controller" output="false">
	
	<!--- logs/index --->
	<cffunction name="index">
		<cfset logs = model("Log").findAll(where="campaignid='#getCampaignId()#'", order="id DESC")>
	</cffunction>
	
	<!--- logs/show/key --->
	<cffunction name="show">
		
		<!--- Find the record --->
    	<cfset log = model("Log").findByKey(params.key)>
    	
    	<!--- Check if the record exists --->
	    <cfif NOT IsObject(log)>
	        <cfset flashInsert(error="Log #params.key# was not found")>
	        <cfset redirectTo(action="index")>
	    </cfif>
			
	</cffunction>
	
	<!--- logs/new --->
	<cffunction name="new">
		<cfset log = model("Log").new()>
	</cffunction>
	
	<!--- logs/edit/key --->
	<cffunction name="edit">
	
		<!--- Find the record --->
    	<cfset log = model("Log").findByKey(params.key)>
    	
    	<!--- Check if the record exists --->
	    <cfif NOT IsObject(log)>
	        <cfset flashInsert(error="Log #params.key# was not found")>
			<cfset redirectTo(action="index")>
	    </cfif>
		
	</cffunction>
	
	<!--- logs/create --->
	<cffunction name="create">
		<cfset log = model("Log").new(params.log)>
		
		<!--- Verify that the log creates successfully --->
		<cfif log.save()>
			<cfset flashInsert(success="The log was created successfully.")>
            <cfset redirectTo(action="index")>
		<!--- Otherwise --->
		<cfelse>
			<cfset flashInsert(error="There was an error creating the log.")>
			<cfset renderPage(action="new")>
		</cfif>
	</cffunction>
	
	<!--- logs/update --->
	<cffunction name="update">
		<cfset log = model("Log").findByKey(params.key)>
		
		<!--- Verify that the log updates successfully --->
		<cfif log.update(params.log)>
			<cfset flashInsert(success="The log was updated successfully.")>	
            <cfset redirectTo(action="index")>
		<!--- Otherwise --->
		<cfelse>
			<cfset flashInsert(error="There was an error updating the log.")>
			<cfset renderPage(action="edit")>
		</cfif>
	</cffunction>
	
	<!--- logs/delete/key --->
	<cffunction name="delete">
		<cfset log = model("Log").findByKey(params.key)>
		
		<!--- Verify that the log deletes successfully --->
		<cfif log.delete()>
			<cfset flashInsert(success="The log was deleted successfully.")>	
            <cfset redirectTo(action="index")>
		<!--- Otherwise --->
		<cfelse>
			<cfset flashInsert(error="There was an error deleting the log.")>
			<cfset redirectTo(action="index")>
		</cfif>
	</cffunction>

	<cffunction name="testlog">
		<cfset logpage()>
	</cffunction>
	
</cfcomponent>
