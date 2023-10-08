<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
    <html>
        <body>
            <h2>Inventory</h2>
            <table border="1">
                <tr bgcolor="#9acd32">
                    <th>Item Name</th>
                    <th>Level</th>
                    <th>Damage</th>
                    <th>Description</th>
                    <th>Rarity</th>
                </tr>
                <xsl:for-each select="inventory/item">
                <tr>
                    <td><xsl:value-of select="@name"/></td>
                    <td><xsl:value-of select="@lv"/></td>
                    <td><xsl:value-of select="damage"/></td>
                    <td><xsl:value-of select="description"/></td>
                    <td><xsl:value-of select="rarity"/></td>
                </tr>
                </xsl:for-each>
            </table>
        </body>
    </html>
</xsl:template>

</xsl:stylesheet>