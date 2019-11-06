<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:import href="head.xsl"/>
    <xsl:import href="container.xsl"/>



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