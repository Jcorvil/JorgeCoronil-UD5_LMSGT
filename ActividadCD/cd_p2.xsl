<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <STYLE>
                h1 { font-family: Arial,Univers,sans-serif;
                    font-size: 35pt }
                table{ margin: 30px;
                        border-style: solid;
                        border-width: 5px;
                        border-color: #BEDDFF}
                #contenido{border-style: solid;
                        border-width: 5px;
                        border-color: #BEDDFF}
            </STYLE>
            <body>
                <h1>Lista de CDs</h1>
                    <table>
                        <tr bgcolor="#BEDDFF">
                            <th>Album</th>
                            <th>Artista</th>
                            <th>Canciones</th>
                            <th>Discografica</th>
                            <th>Año publicación</th>
                        </tr>
                        <xsl:for-each select="listaCDs/cd">
                        <xsl:if test="artista = 'Gudang'">
                            <tr id="contenido">
                                <td><xsl:value-of select="tituloAlbum"/></td>
                                <td><xsl:value-of select="artista"/></td>
                                <td>
                                    <ul>
                                        <xsl:for-each select="canciones/cancion">
                                        <li>
                                          <xsl:value-of select="."/>
                                        </li>
                                      </xsl:for-each>
                                    </ul>
                                </td>
                                <td><xsl:value-of select="discografica"/></td>
                                <td><xsl:value-of select="annoPublicacion"/></td>
                            </tr>
                        </xsl:if>
                        </xsl:for-each>
                    </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>