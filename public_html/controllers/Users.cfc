<cfcomponent extends="Controller" output="false">
	
	<!--- users/index --->
	<cffunction name="index">
		<cfset users = model("User").findAll(where="campaign='#getCampaign()#'")>
	</cffunction>
	
	<!--- users/show/key --->
	<cffunction name="show">
		
		<!--- Find the record --->
    	<cfset users = model("User").findByKey(params.key)>
    	
    	<!--- Check if the record exists --->
	    <cfif NOT IsObject(users)>
	        <cfset flashInsert(error="Users #params.key# was not found")>
	        <cfset redirectTo(action="index")>
	    </cfif>
			
	</cffunction>
	
	<!--- users/new --->
	<cffunction name="new">
		<cfset users = model("User").new()>
	</cffunction>
	
	<!--- users/edit/key --->
	<cffunction name="edit">
	
		<!--- Find the record --->
    	<cfset users = model("User").findByKey(params.key)>
    	
    	<!--- Check if the record exists --->
	    <cfif NOT IsObject(users)>
	        <cfset flashInsert(error="Users #params.key# was not found")>
			<cfset redirectTo(action="index")>
	    </cfif>
		
	</cffunction>
	
	<!--- users/create --->
	<cffunction name="create">
		<cfset users = model("User").new(params.users)>
		
		<!--- Verify that the users creates successfully --->
		<cfif users.save()>
			<cfset flashInsert(success="The users was created successfully.")>
            <cfset redirectTo(action="index")>
		<!--- Otherwise --->
		<cfelse>
			<cfset flashInsert(error="There was an error creating the users.")>
			<cfset renderPage(action="new")>
		</cfif>
	</cffunction>
	
	<!--- users/update --->
	<cffunction name="update">
		<cfset users = model("User").findByKey(params.key)>
		
		<!--- Verify that the users updates successfully --->
		<cfif users.update(params.users)>
			<cfset flashInsert(success="The users was updated successfully.")>	
            <cfset redirectTo(action="index")>
		<!--- Otherwise --->
		<cfelse>
			<cfset flashInsert(error="There was an error updating the users.")>
			<cfset renderPage(action="edit")>
		</cfif>
	</cffunction>
	
	<!--- users/delete/key --->
	<cffunction name="delete">
		<cfset users = model("User").findByKey(params.key)>
		
		<!--- Verify that the users deletes successfully --->
		<cfif users.delete()>
			<cfset flashInsert(success="The users was deleted successfully.")>	
            <cfset redirectTo(action="index")>
		<!--- Otherwise --->
		<cfelse>
			<cfset flashInsert(error="There was an error deleting the users.")>
			<cfset redirectTo(action="index")>
		</cfif>
	</cffunction>
	
</cfcomponent>
