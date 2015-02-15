<cfcontent type="text/css; charset=ISO-8859-1">
<cfoutput>
.ui-bar-a {
	border: 1px solid ##b3b3b3 /*{a-bar-border}*/;
	background: ##2B94C7 /*{a-bar-background-color}*/;
	color: ##3e3e3e /*{a-bar-color}*/;
	font-weight: bold;
	text-shadow: 0 /*{a-bar-shadow-x}*/ 1px /*{a-bar-shadow-y}*/ 0 /*{a-bar-shadow-radius}*/ ##0188B7 /*{a-bar-shadow-color}*/;
	background-image: -webkit-gradient(linear, left top, left bottom, from( ###getNavBarColor()# /*{a-bar-background-start}*/), to( ###getNavBarColor()# /*{a-bar-background-end}*/)); /* Saf4+, Chrome */
	background-image: -webkit-linear-gradient( ###getNavBarColor()# /*{a-bar-background-start}*/, ###getNavBarColor()# /*{a-bar-background-end}*/); /* Chrome 10+, Saf5.1+ */
	background-image:    -moz-linear-gradient( ###getNavBarColor()# /*{a-bar-background-start}*/, ###getNavBarColor()# /*{a-bar-background-end}*/); /* FF3.6 */
	background-image:     -ms-linear-gradient( ###getNavBarColor()# /*{a-bar-background-start}*/, ###getNavBarColor()# /*{a-bar-background-end}*/); /* IE10 */
	background-image:      -o-linear-gradient( ###getNavBarColor()# /*{a-bar-background-start}*/, ###getNavBarColor()# /*{a-bar-background-end}*/); /* Opera 11.10+ */
	background-image:         linear-gradient( ###getNavBarColor()# /*{a-bar-background-start}*/, ###getNavBarColor()# /*{a-bar-background-end}*/);
}
</cfoutput>