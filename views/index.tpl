<script src="http://code.jquery.com/jquery-1.8.3.min.js"></script>
<script>
	$(function() {
		var $input = $('form input[type="text"]');
		$input.keyup(function() {
			$('#result').load('/suggest/' + $input.val());
		});
	});
</script>
<form>
<input type="text"/>
<input type="submit"/>
</form>
<p id='result'>
</p>
