<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
  <html>
  <body>
    <h2>My CD Collection</h2>
    <table border="1">
      <tr bgcolor="#9acd32">
        <th>Title</th>
        <th>Artist</th>
        <th>Year</th>
      </tr>
      <xsl:for-each select="catalog/cd">
        
        <xsl:if test="count(tours) > 0">
          <tr>
            <td><xsl:value-of select="artist/name"/></td>
            <td>
              <table>
                <xsl:for-each select="tours/tour">
                  <tr>
                    <td style="border-bottom: 1px solid black;"><xsl:value-of select="tourcity"/>-<xsl:value-of select="tourplace"/></td>
                  </tr>
                </xsl:for-each>
             </table>
            </td>
          </tr>
          </xsl:if>
        </xsl:for-each>
      
    </table>
  </body>
  </html>
</xsl:template>
</xsl:stylesheet>

