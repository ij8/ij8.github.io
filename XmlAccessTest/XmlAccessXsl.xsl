<?xml version="1.0"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <body>
    <h2>Add Term and Definition</h2>
    <form id="addTerm">
      Term: <input type="text" name="termInput" value=""><br>
      Definition: <input type="text" name="defInput" value=""><br>
      <button type="submit" onclick="addDictionaryResult();">Add</button>
    </form>
    <h2>Terms</h2>
    <table border="1">
      <tr bgcolor="#9acd32">
        <th>Term</th>
        <th>Definition</th>
      </tr>
      <xsl:for-each select="Root/TermDef">
        <tr>
          <td><xsl:value-of select="Term"/></td>
          <td><xsl:value-of select="Definition"/></td>
        </tr>
      </xsl:for-each>
    </table>
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
    
    function addDictionaryResult()  {
      xmlDoc = loadXmlDoc("");
      
      //Form Elements
      var x = document.getElementById("addTerm");
      termInput = x.elements[0].value;
      defInput = x.elements[1].value; 
      
      //Initialize the new TermDef node
      newNode=xmlDoc.createElement("TermDef");
      newTerm=xmlDoc.createElement("Term");
      newTerm.nodeValue=termInput;
      newDef=xmlDoc.createElemtn("Definition");
      newTerm.nodeValue=defInput;
      newNode.appendChild(newTerm);
      newNode.appendChild(newDef);
      
      root = xmlDoc.getElementsByTagName("Root")[0];
      root.appendChild(newNode);
    }
  </xsl:comment>
</script>
  </body>
  </html>
</xsl:template>


</xsl:stylesheet>
