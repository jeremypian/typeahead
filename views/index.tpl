<script src="http://code.jquery.com/jquery-1.8.3.min.js"></script>
<script>
	$(function() {
		console.log('initializing');
		var $input = $('form input[type="text"]');
		$input.keydown(function() {
			console.log('form change!');
		});
	});
</script>
<form>
<input type="text"/>
<input type="submit"/>
</form>
