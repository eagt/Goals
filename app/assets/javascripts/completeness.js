(function($){
	document.addEventListener("turbolinks:load", function() { 
		$( "#formButton" ).on( "click", function() {
			if ($('#formButton').attr('value') == "Create List"){
				if ($('.nested-fields').length > 0){
					var count = 0
					var sum = 0
					$('.nested-fields .statusValue').each(function (){
						var value = $(this).val();
						count +=1
						var completeness = $('#list_status').val()
						if(!isNaN(value && value.length != 0)) {
							sum += parseFloat(value)		  
							average = (sum / count).toFixed(0)			
						 	completeness = $('#list_status').val(average)
						} 
					})
				}
			 	else {
			 		completeness = $('#list_status').val(0)
			 		 	}				
			}
		})
	})
})(jQuery)		