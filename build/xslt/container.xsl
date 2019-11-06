<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:import href="fixed-header.xsl"/>
    <xsl:import href="header.xsl"/>
    <xsl:import href="sidebar.xsl"/>
    <xsl:import href="footer.xsl"/>
    <xsl:import href="lowsee.xsl"/>
    <xsl:import href="breads.xsl"/>
    <xsl:import href="homecontent.xsl"/>


    <xsl:template name="container">
        <div id="wrapper">

            <xsl:call-template name="fixed-header" />
            <xsl:call-template name="header" />

            <div class="main">
                <div class="container">
                    <xsl:call-template name="sidebar" />

                    <div class="main-content">

                        <xsl:call-template name="breads" />

                        <h1 class="page-title"><xsl:value-of select="$pagename"/></h1>

                        <xsl:call-template name="content" />
                    </div>
                </div>
            </div>

            <xsl:call-template name="footer" />

            <xsl:call-template name="lowsee" />

        </div>
    </xsl:template>


    <xsl:template name="content">
        <xsl:call-template name="homecontent" />
    </xsl:template>

</xsl:stylesheet>