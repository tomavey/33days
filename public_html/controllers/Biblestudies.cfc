<cfcomponent extends="Controller" output="false">

	<cffunction name="init">
		<cfset filters(through="isOffice", only="index,create,update,delete,new")>
	</cffunction>
	
	<!--- biblestudies/index --->
	<cffunction name="index">
		<cfset biblestudies = model("Biblestudies").findAll(include="Weeks", order="day")>
		<cfset renderPage(layout="/layout_admin")>
	</cffunction>
	
	<cffunction name="list">
		<cfset biblestudies = model("Biblestudies").findAll(where="active='yes'", order="week,day", include="Weeks")>
	</cffunction>

	<!--- biblestudies/show/key --->
	<cffunction name="show">
		<cfif not isDefined("params.key")>
			<cfset params.key = getThisDay()>
		</cfif>
		
		<!--- Find the record --->
    	<cfset biblestudies = model("Biblestudies").findOne(where="day=#params.key#", include="Weeks")>
    	
    	<!--- Check if the record exists --->
	    <cfif NOT IsObject(biblestudies)>
	        <cfset flashInsert(error="Biblestudies #params.key# was not found")>
	        <cfset redirectTo(action="list")>
	    </cfif>
			
	</cffunction>

	<!--- biblestudies/new --->
	<cffunction name="new">
		<cfset biblestudies = model("Biblestudies").new()>
		<cfset renderPage(layout="/layout_admin")>
	</cffunction>
	
	<!--- biblestudies/edit/key --->
	<cffunction name="edit">
	
		<!--- Find the record --->
    	<cfset biblestudies = model("Biblestudies").findByKey(params.key)>
    	
    	<!--- Check if the record exists --->
	    <cfif NOT IsObject(biblestudies)>
	        <cfset flashInsert(error="Biblestudies #params.key# was not found")>
			<cfset redirectTo(action="index")>
	    </cfif>

		<cfset renderPage(layout="/layout_admin")>
		
	</cffunction>
	
	<!--- biblestudies/create --->
	<cffunction name="create">
		<cfset biblestudies = model("Biblestudies").new(params.biblestudies)>
		
		<!--- Verify that the biblestudies creates successfully --->
		<cfif biblestudies.save()>
			<cfset flashInsert(success="The biblestudies was created successfully.")>
            <cfset redirectTo(action="index")>
		<!--- Otherwise --->
		<cfelse>
			<cfset flashInsert(error="There was an error creating the biblestudies.")>
			<cfset renderPage(action="new")>
		</cfif>
	</cffunction>
	
	<!--- biblestudies/update --->
	<cffunction name="update">
		<cfset biblestudies = model("Biblestudies").findByKey(params.key)>
		
		<!--- Verify that the biblestudies updates successfully --->
		<cfif biblestudies.update(params.biblestudies)>
			<cfset flashInsert(success="The biblestudies was updated successfully.")>	
            <cfset redirectTo(action="index")>
		<!--- Otherwise --->
		<cfelse>
			<cfset flashInsert(error="There was an error updating the biblestudies.")>
			<cfset renderPage(action="edit")>
		</cfif>
	</cffunction>
	
	<!--- biblestudies/delete/key --->
	<cffunction name="delete">
		<cfset biblestudies = model("Biblestudies").findByKey(params.key)>
		
		<!--- Verify that the biblestudies deletes successfully --->
		<cfif biblestudies.delete()>
			<cfset flashInsert(success="The biblestudies was deleted successfully.")>	
            <cfset redirectTo(action="index")>
		<!--- Otherwise --->
		<cfelse>
			<cfset flashInsert(error="There was an error deleting the biblestudies.")>
			<cfset redirectTo(action="index")>
		</cfif>
	</cffunction>
	
</cfcomponent>
