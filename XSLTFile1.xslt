<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
    <xsl:output method="xml" indent="yes"/>

    <xsl:template match="@* | node()">
        <xsl:copy>
            <xsl:apply-templates select="FlowerPlanet | Flower"/>
        </xsl:copy>
      <body>
        <table>
          <tr>
            <th>Name</th>
            <th>Salary</th>
            <th>Designation</th>
          </tr>
          <xsl:for-each select="Flower">
            <tr>
              <td>
                <xsl:value-of select="Id"/>
              </td>
              <td>
                <xsl:value-of select="Name"/>
              </td>
              <td>
                <xsl:value-of select="Color"/>
              </td>
              <td>
                <xsl:value-of select="Price"/>
              </td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </xsl:template>
</xsl:stylesheet>
