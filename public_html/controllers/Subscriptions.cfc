<cfcomponent extends="Controller" output="false">

	<cffunction name="init">
		<cfset filters(through="isOffice", only="index,delete")>
	</cffunction>
	
	
	<!--- users/subscribe --->
	<cffunction name="new">
		<cfset users = model("User").new()>
		<cfset users.sendstudy = "33days">
	</cffunction>

	<!--- users/create --->
	<cffunction name="create">
		<cfset users = model("User").new(params)>
		<cfset users.emailcampaigncheck  = users.email & getcampaignId()>		
		<!--- Verify that the users creates successfully --->
		<cfif users.save()>
			<cfset flashInsert(success="Congratulations! You will receive studies by email!")>
			<cfset redirectTo(action="confirm", key=users.uuid)>
		<!--- Otherwise --->
		<cfelse>
			<cfset flashInsert(error="There was an error creating the subscription.")>
			<cfset renderPage(action="new")>
		</cfif>
	</cffunction>

	<!--- subscriptions/show/key --->
	<cffunction name="send">
		<cfif not isDefined("params.key")>
			<cfset params.key = getThisDay()>
		</cfif>
		
		<!--- Find the record --->
    	<cfset biblestudy = model("Biblestudy").findOne(where="day=#params.key# AND campaignid='#getCampaignId()#'", include="Week")>

    	<cfset week = model("Week").findOne(where="week=#biblestudy.weeksid# AND campaignid='#getcampaignId()#'")>

    	<!--- Check if the record exists --->
	    <cfif NOT IsObject(biblestudy)>
	        <cfset flashInsert(error="Biblestudies #params.key# was not found")>
	        <cfset redirectTo(controller="users", action="index")>
	    </cfif>

	    <cfif isDefined("params.email")>
	    	<cfset sendEmail(template="email", from="office@cofh.com", to=params.email, subject="Today's bible study", layout="/layout_naked.cfm")>
	    	<cfset setSentDate(email)>
	    	<cfset allemail = email>
	    <cfelse>

		    <cfset whereString = "campaignId='#getCampaignId()#'">

<!---
		    <cfif not isDefined("params.resend")>
		    	<cfset whereString = whereString & " AND (date(now()) <> date(laststudysentat)) OR laststudysentat IS NULL">
		    </cfif>
--->
		    <cfset subscriptions = model("User").findAll(where=whereString)>

		    <cfset allemail = "">

		    <cfloop query="subscriptions">
		    	<cfif sendToThisPerson(laststudysentat) OR isDefined("params.resend")>
			    	<cfset sendEmail(template="send", from="office@cofh.com", to=email, subject="Today's bible study", layout="/layout_naked.cfm")>
			    	<cfset allemail = allemail & "," & email>
			    	<cfset setSentDate(email)>
		    	</cfif>
		    </cfloop>

	    </cfif>

	    <cfset renderPage(layout="/layout_naked.cfm")>
			
	</cffunction>

	<cffunction name="setSentDate">
	<cfargument name="email" required="true" type="string">
	<cfargument name="today" default="#now()#">
		<cfset user = model("User").findOne(where="email = '#arguments.email#' AND campaignId='#getCampaignId()#'")>
		<cfset user.laststudysentat = now()>
		<cfset user.update()>
	<cfreturn true>	
	</cffunction>

	<cffunction name="confirmSubscription">
		<cfset user = model("User").findOne(where="uuid='#params.key#'")>
		<cfif isObject(user)>
			<cfset user.confirmed = now()>
			<cfset user.update()>
			<cfset message = "#user.email# is Subscribed!">
		<cfelse>	 	
			<cfset message = "Oops!  Something went wrong.">
		</cfif>		
	</cffunction>

	<cffunction name="confirm">
		<cfset user=model("User").findOne(where="uuid='#params.key#'")>
		    	<cfset sendEmail(template="confirm", from="office@cofh.com", to=user.email, subject="Confirm your subscription.", layout="/layout_naked.cfm")>
		<cfset redirectTo(action="confirmationsent")>    	

	</cffunction>

	<cffunction name="sendToThisPerson">
	<cfargument name="lastSendAt" required="true">
	<cfset var loc=structNew()>
	<cfset loc.todayAsString = dateformat(now(),"yyyy-mm-dd")>
	<cfset loc.return = true>
	<cfif isDate(arguments.lastSendAt)>
		<cfif dateCompare(lastSendAt,loc.todayasstring) EQ 0>
			<cfset loc.return=false>
		</cfif>		
	</cfif>	
	<cfif isDefined("params.resend")>
			<cfset loc.return=false>
	</cfif>
	<cfreturn loc.return>
	</cffunction>


</cfcomponent>
