<script src="http://code.jquery.com/jquery-1.8.3.min.js"></script>
<script>
	$(function() {
		var $input = $('form input[type="text"]');
		$input.keyup(function() {
			var prefix = $input.val();
			if (prefix) {
				$('#result').load('/suggest/' + prefix);
			}
		});
	});
</script>
<form>
<input type="text"/>
<input type="submit"/>
</form>
<ul id='result'/>
