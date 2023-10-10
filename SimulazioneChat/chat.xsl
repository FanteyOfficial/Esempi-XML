<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/xhtml">
    <xsl:template match="/">
        <html>
            <body>
                <h2>Chat</h2>
                <table border="1">
                    <tr bgcolor="#9acd32">
                        <th>Orario</th>
                        <th>Data</th>
                        <th>Content</th>
                        <th>Viewed</th>
                    </tr>
                    <xsl:for-each select="chat/message">
                        <tr>
                            <td><xsl:value-of select="orario"/></td>
                            <td><xsl:value-of select="data"/></td>
                            <td><xsl:value-of select="content"/></td>
                            <td><xsl:value-of select="viewed"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>