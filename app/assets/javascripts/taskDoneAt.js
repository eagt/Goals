// Get an array of elements and add check if any has a Completed status if so do nothing, hide otherwise. 
(function($) {
	document.addEventListener("turbolinks:load", function() {
		var array = $('.showStatus').map(function () {
        return $.trim($(this).text()) // Use trim to remove leading and trailing spaces
        }).get()
        var strCompleted = jQuery.inArray("Completed", array)
        var trs = $('.tasks tr').length
		if( trs > 0 && strCompleted != -1 ){
			// Do nothing
		}else{
			console.log ("It isn't")
			$(".fineshedOn").hide()
			$(".showDoneAt").hide()
		}
	})

})(jQuery)	