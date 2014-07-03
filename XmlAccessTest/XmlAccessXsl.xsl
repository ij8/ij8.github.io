<?xml version="1.0"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <body>

    <div class="main-container">

      <div class="main-header">Search for a Term</div>
      <div class="search-row">
        <form id="searchTerm">
          <input type="text" name="query" id="termInput"/>
          <input type="button" onclick="searchTermDef();" value="Search"/>
        </form>
      </div>

      <div class="main-body">
        <div id="term"></div>
        <div id="definition"></div>
      </div>

    </div>

    <!-- This is the Information Contained in the XML File -->
    <div class="main-container">
      <div class="main-header">List of Stored Terms</div>
      <table border="1">
        <tr bgcolor="rgb(56,100,180)">
          <th>Term</th>
          <th>Definition</th>
        </tr>
        <xsl:for-each select="Root/TermDef">
          <xsl:variable name="currentTerm"><xsl:value-of select="Term"/></xsl:variable>
          <xsl:variable name="null"/>
          <xsl:if test="not($currentTerm) = $null">
            <tr style="height:25px; margin:10px;">
              <td><xsl:value-of select="Term"/></td>
              <td><xsl:value-of select="Definition"/></td>
            </tr>
          </xsl:if>
        </xsl:for-each>
      </table>
    </div>
    <style type="text/css">
      <xsl:comment>
html, body, div, span, h1, h2, h3, h4, h5, h6, p, ol, ul, li, blockquote, pre, form, label, legend, table, caption, tbody, tfoot, thead, tr, th, td, article, aside, canvas, details, embed, figure, figcaption, footer, header, hgroup, menu, nav, output, section, summary, audio, video {
  margin: 0;
  padding: 0;
  border: 0;
  font-size: 100%;
  vertical-align: basseline;
}

body, p {
  line-height: 1.2;
  font-family: Georgia, serif;
  font-size: 10pt;
  /*This is blue*/
  /*background-color:#B3B6FF;*/
  /*This is Beige*/
  background-color:#FCF7BD;
  /*This is white*/ 
  /*background-color: #FFFFFF;*/
}

.main-container {
  height: 150px;
  width:1000px;
  margin-top: 50px;
  /*margin-bottom: 50px;*/
  margin-left: auto;
  margin-right: auto;
  text-align: center;
  vertical-align: center;
  font-family: Tahoma;
  /*background-color:#B3B6FF;*/
  background-size: 1000px auto;
}

.main-header, .main-body, #bg2  {
  font-family: Tahoma;
}

.main-header  {
  font-size:20pt;
  height: 40px;
  width:500px;
  margin-left: auto;
  margin-right: auto;
  text-align: center;
  vertical-align: center;
}

.main-body  {
  margin: 0px 10px 0px 10px;
  font-size: 10pt;
  height: 100px;
}
.search-row {
  width:180px;
  height:30px;
  margin-left:auto;
  margin-right:auto;
  text-aign:center;
  vertical-alrign:center;
}
input[type=button]  {
  margin: 0px 0px 10px 10px
  border-radius: 5px;
  border: 0;
  height:25px;
  font-family: Tahoma;
  background: rgb(56,100,180);
  float:left;
}
input[type=text]  {
  float:left;
}

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
      xmlDoc = loadXMLDoc("GuruDictionary.xml");
      searchTerm=document.getElementById("termInput").value;
      e=document.getElementById("term");
      f=document.getElementById("definition");

      <!-- e.innerHTML = searchTerm; -->

      var x = xmlDoc.getElementsByTagName("TermDef");
      for (i=0;i&lt;x.length;i++)  {
        if(x[i].getElementsByTagName("Term")[0].childNodes[0].nodeValue.toLowerCase() == searchTerm.toLowerCase())  {
          e.innerHTML = x[i].getElementsByTagName("Term")[0].childNodes[0].nodeValue;
          f.innerHTML = x[i].getElementsByTagName("Definition")[0].childNodes[0].nodeValue;
          break;
        }
      }
    }


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
