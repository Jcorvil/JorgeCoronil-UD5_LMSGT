<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <STYLE>
                h1{
                    font-size: 35pt;
                    text-align: center;
                }
                #tabla{
                    margin-left: auto;
                    margin-right: auto;
                }
                #cabecera{
                    text-align: center
                }
                #contenido{
                    bgcolor: #
                }
            </STYLE>
            <body>
                <h1>Convocatorias</h1>
                <table border="1" id="tabla">
                    <tr id="cabecera">
                        <th colspan="3">Datos</th>
                        <th colspan="4">Notas</th>
                    </tr>
                    <tr bgcolor="#2DE6D5">
                        <th>Nombre</th>
                        <th>Apellidos</th>
                        <th>Matriculas</th>
                        <th>Cuestionarios</th>
                        <th>Tareas</th>
                        <th>Examen</th>
                        <th>Final</th>
                    </tr>
                        <xsl:for-each select="notas/alumno">
                            <xsl:if test="@convocatoria='Junio'">
                                <tr bgcolor="#F7D1F9">
                                    <td><xsl:value-of select="nombre"/></td>
                                    <td><xsl:value-of select="apellidos"/></td>
                                    <td><xsl:value-of select="matricula"/></td>
                                    <td><xsl:value-of select="cuestionarios"/></td>
                                    <td><xsl:value-of select="tareas"/></td>
                                    <td><xsl:value-of select="examen"/></td>
                                    <td>
                                        <xsl:choose>
                                            <xsl:when test="final &gt;=9">
                                                <td><xsl:text>Sobresaliente</xsl:text></td>
                                            </xsl:when>
                                            <xsl:when test="final &gt;=7">
                                                <td><xsl:text>Notable</xsl:text></td>
                                            </xsl:when>
                                            <xsl:when test="final &gt;=6">
                                                <td><xsl:text>Bien</xsl:text></td>
                                            </xsl:when>
                                            <xsl:when test="final &gt;=5">
                                                <td><xsl:text>Suficiente</xsl:text></td>
                                            </xsl:when>
                                            <xsl:when test="final &lt;=4">
                                                <td><xsl:text>Suspenso</xsl:text></td>
                                            </xsl:when>
                                        </xsl:choose>
                                    </td>
                                </tr>
                            </xsl:if>
                        </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>