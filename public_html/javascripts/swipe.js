$(function(){
// Bind the swipeHandler callback function to the swipe event on div.box
$( "div#swipeable" ).on( "swipeleft", swipeHandler );
// Callback function references the event target and adds the 'swipe' class to it
function swipeHandler( event ){
window.location = '<cfoutput>#urlFor(route="guide", key=params.key - 1)#</cfoutput>';
}
});
$(function(){
// Bind the swipeHandler callback function to the swipe event on div.box
$( "div#swipeable" ).on( "swiperight", swipeHandler );
// Callback function references the event target and adds the 'swipe' class to it
function swipeHandler( event ){
window.location = '<cfoutput>#urlFor(route="guide", key=params.key + 1)#</cfoutput>';
}
});
