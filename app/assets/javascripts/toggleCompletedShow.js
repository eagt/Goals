(function($) {
	document.addEventListener("turbolinks:load", function() {
		var array = $('.showStatus').map(function () {
        return $.trim($(this).text()) // Use trim to remove leading and trailing spaces
        }).get()
        var strCompleted = jQuery.inArray("Completed", array)
        var trs = $('.tasks tr').length
		if( trs > 0 && strCompleted != -1 ){
			$(".showCompletedTasks").show()
			$(".showCompletedTasks").click(function(){ 
				$(this).toggleClass("CompletedTasks")
				$(this).text(function(i, v){
		    	return v == 'Hide Completed Tasks' ? 'Show Completed Tasks' : 'Hide Completed Tasks'
				})		
				$(".showStatus").each(function (){	
				var showStatus = $(this).text()
				var closesttr = $(this).closest('tr')
					if (showStatus == "Completed") 				
					closesttr.toggle(1000)		
			  	})			
			})
		}
		else {		 
		 $(".showCompletedTasks").hide()		 
		}
	})
})(jQuery)

