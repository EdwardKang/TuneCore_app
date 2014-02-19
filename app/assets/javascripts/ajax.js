$(document).ready(function(event){
	$('#song-search').on("ajax:success", function(event, data){
		var $div = $('.table');
		$div.empty();
		$div.append(data);
	});
	
});