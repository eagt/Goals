(function($) {
	document.addEventListener("turbolinks:load", function() {
		$(".complete").each(function() {
	 	var completedVal = $(this).html()
	 	var a = $(this).closest('tr')
	 	console.log(completedVal)
		 	if (completedVal == "100%"){
		 		a.css("background-color", "#e2f6d5")
		 	} else if (completedVal >= "10%" && completedVal <= "99%"){
		 		a.css("background-color", "#f8f2e0")
		 	} else if (completedVal >= "0%" && completedVal <= "9%"){
		 		a.css("background-color", "#f5e5e4")
		 	} else {
		 		a.css("background-color", "#ffffff")
		 	}
		})

		$(".complete").each(function() {
	 	var completedVal = $(this).html()
	 	var CompleteReplace = completedVal.replace("%", "") // Remove the (%) sign
	 	var a = $(this).closest('tr')
	 	console.log(CompleteReplace)

		 	if (CompleteReplace == 100){
		 		a.css("background-color", "#e2f6d5")
		 	} else if (CompleteReplace >= 10 && CompleteReplace <= 99){
		 		a.css("background-color", "#f8f2e0")
		 	} else if (CompleteReplace >= 0 && CompleteReplace < 9){
		 		a.css("background-color", "#f5e5e4")
		 	} else {
		 		a.css("background-color", "#ffffff")
		 	}
		})
	})
})(jQuery)























