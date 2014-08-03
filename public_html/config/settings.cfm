<!---
	If you leave these settings commented out, Wheels will set the data source name to the same name as the folder the application resides in.
	<cfset set(dataSourceName="")>
	<cfset set(dataSourceUserName="")>
	<cfset set(dataSourcePassword="")> 
--->

	<cfset set(dataSourceName="33days")>

<!---
	If you leave this setting commented out, Wheels will try to determine the URL rewrite capabilities automatically.
	The URLRewriting setting can bet set to "On", "Partial" or "Off".
	To run with "Partial" rewriting, the "PATH_INFO" variable needs to be supported by the web server.
	To run with rewriting "On", you need to apply the necessary rewrite rules on the web server first.
	<cfset set(URLRewriting="Partial")>
--->

	<cfset set(URLRewriting="On")>

	<!---Defaults for form helpers--->
	<cfset set(functionName="textField", labelPlacement="before", prependToLabel="<p>", append="</p>")>	
	<cfset set(functionName="passwordField", labelPlacement="before", prependToLabel="<p>", append="</p>")>	
	<cfset set(functionName="fileField", labelPlacement="before", prependToLabel="<p>", append="</p>")>	
	<cfset set(functionName="textArea", labelPlacement="before", prependToLabel="<p>", append="</p>")>	
	<cfset set(functionName="textFieldTag", labelPlacement="before", prependToLabel="<p>", append="</p>")>	
	<cfset set(functionName="checkBoxTag", labelPlacement="before", prependToLabel="<p>", append="</p>")>	
	<cfset set(functionName="radioButtonTag", labelPlacement="before", prependToLabel="<p>", append="</p>")>	
	<cfset set(functionName="selectTag", labelPlacement="before", prependToLabel="<p>", append="</p>")>	
	<cfset set(functionName="select", labelPlacement="before", prependToLabel="<p>", append="</p>")>	
	<cfset set(functionName="timeSelect", labelPlacement="before", prependToLabel="<p>", append="</p>")>

	<cfset application.wheels.startdate = "2014-07-30">