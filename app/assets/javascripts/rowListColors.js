(function($) {
	document.addEventListener("turbolinks:load", function() { 
		$(".showStatusValue").each(function() {
	 	var stval = $(this).html()
	 	var a = $(this).closest('tr')
	 	console.log(stval)
		 	if (stval == 100){
		 		a.css("background-color", "#e2f6d5")
		 	} else if (stval == 50){
		 		a.css("background-color", "#f8f2e0")
		 	} else if (stval == 0){
		 		a.css("background-color", "#f5e5e4")
		 	} else {
		 		a.css("background-color", "#ffffff")
		 	}
		})
	})
})(jQuery);