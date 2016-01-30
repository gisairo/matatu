(function ($) {
	var api_base_url = 'http://sites.local/matatu/main/look/';
	$('#btnSearch').click(function (e) {
		var sk = $('#searchkey').val();
		// console.log(sk);
		e.preventDefault();
		$.getJSON(api_base_url+sk, function(sets){
			if (sets.length > 0) {
				$('#result').html('');
				for (var i = 0; i < sets.length; i++) {
					sets[i];
					addItem('set', sets[i]);
				};

			}else{
				$('#result').html('');
				$('#result').append('<div class="list_item">'+'No results'+'</div> ');
			}
			// addItem('set', sets);
			// console.log(sets);
			 
		});
	});
	function addItem (item, itemData) {
		switch(item){
			case 'set':
				// console.log(itemData);
				
					$('#result').append('<div class="list_item">'+itemData.route_short_name+'</div> ');
					$('#result').append('<div class="list_item">'+itemData.route_long_name+'</div> ');
					$('#result').append('<div class="list_item">'+itemData.route_desc+'</div> ');
				
				// $('#result').html('');
				
				
			break;
		}
	}
})(jQuery);