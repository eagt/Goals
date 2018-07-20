(function($) {	
    $(document).on('change', '.status', function() {
	    var status = $(this).val(),
	    node_to_change = $(this).closest('.tr-improve-fields').find('.statusValue'); 
	    
	      if(status == 'In Progress')      
	        node_to_change.val(50)
	      else if(status == 'Completed')
	        node_to_change.val(100)
	      else  node_to_change.val(0)
	              
	    });	 
})(jQuery);