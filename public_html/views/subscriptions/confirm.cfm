<div class="container" id="swipeable">
<cfoutput>
<p>Please use this link to confirm your subscription:</p>
#linkto(route="confirm", key=params.key, onlyPath=false)#

</cfoutput>
</div>