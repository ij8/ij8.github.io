<?xml version="1.0"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <body>
    <h2>Search for a Term</h2>

    <form id="searchTerm">
      <input type="text" name="query" id="termInput"/><br/>
      <!-- <button type="submit" onclick="searchTermDef();">Search</button> -->
      <button onclick="searchTermDef2();">Search</button>
    </form>

    <xsl:variable name="queryVal" select="termInput"/>
    
    <div class="main-container">
      <div>Hello World</div>
      <div><xsl:value-of select="termInput"/></div><br/>
      
      <div id="term"><xsl:value-of select="Term"/></div>
      <div id="definition"><xsl:value-of select="Definition"/></div>
      
      <!-- <xsl:for-each select="Root/TermDef">
        <xsl:variable name="currentTerm"><xsl:value-of select="Term"/></xsl:variable> -->
        <!-- <div><xsl:value-of select="$currentTerm"/></div> -->
        <!-- <xsl:if test="$currentTerm = $queryVal">
          <div id="term"><xsl:value-of select="Term"/></div>
          <div id="definition"><xsl:value-of select="Definition"/></div>
        </xsl:if>
      </xsl:for-each> -->
    
    </div>

    <style type="text/css">
      <xsl:comment>
      </xsl:comment>
    </style>

    <script type="text/javascript">
  <xsl:comment>
    function loadXMLDoc(filename) {
      if (window.XMLHttpRequest)
      {
        xhttp=new XMLHttpRequest();
      }
      else // code for IE5 and IE6
      {
        xhttp=new ActiveXObject("Microsoft.XMLHTTP");
      }
      xhttp.open("GET",filename,false);
      xhttp.send();
      return xhttp.responseXML;
    }

    function searchTermDef()  {
      if(window.XMLHttpRequest) {
        xmlhttp=new XMLHttpRequest();
      }
      else{
        xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
      }
      xmlhttp.open("GET","GuruDictionary.xml",false);
      xmlhttp.send();
      xmlDoc=xmlhttp.responseXML;

      searchTerm=document.getElementById("termInput").value;
      <!-- searchTerm=<xsl:value-of select="termInput"/> -->
      e=document.getElementById("term");
      f=document.getElementById("definition");
      var x = xmlDoc.getElementsByTagName("TermDef");
      for (i=0;i&lt;x.length;i++)  {
        if(x[i].getElementsByTagName("Term")[0].childNodes[0].nodeValue.toLowerCase() == 'searchTerm.toLowerCase()')  {
          e.innerHTML = x[i].getElementsByTagName("Term")[0].childNodes[0].nodeValue;
          f.innerHTML = x[i].getElementsByTagName("Definition")[0].childNodes[0].nodeValue;
          break;
        }
      }
    }

    function searchTermDef2()  {
      searchTerm=document.getElementById("termInput").value;
      <!-- searchTerm=<xsl:value-of select="termInput"/> -->
      e=document.getElementById("term");
      f=document.getElementById("definition");
      e.innerHTML = searchTerm;
      <!-- var x = xmlDoc.getElementsByTagName("TermDef");
      for (i=0;i&lt;x.length;i++)  {
        if(x[i].getElementsByTagName("Term")[0].childNodes[0].nodeValue.toLowerCase() == 'searchTerm.toLowerCase()')  {
          e.innerHTML = x[i].getElementsByTagName("Term")[0].childNodes[0].nodeValue;
          f.innerHTML = x[i].getElementsByTagName("Definition")[0].childNodes[0].nodeValue;
          break;
        }
      } -->
    }
    window.onload=searchTermDef2;


    function addDictionaryResult()  {
      xmlDoc = loadXMLDoc("GuruDictionary.xml");
      
      //Form Elements
      var x = document.getElementById("addTerm");
      termInput = x.elements[0].value;
      defInput = x.elements[1].value; 
      
      //Initialize the new TermDef node
      /*
      newNode=xmlDoc.createElement("TermDef");
      newTerm=xmlDoc.createElement("Term");
      newTerm.nodeValue=termInput;
      newDef=xmlDoc.createElement("Definition");
      newTerm.nodeValue=defInput;
      newNode.appendChild(newTerm);
      newNode.appendChild(newDef);
      
      
      root = xmlDoc.getElementsByTagName("Root")[0];
      root.appendChild(newNode);
      */
      
      y=xmlDoc.getElementsByTagName("TermDef")[0];
      xmlDoc.documentElement.removeChild(y);
    }

  </xsl:comment>
</script>
  </body>
  </html>
</xsl:template>


</xsl:stylesheet>
