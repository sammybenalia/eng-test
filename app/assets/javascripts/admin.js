


$(document).ready(function() {
  $("#post_description").keyup(function(){
	  $("#count").text("Characters left: " + (160 - $(this).val().length));
	});
	
});