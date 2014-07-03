function changeBG(imgNum){

	function displayImage(image) {
		// document.getElementById("img").src = image;
		document.getElementById("container").style.backgroundImage = "url(" + image + ")";
	}

	var DateDiff = {

    	inDays: function(d1, d2) {
       		var t2 = d2.getTime();
        	var t1 = d1.getTime();
        	return parseInt((t2-t1)/(24*3600*1000));
    	},

    	inWeeks: function(d1, d2) {
        	var t2 = d2.getTime();
        	var t1 = d1.getTime();

        	return parseInt((t2-t1)/(24*3600*1000*7));
    	},

    	inMonths: function(d1, d2) {
        	var d1Y = d1.getFullYear();
	        var d2Y = d2.getFullYear();
    	    var d1M = d1.getMonth();
        	var d2M = d2.getMonth();

        	return (d2M+12*d2Y)-(d1M+12*d1Y);
    	},

    	inYears: function(d1, d2) {
        	return d2.getFullYear()-d1.getFullYear();
    	}
	}

	// var dString = "February, 10, 2013";
	// var d1 = new Date(dString);
	// var d2 = new Date();
 //    var t2 = d2.getTime();
 //    var t1 = d1.getTime();
 //    var diff = parseInt((t2-t1)/(24*3600*1000));

	var images = [], x = -1;
	images[0] = "img/AnniversaryBG.jpg";
	images[1] = "img/NYBG.jpg";
	images[2] = "img/RoadTripBG.jpg";

	if(imgNum < 3)	{	
		displayImage(images[imgNum]);
		e=document.getElementById("bg2");
		e.innerHtml="";
		btn0=document.getElementById("btn0");
		btn1=document.getElementById("btn1");
		btn2=document.getElementById("btn2");
		if(imgNum = 0)	{
			btn0.style.background = "#929292";
			btn1.style.background = "#f4f4f4";
			btn2.style.background = "#f4f4f4";
		}
		if(imgNum = 1)	{
			btn0.style.background = "#f4f4f4";
			btn1.style.background = "#929292";
			btn2.style.background = "#f4f4f4";
		}
		if(imgNum = 2)	{
			btn0.style.background = "#f4f4f4";
			btn1.style.background = "#f4f4f4";
			btn2.style.background = "#929292";
		}

	}
	// else	{
	// 	document.getElementById("container").style.backgroundImage = "none";	
	// 	e=document.getElementById("bg2");
	// 	e.innerHtml=diff;
	// 	document.write("<br />Number of <b>days</b> since "+dString+": "+DateDiff.inDays(d1, d2));
	// }
}