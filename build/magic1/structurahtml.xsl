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
                <span class="fs-outer low-outer">
                    <button class="fs-n" id="fs-n">А</button>
                    <button class="fs-m" id="fs-m">А</button>
                    <button class="fs-l" id="fs-l">А</button>
                </span>
            </span>

            <span>Шрифт
                <span class="ff-outer low-outer">
                    <button class="ff-n" id="ff-n">Ая</button>
                    <button class="ff-z" id="ff-z">Ая</button>
                </span>
            </span>

            <span>Межсимвольный интервал
                <span class="ls-outer low-outer">
                    <button class="ls-s" id="ls-s">aa</button>
                    <button class="ls-m" id="ls-m">aa</button>
                    <button class="ls-b" id="ls-b">aa</button>
                </span>
            </span>

            <span>Межстрочный интерва
                <span class="lh-outer low-outer">
                    <button class="lh-s lh-s-bg" id="lh-s"></button>
                    <button class="lh-m lh-m-bg" id="lh-m"></button>
                    <button class="lh-b lh-b-bg" id="lh-b"></button>
                </span>
            </span>

            <span>Цветовая схема
                <span class="cs-outer low-outer">
                    <button class="cs-bw" id="cs-bw">А</button>
                    <button class="cs-wb" id="cs-wb">А</button>
                    <button class="cs-bb" id="cs-bb">А</button>
                    <button class="cs-gb" id="cs-gb">А</button>
                    <button class="cs-yg" id="cs-yg">А</button>
                </span>
            </span>

            <span>Изображения
                <span class="img-outer low-outer">
                    <button class="img-c img-c-bg" id="img-c"></button>
                    <button class="img-g img-g-bg" id="img-g"></button>
                    <button class="img-n img-n-bg" id="img-n"></button>
                </span>
            </span>
        </div>

    </div>

    <SCRIPT type="text/javascript"> (function (d, w, c) { (w[c] = w[c] || []).push(function() { try { w.yaCounter24120022 = new Ya.Metrika({id:24120022, clickmap:true, trackLinks:true, accurateTrackBounce:true}); } catch(e) { } }); var n = d.getElementsByTagName('script')[0], s = d.createElement('script'), f = function () { n.parentNode.insertBefore(s, n); }; s.type = 'text/javascript'; s.async = true; s.src = (d.location.protocol == 'https:' ? 'https:' : 'http:') + '//mc.yandex.ru/metrika/watch.js'; if (w.opera == '[object Opera]') { d.addEventListener('DOMContentLoaded', f, false); } else { f(); } })(document, window, 'yandex_metrika_callbacks'); </SCRIPT>
    <NOSCRIPT></NOSCRIPT><!-- /Yandex.Metrika counter -->
    <DIV class="cookies_message" style="DISPLAY: none">
        <DIV class="inner">
            <SPAN class="cookies_text">
                Для того, чтобы мы могли качественно предоставить Вам услуги, мы используем cookies, которые сохраняются на Вашем компьютере. Нажимая <B>СОГЛАСЕН</B>, Вы подтверждаете то, что Вы проинформированы об использовании cookies на нашем сайте. Отключить cookies Вы можете в настройках своего браузера.
            </SPAN>
            <SPAN class="button">
                <A class="cookies_button" href="#">СОГЛАСЕН</A>
            </SPAN>
        </DIV>
    </DIV>


</xsl:template>



</xsl:stylesheet>

