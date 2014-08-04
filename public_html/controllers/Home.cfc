<cfcomponent extends="Controller" output="false">

	<cffunction name="index">
	</cffunction>

	<cffunction name="about">
	</cffunction>

	<cffunction name="gitadd">
		<cfoutput>Updating...<br></cfoutput>
		<cfexecute name="C:\WINDOWS\system32\cmd.exe" 
		     arguments="/c C:\scripts\addweb.bat" 
		     variable="return" timeout=30></cfexecute>
		<cfoutput>
		<pre>
		--- Message from Git ----
		#return#
		--- End Message from Git ----
		</pre>
		</cfoutput>
		<cfoutput>Complete<br></cfoutput>	
		<cfabort>
	</cffunction>

</cfcomponent>