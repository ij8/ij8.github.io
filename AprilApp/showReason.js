function showReason() {
  if (window.XMLHttpRequest)
  {// code for IE7+, Firefox, Chrome, Opera, Safari
    xmlhttp=new XMLHttpRequest();
  }
  else
  {// code for IE6, IE5
    xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
  }
  xmlhttp.open("GET","reasons.xml",false);
  xmlhttp.send();
  xmlDoc=xmlhttp.responseXML; 
	
	e=document.getElementById("reason");
	var x = xmlDoc.getElementsByTagName("REASON");
  var rand = Math.floor((Math.random() * x.length));
	e.innerHTML = x[rand].childNodes[0].nodeValue;


}
window.onload=showReason;
