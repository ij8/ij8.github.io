<?xml version="1.0"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <body>
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
  </body>
  </html>
</xsl:template>

</xsl:stylesheet>
