<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:import href="topline.xsl"/>
<xsl:import href="head.xsl"/>
<xsl:import href="leftmenu.xsl"/>

<xsl:template name="StructuraHTML">

    <div id="wrapper">

        <xsl:call-template name="TopLine" />
        <xsl:call-template name="Head" />

        <div class="main">
            <div class="container">
                <div class="sidebar">
                    <div class="scroll-block">
                        <xsl:call-template name="LeftMenu" />

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
                    </div>
                </div>



                <div class="main-content">

                    <div class="breads">
                        <a href="">Главная</a>
                        <span class="sep"></span>
                        <a href="">Информационная безопасность</a>
                        <span class="sep"></span>
                        <a href="">Обучающимся</a>
                        <span class="sep"></span>
                        <span class="current">Пример внутренней страницы</span>
                    </div>

                    <h1 class="page-title"><xsl:value-of select="$pagename"/></h1>

                    <xsl:call-template name="Content" />
                </div>
            </div>
        </div>

        <div class="footer">
            <div class="container">
                <div class="text">
                    <p>Дата последнего обновления страницы <xsl:value-of select="EditPasport/Eduinfo/Created"/></p>
                    <p>Сайт создан по технологии <a href="#">«Конструктор сайтов e-Publish»</a></p>
                </div>
            </div>
        </div>

        <div class="sv_settings text-center" id="sv_settings">
            <span>Размер шрифта
                <span class="fs-outer">
                    <button class="fs-n" id="fs-n">А</button>
                    <button class="fs-m" id="fs-m">А</button>
                    <button class="fs-l" id="fs-l">А</button>
                </span>
            </span>

            <span>Цветовая схема
                <span class="cs-outer">
                    <button class="cs-bw" id="cs-bw">А</button>
                    <button class="cs-wb" id="cs-wb">А</button>
                    <button class="cs-bb" id="cs-bb">А</button>
                    <button class="cs-gb" id="cs-gb">А</button>
                    <button class="cs-yg" id="cs-yg">А</button>
                </span>
            </span>
        </div>

    </div>


</xsl:template>



</xsl:stylesheet>
