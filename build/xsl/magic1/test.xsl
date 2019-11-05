<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:include href="scriptsandcss.xsl"/>
    <xsl:template match="/">
        <content>
            <xsl:text>Today is </xsl:text>
             <xsl:call-template name="ScriptsAndCSS" />
            <xsl:text>.</xsl:text>
        </content>
    </xsl:template>
</xsl:stylesheet>
