$(document).ready(function() {
  $('#fbsharepost').click(function(e){
		e.preventDefault();
	 	var sharer = "https://www.facebook.com/sharer/sharer.php?u=";
		window.open(sharer + location.href, 'sharer', "menubar=no,toolbar=no,resizable=yes,scrollbars=yes,width=626,height=436");
		return false;
	});
	$('#twittersharepost').click(function(e){
		e.preventDefault();
	 	var sharer = "https://twitter.com/share";
		window.open(sharer, 'Share on Twitter', "menubar=no,toolbar=no,resizable=yes,scrollbars=yes,width=500,height=500");
		return false;
	});
	$('#googlesharepost').click(function(e){
		e.preventDefault();
	 	var url = "https://plus.google.com/share?url=";
		window.open(url+ location.href, 'Share on Twitter', 'menubar=no,toolbar=no,resizable=yes,scrollbars=yes,height=600,width=600');
		return false;
	});
	$('#fbshare').click(function(e){
		e.preventDefault();
	 	var sharer = "https://www.facebook.com/sharer/sharer.php?u=";
  	var href = $(this).attr('href');
		window.open(sharer + href, 'sharer', "menubar=no,toolbar=no,resizable=yes,scrollbars=yes,width=626,height=436");
		return false;
	});
	$('#twittershare').click(function(e){
		e.preventDefault();
		var href = $(this).attr('href');
	 	var sharer = "https://twitter.com/share?url=";
		window.open(sharer+href, 'Share on Twitter', "menubar=no,toolbar=no,resizable=yes,scrollbars=yes,width=500,height=500");
		return false;
	});
	$('#googleshare').click(function(e){
		e.preventDefault();
		var href = $(this).attr('href');
	 	var url = "https://plus.google.com/share?url=";
		window.open(url+ href, 'Share on Twitter', 'menubar=no,toolbar=no,resizable=yes,scrollbars=yes,height=600,width=600');
		return false;
	});

});