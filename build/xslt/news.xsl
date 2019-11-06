<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template name="news">

        <xsl:if test="count(EditPasport/Eduinfo/NewsTheme/item)>0">
            <div class="rss-news home-block">
            <div class="title-block">RSS Новости</div>
                <xsl:for-each select="EditPasport/Eduinfo/NewsTheme/item">
                    <xsl:variable name="link"><xsl:value-of select="Photo/item/Link"/></xsl:variable>
                    <xsl:variable name="url"><xsl:value-of select="URL"/></xsl:variable>
                    <xsl:choose>
                        <xsl:when test="position()=1">
                            <div class="news full-news">
                                <div class="news-title-row">
                                    <span class="news-title"><xsl:value-of select="Name"/></span>
                                    <span class="news-date"><xsl:value-of select="NewsDate"/></span>
                                </div>
                                <div class="news-content">
                                    <xsl:if test="$link!=''"><img src="{$link}" alt="" /></xsl:if>
                                    <div class="news-text"><xsl:value-of select="ItemName"/></div>
                                    <div class="news-link-row">
                                        <a href="{$url}" class="more">Подробнее >>></a>
                                    </div>
                                </div>
                            </div>
                        </xsl:when>
                        <xsl:otherwise>
                            <div class="news">
                                <div class="news-title-row">
                                    <span class="news-title"><xsl:value-of select="Name"/></span>
                                    <span class="news-date"><xsl:value-of select="NewsDate"/></span>
                                </div>
                                <div class="news-content">
                                    <xsl:if test="$link!=''"><img src="{$link}" alt="" /></xsl:if>
                                    <div class="news-text"><xsl:value-of select="ItemName"/></div>
                                    <div class="news-link-row">
                                        <a href="{$url}" class="more">Подробнее >>></a>
                                    </div>
                                </div>
                            </div>
                        </xsl:otherwise>
                    </xsl:choose>


                </xsl:for-each>
            </div>
        </xsl:if>

    </xsl:template>

</xsl:stylesheet>