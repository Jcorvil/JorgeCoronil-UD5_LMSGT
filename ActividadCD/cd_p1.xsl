<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <h1>Lista de CDs</h1>
                    <table>
                        <tr bgcolor="BEDDFF">
                            <th>Album</th>
                            <th>Artista</th>
                            <th>Canciones</th>
                            <th>Discografica</th>
                            <th>Año publicación</th>
                        </tr>
                        <xsl:for-each select ="listaCDs/cd">
                            <tr>
                                <td><xsl:value-of select="tituloAlbum"/></td>
                                <td><xsl:value-of select="artista"/></td>
                                <td><xsl:value-of select="canciones"/></td>
                                <td><xsl:value-of select="discografica"/></td>
                                <td><xsl:value-of select="annoPublicacion"/></td>
                            </tr>
                        </xsl:for-each>
                    </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>