<cfcomponent extends="Controller" output="false">

	<cffunction name="init">
		<cfset filters(through="isOffice", only="index,create,update,delete,new")>
		<cfset filters(through="getBibleStudy", only="edit,update,copy,delete")>
	</cffunction>

	<cffunction name="getBibleStudy">
    	<cfset biblestudy = model("Biblestudy").findByKey(params.key)>
	</cffunction>
	
	<!--- biblestudies/index --->
	<cffunction name="index">
		<cfset biblestudies = model("Biblestudy").findAll(where=" campaignid='#getCampaignId()#'", include="Week", order="day")>
		<cfset renderPage(layout="/layout_admin")>
	</cffunction>
	
	<cffunction name="list">

		<cfset biblestudies = model("Biblestudy").findAll(where="active='yes' AND campaignid='#getCampaignId()#'", order="weeksid,day")>

	</cffunction>

	<!--- biblestudies/show/key --->
	<cffunction name="show">
		<cfif not isDefined("params.key")>
			<cfset params.key = getThisDay()>
		</cfif>
		
		<!--- Find the record --->
    	<cfset biblestudy = model("Biblestudy").findOne(where="day=#params.key# AND campaignId='#getCampaignId()#'")>

    	<cfset week = model("Week").findOne(where="week=#biblestudy.weeksid# AND campaignid='#getcampaignId()#'")>

    	<!--- Check if the record exists --->
	    <cfif NOT IsObject(biblestudy)>
	        <cfset flashInsert(error="Biblestudies #params.key# was not found")>
	        <cfset redirectTo(action="list")>
	    </cfif>
			
	</cffunction>

	<!--- biblestudies/new --->
	<cffunction name="new">
		<cfset biblestudy = model("Biblestudy").new()>
		<cfset renderPage(layout="/layout_admin")>
	</cffunction>
	
	<!--- biblestudies/edit/key --->
	<cffunction name="edit">
	
    	
    	<!--- Check if the record exists --->
	    <cfif NOT IsObject(biblestudy)>
	        <cfset flashInsert(error="Biblestudies #params.key# was not found")>
			<cfset redirectTo(action="index")>
	    </cfif>

		<cfset renderPage(layout="/layout_admin")>
		
	</cffunction>

		<!--- biblestudies/edit/key --->
	<cffunction name="copy">
	
    	<cfset campaigns = model("Campaign").findAll()>
    	
    	<!--- Check if the record exists --->
	    <cfif NOT IsObject(biblestudy)>
	        <cfset flashInsert(error="Biblestudies #params.key# was not found")>
			<cfset redirectTo(action="index")>
	    </cfif>

		<cfset renderPage(layout="/layout_admin")>
		
	</cffunction>

	
	<!--- biblestudies/create --->
	<cffunction name="create">

		<cfset biblestudy = model("Biblestudy").new(params.biblestudy)>
		
		<!--- Verify that the biblestudies creates successfully --->
		<cfif biblestudy.save()>
			<cfset flashInsert(success="The biblestudy was created successfully.")>
            <cfset redirectTo(action="index")>
		<!--- Otherwise --->
		<cfelse>
			<cfset flashInsert(error="There was an error creating the biblestudy.")>
			<cfset renderPage(action="new")>
		</cfif>
	</cffunction>
	
	<!--- biblestudies/update --->
	<cffunction name="update">
		
		<!--- Verify that the biblestudies updates successfully --->
		<cfif biblestudy.update(params.biblestudy)>
			<cfset flashInsert(success="The biblestudy was updated successfully.")>	
            <cfset redirectTo(action="index")>
		<!--- Otherwise --->
		<cfelse>
			<cfset flashInsert(error="There was an error updating the biblestudy.")>
			<cfset renderPage(action="edit")>
		</cfif>
	</cffunction>
	
	<!--- biblestudies/delete/key --->
	<cffunction name="delete">
		
		<!--- Verify that the biblestudies deletes successfully --->
		<cfif biblestudy.delete()>
			<cfset flashInsert(success="The biblestudy was deleted successfully.")>	
            <cfset redirectTo(action="index")>
		<!--- Otherwise --->
		<cfelse>
			<cfset flashInsert(error="There was an error deleting the biblestudy.")>
			<cfset redirectTo(action="index")>
		</cfif>
	</cffunction>

	<cffunction name="testgetThisDay">
		<cfset test = getThisDay("2014-08-10","2014-08-09")>
		<cfdump var="#test#"><cfabort>
	</cffunction>
	
</cfcomponent>
