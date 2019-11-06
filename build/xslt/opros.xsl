<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template name="opros">
        <xsl:if test="count(EditPasport/Eduinfo/Poll/item) > 0">
            <div class="home-main-block opros-block">
                <div class="big-title-block">Голосования</div>
                <div class="flex-block">
                    <xsl:for-each select="EditPasport/Eduinfo/Poll/item">
                        <xsl:variable name="url" disable-output-escaping="yes"><xsl:value-of select="URL"/><![CDATA[&]]>skin=<xsl:value-of select="$design"/></xsl:variable>
                        <iframe marginheight="0" src="{$url}" marginwidth="0" scrolling="auto" height="200" frameborder="0" class="golosfrm item "></iframe>
                    </xsl:for-each>
                </div>
            </div>
        </xsl:if>
    </xsl:template>

</xsl:stylesheet>