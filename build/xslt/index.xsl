<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:import href="scriptandstyle.xsl"/>
    <xsl:variable name="pagename" >Главная страница</xsl:variable>

    <html>
        <head>
            <title>Главная страница</title>

            <xsl:call-template name="ScriptsAndCSS" />

        </head>

        <body>

            <xsl:call-template name="StructuraHTML" />

        </body>
    </html>
</xsl:stylesheet>