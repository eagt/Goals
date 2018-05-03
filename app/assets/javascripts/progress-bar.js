(function($){
// For turbolinks 5.0 you must use the turbolinks:load event, 
// which is called the first time on page load and every time on a turbolink visit
	document.addEventListener("turbolinks:load", function() { 

	   	var comp = $(".progress #progress-bar").text()
	    var a = $(".progress #progress-bar").css("width", comp)
	    if( comp == "0% "){
		        a.css('color', '#0a0909')
		    }
		 else {
		 	a.css('color','#ffffff')
		 }	
	})		

})(jQuery)

