<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <h1>Mi biblioteca personal</h1>
                <xsl:apply-templates/>
                    <table>
                        <tr bgcolor="#BEDDFF">
                            <th>ISBN</th>
                            <th>Título</th>
                            <th>Autor</th>
                            <th>Precio</th>
                            <th>Nº Páginas</th>
                        </tr>
                        <xsl:for-each select="libreria/libro">
                            <tr>
                                <td><xsl:value-of select="isbn"/></td>
                                <td><xsl:value-of select="titulo"/></td>
                                <td><xsl:value-of select="autor"/></td>
                                <td><xsl:value-of select="precio"/></td>
                                <td><xsl:value-of select="numPaginas"/></td>
                            </tr>
                        </xsl:for-each>
                    </table>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="libro">
        <tr>
            <td><xsl:apply-templates select="numPaginas"/></td>
        </tr>
    </xsl:template>

    <xsl:template match="numPaginas">
            <td bgcolor="#DB2121"><xsl:value-of select="numPaginas"/></td>
    </xsl:template>
    
</xsl:stylesheet>