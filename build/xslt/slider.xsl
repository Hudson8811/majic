<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template name="slider">
        <xsl:choose>
            <xsl:when test="not(EditPasport/Eduinfo/Slider)">
            </xsl:when>
            <xsl:otherwise>

                <div class="home-slider">
                    <div class="swiper-container">
                        <div class="swiper-wrapper">
                            <xsl:for-each select="EditPasport/Eduinfo/Slider/Slide/item">
                                <xsl:variable name="link"><xsl:value-of select="LinkFile/Link"/></xsl:variable>
                                <xsl:variable name="alt"><xsl:value-of select="Name"/></xsl:variable>
                                <xsl:if test="$link!=''">
                                    <div class="swiper-slide"><img src="{$link}" alt="{$alt}" title="{$alt}" /></div>
                                </xsl:if>
                            </xsl:for-each>
                        </div>
                        <div class="slider-control">
                            <div class="slider-pagination"></div>
                            <div class="slider-btns">
                                <div class="slider-button-prev"></div>
                                <div class="slider-button-next"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </xsl:otherwise>
        </xsl:choose>

    </xsl:template>

</xsl:stylesheet>