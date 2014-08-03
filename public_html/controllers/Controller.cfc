<!---
	This is the parent controller file that all your controllers should extend.
	You can add functions to this file to make them globally available in all your controllers.
	Do not delete this file.
--->
<cfcomponent extends="Wheels">

	<cffunction name="setReturn">
		
		<cfif not isDefined("params.ajax")>
		 <cfif params.action is "index" or params.action is "list">
			 <cfset session.listingURL = $GetCurrentURL()>
		 </cfif>	
		 <cfset session.originalURL = $GetCurrentURL()>
		</cfif>

	</cffunction>

	<cffunction name="returnBack">
		 <cfset var backURL = session.originalURL>
		 <cfset session.originalURL = "">
		 
		 <cfif Len(backURL) GT 0>
			<cflocation url="#backURL#" addtoken="false">
		 <cfelse>
		 	<cfset redirectTo(argumentCollection=arguments)>
		 </cfif>

	</cffunction>

	<cffunction name="$GetCurrentURL" output="No" access="public">
	   <cfset var theURL = getPageContext().getRequest().GetRequestUrl()>
	   <cfif len( CGI.query_string )><cfset theURL = theURL & "?" & CGI.query_string></cfif>

	<cfif cgi.http_host is "localhost:8080" OR cgi.http_host is "localhost:8888">
	<cfelse>
	   <cftry>
	   	<cfset theURL = replace(theUrl,"/rewrite.cfm","","one")>
	   <cfcatch></cfcatch>
	   </cftry>
	</cfif>
	   
	   <cfreturn theURL>
	</cffunction>
	
	<cffunction name="linkTo">
		<cfloop collection="#arguments#" item = "i">
			<cfif findNoCase("DATA_",i)>
				<cfset	structInsert(arguments,replace(i,"DATA_","DATA-"),arguments[#i#])>
				<cfset structDelete(arguments,i)>
			</cfif>
		</cfloop>
		<cfreturn super.linkto(argumentCollection=arguments)>
	</cffunction>

<cffunction name="ckeditor">
	<cfreturn '<script type="text/javascript" src="/files/plugins/richtext/ckeditor/ckeditor.js">
	</script>'>
</cffunction>

<cffunction name="getThisDay">
	<cfset var loc=structNew()>
	<cfset loc.startdate = application.wheels.startdate>
	<cfset loc.thisDate = now()>
		<cfset loc.thisDay = dateDiff("d",loc.startdate,loc.thisdate) + 1>
	<cfreturn loc.thisDay>
</cffunction>

<cffunction name="isOffice">
	<cftry>
		<cfif session.33days.auth is "office">
			<cfreturn true>
		</cfif>
	<cfcatch></cfcatch>
	</cftry>

	<cfif isDefined("params.office")>
		<cfset session.33days.auth = "office">
		<cfreturn true>
	<cfelse>
		<cfset renderText("You do not have permission to view this page")>	
	</cfif>	
</cffunction>

<!---------------------------------------------------------------------->
<!---methods to display simple show, edit, delete, copy tags to lists--->
<!---------------------------------------------------------------------->

<cffunction name="addTag">
<cfargument name="controller" default="#params.controller#">	
<cfargument name="action" default="new">	
<cfargument name="id" required="false" type="numeric">	
<cfargument name="params" require="false" type="string">
<cfif isDefined("arguments.id")>
	<cfreturn "#linkTo(
					text="<i class='icon-plus'></i>", 
					controller = '#arguments.controller#',
					action=arguments.action, 
					key=arguments.id,
					title="Add New"
					)#">
<cfelseif isDefined("arguments.params")>					
	<cfreturn "#linkTo(
					text="<i class='icon-plus'></i>", 
					controller = '#arguments.controller#',
					action=arguments.action, 
					params=arguments.params,
					title="Add New"
					)#">
<cfelse>					
	<cfreturn "#linkTo(
					text="<i class='icon-plus'></i>", 
					controller = '#arguments.controller#',
					action=arguments.action, 
					title="Add New"
					)#">
</cfif>
</cffunction>

<cffunction name="deleteTag">
<cfargument name="id" default='#id#'>	
<cfargument name="controller" default="#params.controller#">
<cfargument name="class" default="ajaxdeleterow">
<cfargument name="method" default="delete">
		<cfreturn "#linkTo(
						text="<i class='icon-trash'></i>", 
						controller=arguments.controller, 
						action='delete', 
						key=arguments.id, 
						title="delete", 
						class=arguments.class,
						method=arguments.method,
						onclick="return confirm('Are you sure?')"
						)#">
</cffunction>

<cffunction name="showTag">
<cfargument name="id" default='#id#'>	
<cfargument name="uuid" required="false">	
<cfargument name="controller" default="#params.controller#">
<cfargument name="action" default="show">
<cfargument name="params" default="">
		<cfreturn "#linkTo(
						text="<i class='icon-search'></i>", 
						controller=arguments.controller, 
						action=arguments.action, 
						key=arguments.ID,
						params=arguments.params, 
						title="show"
						)#">
</cffunction>

<cffunction name="listTag">
<cfargument name="controller" default="#params.controller#">
<cfset arguments.controller = lCase(arguments.controller)>
	<cfreturn "#linkTo(
					text="#imageTag('/list-icon.png')#", 
					controller=arguments.controller, 
					action='index', 
					title="list"
					)#">
</cffunction>

<cffunction name="editTag">
<cfargument name="id" default='#id#'>	
<cfargument name="controller" default="#params.controller#">
<cfset arguments.controller = lCase(arguments.controller)>
			<cfreturn "#linkTo(
							text='<i class="icon-edit"></i>', 
							controller=arguments.controller, 
							action='edit', 
							key=arguments.id, 
							title='edit'
							)#">
</cffunction>

<cffunction name="copyTag">
<cfargument name="id" default='#id#'>	
<cfargument name="controller" default="#params.controller#">	
<cfset arguments.controller = lCase(arguments.controller)>
			<cfreturn "#linkTo(
							text='<i class="icon-plus-sign"></i>', 
							controller=arguments.controller, 
							action='copy', 
							key=arguments.id, 
							title='Copy'
							)#">
</cffunction>

<!---------------------------------------------------------------------->
<!---------------------------------------------------------------------->

	
</cfcomponent>