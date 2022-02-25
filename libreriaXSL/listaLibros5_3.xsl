<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
    <body>
        <h1>Biblioteca personal de Ana</h1>
        <table>
            <tr bgcolor="#88888888">
                <th>ISBN</th>
                <th>Título</th>
                <th>Autor</th>
                <th>Precio</th>
            </tr>
            <!--<xsl:for-each select="libreria/libro[precio>10]">-->
            <!--<xsl:sort select= "precio"/>-->
            <xsl:for-each select="libreria/libro">
            <xsl:if test="precio &gt; 12">
                <xsl:if test="autor != 'A. Ramos Martín' ">
            <tr>
                <td>
                    <xsl:value-of select = "ISBN"/>
                </td>
                <td>
                    <xsl:value-of select = "titulo"/>
                </td>
                <td>
                    <xsl:value-of select = "autor"/>
                </td>
                <td>
                    <xsl:value-of select = "precio"/>
                </td>
            </tr>
            </xsl:if>
            </xsl:if>
            </xsl:for-each>
        </table>
    </body>
</html>
</xsl:template>
</xsl:stylesheet>