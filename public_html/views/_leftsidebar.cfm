<cfoutput>
        #linkto(text="Close", data_rel="close", data_role="button", data_mini="true", data_icon="delete", data_iconpos="right")#
	<ul data-role="listview" data-inset="true" data-transition="flip">
        #includePartial("/more")#
    </ul>  

<a href="##popupLogin" data-rel="popup" data-position-to="window" data-role="button" data-inline="true" data-icon="check" data-theme="a" data-transition="pop">Subscribe me</a>

<div data-role="popup" id="popupMenu" data-theme="a">
    <div data-role="popup" id="popupLogin" data-theme="a" class="ui-corner-all">
    	<a href="##" data-rel="back" data-role="button" data-theme="a" data-icon="delete" data-iconpos="notext" class="ui-btn-right">Close</a>
		#startFormTag(controller="subscriptions", action="create")#
            <div style="padding:10px 20px;">
              <h3>Send guides to me at...</h3>
              <label for="em" class="ui-hidden-accessible">Email Address:</label>
              #textFieldTag(name='email', placeholder="Email Address", id="em")#
              <label for="fn" class="ui-hidden-accessible">First Name:</label>
              #textFieldTag(name='fname', placeholder="First Name", id="fn")#
              <label for="ln" class="ui-hidden-accessible">First Name:</label>
              #textFieldTag(name='lname', placeholder="Last Name", id="ln")#
              <button type="submit" data-theme="b" data-icon="check">Subscribe</button>
            </div>
		#endFormTag()#
    </div>
</div>
</cfoutput>