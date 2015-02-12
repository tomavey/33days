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
<cfset addRoute(name="adminweeksnew", pattern="/adminweeksnew/", controller="Weeks", action="new")>
<cfset addRoute(name="weeksindex", pattern="/weeksindex/", controller="Weeks", action="index")>
<cfset addRoute(name="weekedit", pattern="/week/[key]/edit/", controller="Weeks", action="edit")>
<cfset addRoute(name="weekupdate", pattern="/week/[key]/update/", controller="Weeks", action="update")>
<cfset addRoute(name="week", pattern="/week/[key]", controller="Weeks", action="show")>
<cfset addRoute(name="today", pattern="/today/", controller="Biblestudies", action="show")>
<cfset addRoute(name="admin", pattern="/admin/", controller="Biblestudies", action="index")>
<cfset addRoute(name="editprayerguide", pattern="/prayerguide/edit/", controller="pages", action="editprayer")>
<cfset addRoute(name="prayerguide", pattern="/prayerguide/", controller="pages", action="prayer")>
<cfset addRoute(name="editintroduction", pattern="/introduction/edit/", controller="pages", action="editintroduction")>
<cfset addRoute(name="introduction", pattern="/introduction/", controller="pages", action="introduction")>
<cfset addRoute(name="subscribe", pattern="/subscribe/", controller="Subscriptions", action="new")>
<cfset addRoute(name="confirm", pattern="/confirm/[key]", controller="Subscriptions", action="confirm-subscription")>

