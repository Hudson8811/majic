<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:import href="sidemenu.xsl"/>
    <xsl:import href="news.xsl"/>

    <xsl:template name="sidebar">

        <div class="sidebar">
            <div class="scroll-block">
                <xsl:call-template name="sidemenu" />

                <xsl:call-template name="news" />
            </div>
        </div>

    </xsl:template>

</xsl:stylesheet>