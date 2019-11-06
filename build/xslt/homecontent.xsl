<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:import href="slider.xsl"/>
    <xsl:import href="comments.xsl"/>
    <xsl:import href="director.xsl"/>
    <xsl:import href="alerts.xsl"/>
    <xsl:import href="opros.xsl"/>

    <xsl:template name="homecontent">
        <xsl:call-template name="slider" />
        <xsl:call-template name="director" />
        <xsl:call-template name="alerts" />
        <xsl:call-template name="opros" />
        <xsl:call-template name="comments" />
    </xsl:template>

</xsl:stylesheet>