(function($) {
	document.addEventListener("turbolinks:load", function() {
		var array = $('.complete').map(function () {
        return $.trim($(this).text()) // Use trim to remove leading and trailing spaces
        }).get()
        var strComplete  = jQuery.inArray("100%", array)
        var trs = $('.lists tr').length
		if( trs > 0 && strComplete != -1 ){
			$(".showCompletedLists").show() 
			$(".showCompletedLists").click(function(){ 
				$(this).toggleClass("CompletedLists")
				$(this).text(function(i, b){
		    	return b == 'Hide Completed Lists' ? 'Show Completed Lists' : 'Hide Completed Lists'
				})	
				$(".complete").each(function (){	
				var complete = $(this).text()
				var closesttr = $(this).closest('tr')
					if (complete == "100%") 				
					closesttr.toggle(1000)		
			  	})			
			})
		}	
		else {
			$(".showCompletedLists").hide() 
		}
	})
})(jQuery)



















