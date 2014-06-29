function bgCycle(){

	function displayImage(image) {
		// document.getElementById("img").src = image;
		document.getElementById("container").style.backgroundImage = "url(image)";
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

	var images = [], x = -1;
	images[0] = "img/NYBG.jpg";
	images[1] = "img/RoadTripBG.jpg";
	images[2] = "img/NYBG.jpg";

	startTimer();
}
window.onload=bgCycle;