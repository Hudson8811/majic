<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:import href="head.xsl"/>
    <xsl:import href="containerInner.xsl"/>

    <xsl:variable name="design">
        <xsl:value-of select="EditPasport/Eduinfo/Design"/>
    </xsl:variable>

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