<!---
	Here you can add routes to your application and edit the default one.
	The default route is the one that will be called on your application's "home" page.
--->
<cfset addRoute(name="home", pattern="", controller="Home", action="index")>
<cfset addRoute(name="adminguides", pattern="/adminguides/", controller="Biblestudies", action="index")>
<cfset addRoute(name="adminguidesnew", pattern="/adminguidesnew/", controller="Biblestudies", action="new")>
<cfset addRoute(name="guides", pattern="/guides/", controller="Biblestudies", action="list")>
<cfset addRoute(name="guide", pattern="/guide/[key]", controller="Biblestudies", action="show")>
<cfset addRoute(name="adminweeks", pattern="/adminweeks/", controller="Weeks", action="index")>
<cfset addRoute(name="adminweeksnew", pattern="/adminguidesnew/", controller="Weeks", action="new")>
<cfset addRoute(name="weeks", pattern="/weeks/", controller="Weeks", action="list")>
<cfset addRoute(name="week", pattern="/week/[key]", controller="Weeks", action="show")>
<cfset addRoute(name="today", pattern="/today/", controller="Biblestudies", action="show")>
<cfset addRoute(name="admin", pattern="/admin/", controller="Biblestudies", action="index")>
<cfset addRoute(name="prayerguide", pattern="/prayerguide/", controller="Home", action="prayer")>
