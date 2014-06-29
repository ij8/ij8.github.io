function bgCycle(){

	function displayImage(image) {
		// document.getElementById("img").src = image;
		// document.getElementById("container").style.backgroundImage = "url(" + image + ")";
		fadeOut(document.getElementById("container"));
		window.setTimeout(function(){
			document.getElementById("container").style.backgroundImage = "url(" + image + ")";
			fadeIn(document.getElementById("container"));
		},500);

	}

	function displayNextImage() {
		x = (x == images.length - 1) ? 0 : x + 1;
		displayImage(images[x]);           
	}

	function displayPreviousImage() {
		x = (x <= 0) ? images.length - 1 : x - 1;
		displayImage(images[x]);           
	}

	function startTimer() {
		setInterval(displayNextImage, 3000);
	}

	function fadeOut(element) {
    	var op = 1;  // initial opacity
    	var timer = setInterval(function () {
    		if (op <= 0.1){
    			clearInterval(timer);
    			element.style.display = 'none';
    		}
    		element.style.opacity = op;
    		element.style.filter = 'alpha(opacity=' + op * 100 + ")";
    		op -= op * 0.1;
    	}, 50);
	}

	function fadeIn(element)	{
		var op = 0.1;  // initial opacity
    	var timer = setInterval(function () {
    		if (op >= 1){
    			clearInterval(timer);
    			element.style.display = '';
    		}
    		element.style.opacity = op;
    		element.style.filter = 'alpha(opacity=' + op * 100 + ")";
    		op += .05;
    	}, 50);
	}

	var images = [], x = -1;
	images[0] = "img/NYBG.jpg";
	images[1] = "img/RoadTripBG.jpg";
	images[2] = "img/NYBG.jpg";

	startTimer();
}
window.onload=bgCycle;