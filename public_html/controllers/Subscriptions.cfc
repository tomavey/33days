<cfcomponent extends="Controller" output="false">
	
	
	<!--- users/subscribe --->
	<cffunction name="new">
		<cfset users = model("Users").new()>
		<cfset users.sendstudy = "33days">
	</cffunction>

	<!--- users/create --->
	<cffunction name="create">
		<cfset users = model("Users").new(params.users)>
		
		<!--- Verify that the users creates successfully --->
		<cfif users.save()>
			<cfset flashInsert(success="Congratulations! You will receive studies by email!")>
            <cfset returnBack()>
		<!--- Otherwise --->
		<cfelse>
			<cfset flashInsert(error="There was an error creating the users.")>
			<cfset renderPage(action="new")>
		</cfif>
	</cffunction>

	<!--- subscriptions/show/key --->
	<cffunction name="send">
		<cfif not isDefined("params.key")>
			<cfset params.key = getThisDay()>
		</cfif>
		
		<!--- Find the record --->
    	<cfset biblestudy = model("Biblestudy").findOne(where="day=#params.key#", include="Week")>
    	
    	<!--- Check if the record exists --->
	    <cfif NOT IsObject(biblestudy)>
	        <cfset flashInsert(error="Biblestudies #params.key# was not found")>
	        <cfset redirectTo(action="list")>
	    </cfif>

	    <cfif isDefined("params.email")>
	    	<cfset sendEmail(template="email", from="office@cofh.com", to=params.email, subject="Today's bible study", layout="/layout_naked.cfm")>
	    	<cfset setSentDate(email)>
	    	<cfset allemail = email>
	    <cfelse>

		    <cfset whereString = "sendstudy='33days'">

		    <cfif not isDefined("params.resend")>
		    	<cfset whereString = whereString & " AND (date(now()) <> date(laststudysentat)) OR laststudysentat IS NULL">
		    </cfif>

		    <cfset subscriptions = model("Users").findAll(where=whereString)>

		    <cfset allemail = "">

		    <cfloop query="subscriptions">
		    	<cfset sendEmail(template="email", from="office@cofh.com", to=email, subject="Today's bible study", layout="/layout_naked.cfm")>
		    	<cfset allemail = allemail & "," & email>
		    	<cfset setSentDate(email)>
		    </cfloop>

	    </cfif>

	    <cfset renderPage(layout="/layout_naked.cfm")>
			
	</cffunction>

	<cffunction name="setSentDate">
	<cfargument name="email" required="true" type="string">
	<cfargument name="today" default="#now()#">
		<cfset user = model("Users").findOne(where="email = '#arguments.email#'")>
		<cfset user.laststudysentat = now()>
		<cfset user.update()>
	<cfreturn true>	
	</cffunction>
	
</cfcomponent>
