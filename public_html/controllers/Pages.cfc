<cfcomponent extends="Controller" output="false">

	<cffunction name="init">
		<cfset usesLayout("/layout_admin")>
		<cfset filters(through="getpage", only="show,edit,update,copy")>
	</cffunction>

	<cffunction name="getPage">
		<cfif val(params.key)>
		
			<!--- Find the record by id--->
    		<cfset page = model("Page").findByKey(params.key)>

    	<cfelseif len(params.key)>	

			<!--- Find the record by shortlink--->
    		<cfset page = model("Page").findOne(where="shortlink='#params.key#' AND campaign='#getCampaign()#'")>

    		<cfif not isObject(page)>
    			<cfset redirectTo(action='new', params="shortlink=#params.key#")>
    		</cfif>

    	<cfelse>

	        <cfset renderText("Page not found")>

	    </cfif>    	
	</cffunction>
	
	<!--- pages/index --->
	<cffunction name="index">
		<cfset pages = model("Page").findAll(where="campaign='#getCampaign()#'")>
	</cffunction>
	
	<!--- pages/show/key --->
	<cffunction name="show">
    	
    	<!--- Check if the record exists --->
	    <cfif NOT IsObject(page)>
	        <cfset flashInsert(error="Page #params.key# was not found")>
	        <cfset redirectTo(action="index")>
	    </cfif>

	    <cfset renderPage(layout="/layout")>
			
	</cffunction>
	
	<!--- pages/new --->
	<cffunction name="new">
		<cfset page = model("Page").new()>
		<cfif isDefined("params.shortlink")>
			<cfset page.shortlink = params.shortlink>
		</cfif>
	</cffunction>
	
	<!--- pages/copy --->
	<cffunction name="copy">
		<cfif isDefined("params.shortlink")>
			<cfset page.shortlink = params.shortlink>
		</cfif>
	</cffunction>

	<!--- pages/edit/key --->
	<cffunction name="edit">
	
    	<!--- Check if the record exists --->
	    <cfif NOT IsObject(page)>
	        <cfset flashInsert(error="Page #params.key# was not found")>
			<cfset redirectTo(action="index")>
	    </cfif>
		
	</cffunction>
	
	<!--- pages/create --->
	<cffunction name="create">
		<cfset page = model("Page").new(params.page)>
		
		<!--- Verify that the page creates successfully --->
		<cfif page.save()>
			<cfset flashInsert(success="The page was created successfully.")>
            <cfset redirectTo(action="index")>
		<!--- Otherwise --->
		<cfelse>
			<cfset flashInsert(error="There was an error creating the page.")>
			<cfset renderPage(action="new")>
		</cfif>
	</cffunction>
	
	<!--- pages/update --->
	<cffunction name="update">
		
		<!--- Verify that the page updates successfully --->
		<cfif page.update(params.page)>
			<cfset flashInsert(success="The page was updated successfully.")>	
            <cfset redirectTo(action="index")>
		<!--- Otherwise --->
		<cfelse>
			<cfset flashInsert(error="There was an error updating the page.")>
			<cfset renderPage(action="edit")>
		</cfif>
	</cffunction>
	
	<!--- pages/delete/key --->
	<cffunction name="delete">
		<cfset page = model("Page").findByKey(params.key)>
		
		<!--- Verify that the page deletes successfully --->
		<cfif page.delete()>
			<cfset flashInsert(success="The page was deleted successfully.")>	
            <cfset redirectTo(action="index")>
		<!--- Otherwise --->
		<cfelse>
			<cfset flashInsert(error="There was an error deleting the page.")>
			<cfset redirectTo(action="index")>
		</cfif>
	</cffunction>

	<cffunction name="prayer">
		<cfset redirectTo(action="show", key="prayer")>
	</cffunction>	
	
	<cffunction name="editprayer">
		<cfset redirectTo(action="edit", key="prayer")>
	</cffunction>	

	<cffunction name="introduction">
		<cfset redirectTo(action="show", key="introduction")>
	</cffunction>	

	<cffunction name="editintroduction">
		<cfset redirectTo(action="edit", key="introduction")>
	</cffunction>	

</cfcomponent>
