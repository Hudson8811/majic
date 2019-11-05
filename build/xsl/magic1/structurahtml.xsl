<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:import href="topline.xsl"/>
<xsl:import href="head.xsl"/>
<xsl:import href="leftmenu.xsl"/>

<xsl:template name="StructuraHTML">




        <CENTER>
          <TABLE id="main" class="main" style="WIDTH: 85%" cellSpacing="0" cellPadding="0" border="0">
            <TBODY>
              <TR>
                <TD height="100%" vAlign="top" width="100%">




                  <DIV id="nonFooter" class="cleardiv">
                    <DIV id="container" class="cleardiv">
                      <DIV id="page" class="cleardiv">



<xsl:call-template name="TopLine" />

                        <DIV class="cleardiv">
                          <DIV class="head" style="">
                            <TABLE id="head" cellSpacing="0" cellPadding="0" width="100%" border="0">
                              <TBODY>
                                <TR>
                                  <TD vAlign="top" width="100%">


<xsl:call-template name="Head" />

                                  </TD>
                                </TR>
                                <TR>
                                  <TD colspan="2" width="100%" valign="bottom" style="padding-right:20px;text-align:right;background-color: #80cab7;">
                                    <div id="pagename">
                                      <H1 class="pagename_div" style=""><xsl:value-of select="$pagename"/> </H1>
                                    </div>
                                  </TD>
                                </TR>
                              </TBODY>
                            </TABLE>
                          </DIV>
                        </DIV>
                        <DIV id="menu_middle_color" class="cleardiv">
                          <DIV id="menu_middle"></DIV>
                        </DIV>



                        <DIV id="content-bg" class="content" style="WIDTH: 100%; CLEAR: both;">
                          <DIV id="content_stripe" class="cleardiv"></DIV>
                          <DIV class="cleardiv">
                            <TABLE cellSpacing="0" cellPadding="0" width="100%" border="0">
                              <TBODY>
                                <TR>
                                  <TD id="cont-height" height="700px" vAlign="top"></TD>
                                  <TD vAlign="top" width="100%">
                                    <DIV id="pannel_1">
                                      <DIV id="left">
                                        <DIV id="menu_left">



<xsl:call-template name="LeftMenu" />




                                        </DIV>
                                        <!-- end #left -->
                                      </DIV>
                                    </DIV>
                                    <!--content-->
                                    <DIV id="content" class="content" style="">





                                      <DIV id="text">
<center>


<xsl:call-template name="Content" />
</center>
                                      </DIV>
<DIV id="pastblock" style="WIDTH: 100%;" class="pastblock" />
                                      <DIV style="WIDTH: 100%">
                                        <UL id="anonses">
                                          <LI>
                                            <DIV id="wraper_1" class="cleardiv" style="DISPLAY: none"></DIV>
                                          </LI>
                                          <LI>
                                            <DIV id="wraper_2" class="cleardiv" style="DISPLAY: none"></DIV>
                                          </LI>
                                        </UL>
                                      </DIV>
                                    </DIV>
                                    <!-- end #content -->
                                    <DIV id="pannel_2" style="HEIGHT: 100%; WIDTH: 0px">
                                      <DIV id="right" class="content">
                                        <DIV id="menu_right"></DIV>
                                        <DIV id="anons_2">
                                          <DIV class="anons_text" height="100%">
                                          </DIV>
                                        </DIV>
                                        <!-- end #right -->
                                      </DIV>
                                    </DIV>
                                  </TD>
                                </TR>
                              </TBODY>
                            </TABLE>
                          </DIV>
                         </DIV>




                      </DIV>
                    </DIV>
                  </DIV>












                  <DIV id="bottom" class="cleardiv">
                    <DIV id="our" class="btm">
                      Дата последнего обновления страницы <xsl:value-of select="EditPasport/Eduinfo/Created"/><BR />
                      Сайт создан по технологии <A title="Cоздание сайта по технологии Конструктор сайтов e-Publish" href="//www.edusite.ru/" target="_blank" alt="Cоздание сайта по технологии Конструктор сайтов e-Publish">
                        «<STRONG>Конструктор сайтов e-Publish</STRONG>»
                      </A><!-- Yandex.Metrika counter -->
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
                    </DIV>
                    <!-- end bottom -->
                  </DIV>

                </TD>
              </TR>
            </TBODY>
          </TABLE>
        </CENTER>
        
    <xsl:variable name="design2">
      <xsl:value-of select="EditPasport/Eduinfo/Design"/>
      <!-- magic1 -->
    </xsl:variable>



<script language='JavaScript' src="https://skin.edusite.ru/{$design2}/scin/my.js"></script>


</xsl:template>



</xsl:stylesheet>

