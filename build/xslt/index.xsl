<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:import href="head.xsl"/>
    <xsl:import href="containerHome.xsl"/>

    <xsl:variable name="design">
        <xsl:value-of select="EditPasport/Eduinfo/Design"/>
    </xsl:variable>

    <xsl:template name="breads">
        <div class="breads">
            <span class="current">Главная</span>
        </div>
    </xsl:template>

    <xsl:variable name="pagename" >Главная страница</xsl:variable>

    <xsl:template match="/">
        <html>
            <head>

                <xsl:call-template name="head" />

            </head>

            <body>

                <xsl:call-template name="container" />

            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>