<cfcomponent extends="Controller" output="false">
	
	<!--- users/index --->
	<cffunction name="index">
		<cfset users = model("Users").findAll()>
	</cffunction>
	
	<!--- users/show/key --->
	<cffunction name="show">
		
		<!--- Find the record --->
    	<cfset users = model("Users").findByKey(params.key)>
    	
    	<!--- Check if the record exists --->
	    <cfif NOT IsObject(users)>
	        <cfset flashInsert(error="Users #params.key# was not found")>
	        <cfset redirectTo(action="index")>
	    </cfif>
			
	</cffunction>
	
	<!--- users/new --->
	<cffunction name="new">
		<cfset users = model("Users").new()>
	</cffunction>
	
	<!--- users/subscribe --->
	<cffunction name="subscribe">
		<cfset users = model("Users").new()>
		<cfset users.sendstudy = "33days">
	</cffunction>

	<!--- users/edit/key --->
	<cffunction name="edit">
	
		<!--- Find the record --->
    	<cfset users = model("Users").findByKey(params.key)>
    	
    	<!--- Check if the record exists --->
	    <cfif NOT IsObject(users)>
	        <cfset flashInsert(error="Users #params.key# was not found")>
			<cfset redirectTo(action="index")>
	    </cfif>
		
	</cffunction>
	
	<!--- users/create --->
	<cffunction name="create">
		<cfset users = model("Users").new(params.users)>
		
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
	
	<!--- users/createsubscription --->
	<cffunction name="createsubscription">
		<cfset users = model("Users").new(params.users)>
		
		<!--- Verify that the users creates successfully --->
		<cfif users.save()>
			<cfset flashInsert(success="Congratulations! You will receive studies by email!")>
            <cfset returnBack()>
		<!--- Otherwise --->
		<cfelse>
			<cfset flashInsert(error="There was an error creating the users.")>
			<cfset renderPage(action="subscribe")>
		</cfif>
	</cffunction>

	<!--- users/update --->
	<cffunction name="update">
		<cfset users = model("Users").findByKey(params.key)>
		
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
		<cfset users = model("Users").findByKey(params.key)>
		
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
