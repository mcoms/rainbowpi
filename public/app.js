$(function(){
	$('#colour').change(function(){
	  $.post('/display', {colour: $('#colour').val()}, function(res){
			if (res.success)
			{
	  		alert(res.response);
			}
			else
			{
				alert('There was a problem.');
			}
	  });
	});
});