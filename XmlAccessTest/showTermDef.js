function showTermDef()	{
	if(window.XMLHttpRequest)	{
		xmlhttp=new XMLHttpRequest();
	}
	else{
		xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.open("GET","GuruDictionary.xml",false);
	xmlhttp.send();
	xmlDoc=xmlhttp.responseXML;
	
	e=document.getElementById("term");
	f=document.getElementById("definition");
	var x = xmlDoc.getElementsByTagName("TermDef");
	for (i=0;i<x.length;i++)	{
		if(x[i].getElementsByTagName("Term")[0].childNodes[0].nodeValue.toLowerCase() == 'public records')	{
			e.innerHTML = x[i].getElementsByTagName("Term")[0].childNodes[0].nodeValue;
			f.innerHTML = x[i].getElementsByTagName("Definition")[0].childNodes[0].nodeValue;
			break;
		}

	}

}
window.onload=showTermDef;
