<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template name="alerts">
        <xsl:if test="count(EditPasport/Eduinfo/Anons/item) > 0">
            <div class="home-main-block alert-block">
                <div class="big-title-block">Объявления</div>
                <div class="flex-block">
                    <xsl:for-each select="EditPasport/Eduinfo/Anons/item">
                        <div class="item home-block">
                            <div class="title-block"><xsl:value-of select="Name"/></div>
                            <div class="text-style">
                                <p><xsl:value-of select="ItemName"/></p>
                            </div>
                        </div>
                    </xsl:for-each>
                </div>
            </div>
        </xsl:if>
    </xsl:template>

</xsl:stylesheet>