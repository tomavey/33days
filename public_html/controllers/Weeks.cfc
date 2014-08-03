<cfcomponent extends="Controller" output="false">
	
	<cffunction name="init">
		<cfset filters(through="isOffice", only="index,create,update,delete,new")>
	</cffunction>
	
	<!--- weeks/index --->
	<cffunction name="index">
		<cfset weeks = model("Weeks").findAll()>
		<cfset usesLayout("/layout_admin")>
	</cffunction>
	
	<!--- weeks/show/key --->
	<cffunction name="show">
		
		<!--- Find the record --->
    	<cfset weeks = model("Weeks").findOne(where="week=#params.key#")>
    	
    	<!--- Check if the record exists --->
	    <cfif NOT IsObject(weeks)>
	        <cfset flashInsert(error="Weeks #params.key# was not found")>
	        <cfset redirectTo(action="index")>
	    </cfif>

	    <cfset renderPage(layout="/layout")>

	</cffunction>
	
	<!--- weeks/new --->
	<cffunction name="new">
		<cfset weeks = model("Weeks").new()>
		<cfset renderPage(layout="/layout_admin")>
	</cffunction>
	
	<!--- weeks/edit/key --->
	<cffunction name="edit">
	
		<!--- Find the record --->
    	<cfset weeks = model("Weeks").findByKey(params.key)>
    	
    	<!--- Check if the record exists --->
	    <cfif NOT IsObject(weeks)>
	        <cfset flashInsert(error="Weeks #params.key# was not found")>
			<cfset redirectTo(action="index")>
	    </cfif>

		<cfset renderPage(layout="/layout_admin")>
		
	</cffunction>
	
	<!--- weeks/create --->
	<cffunction name="create">
		<cfset weeks = model("Weeks").new(params.weeks)>
		
		<!--- Verify that the weeks creates successfully --->
		<cfif weeks.save()>
			<cfset flashInsert(success="The weeks was created successfully.")>
            <cfset redirectTo(action="index")>
		<!--- Otherwise --->
		<cfelse>
			<cfset flashInsert(error="There was an error creating the weeks.")>
			<cfset renderPage(action="new")>
		</cfif>
	</cffunction>
	
	<!--- weeks/update --->
	<cffunction name="update">
		<cfset weeks = model("Weeks").findByKey(params.key)>
		
		<!--- Verify that the weeks updates successfully --->
		<cfif weeks.update(params.weeks)>
			<cfset flashInsert(success="The weeks was updated successfully.")>	
            <cfset redirectTo(action="index")>
		<!--- Otherwise --->
		<cfelse>
			<cfset flashInsert(error="There was an error updating the weeks.")>
			<cfset renderPage(action="edit")>
		</cfif>
	</cffunction>
	
	<!--- weeks/delete/key --->
	<cffunction name="delete">
		<cfset weeks = model("Weeks").findByKey(params.key)>
		
		<!--- Verify that the weeks deletes successfully --->
		<cfif weeks.delete()>
			<cfset flashInsert(success="The weeks was deleted successfully.")>	
            <cfset redirectTo(action="index")>
		<!--- Otherwise --->
		<cfelse>
			<cfset flashInsert(error="There was an error deleting the weeks.")>
			<cfset redirectTo(action="index")>
		</cfif>
	</cffunction>
	
</cfcomponent>
