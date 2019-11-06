<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="structurahtml.xsl"/>
<xsl:import href="scriptsandcss.xsl"/>


<xsl:variable name="pagename" >Образовательные стандарты</xsl:variable>
<xsl:template match="/">

<html>
<head>
<meta name='Keywords' content='Тестовая организация. И сайт её тестовый.
Для тестов всяких нововведений., конструктор сайтов, создание сайтов, создание сайта, сайты детских садов, сайты школ, создание сайта школы, создание сайта детского сайта' />
<meta name='geo.placename' content='Кривоколенный пер, д.4, ст.5, Москва г., Москва г., Российская Федерация101000, ' />
<title>Тестовая организация. И сайт её тестовый.
Для тестов всяких нововведений. - Основные сведения</title>


<xsl:call-template name="ScriptsAndCSS" />
</head>

<body>


<xsl:call-template name="StructuraHTML" />
 







</body>
</html>
</xsl:template>

<xsl:template name="Content">
              <div  class="containersved" id="containersved" align="center">

<!--page-05 Образовательные стандарты-->

            <fieldset class='information '>
			       <legend><h3>Образовательные стандарты</h3></legend>
              <span itemprop='EduStandartDoc'>
                <xsl:for-each select="EditPasport/Eduinfo/FaceInformation/ObrDeyat/EduFGOS">
                  <xsl:variable name="link"><xsl:value-of select="LinkFile8/Link"/></xsl:variable>
                  <xsl:variable name="link2"><xsl:value-of select="LinkFile12/Link"/></xsl:variable>
                  <xsl:variable name="link3"><xsl:value-of select="LinkFile13/Link"/></xsl:variable>
                  <xsl:variable name="link4"><xsl:value-of select="LinkFile14/Link"/></xsl:variable>
                  <table border="0" cellspacing="0" cellpadding="3" style='width: 100%;' class="unit zagol-2">
                    <tbody>
                        <xsl:if test="Lvl1='1'"><tr><td class="line-h14s"><a href='https://docs.edu.gov.ru/document/cfda8c74aa5bc99617d99c00b8bf69af/' target="_blank"><b style="margin-right:10px;">ФГОС дошкольного образования</b></a></td></tr></xsl:if>
                        <xsl:if test="Lvl2='1'"><tr><td class="line-h14s"><a href='https://docs.edu.gov.ru/document/75cb08fb7d6b269e9ecb078bd541567b/' target="_blank"><b style="margin-right:10px;">ФГОС начального общего образования (1-4 кл.)</b></a></td></tr></xsl:if>
                        <xsl:if test="Lvl4='1'"><tr><td class="line-h14s"><a href='https://docs.edu.gov.ru/document/8f549a94f631319a9f7f5532748d09fa/' target="_blank"><b style="margin-right:10px;">ФГОС основного общего образования (5-9 кл.)</b></a></td></tr></xsl:if>
                        <xsl:if test="Lvl3='1'"><tr><td class="line-h14s"><a href='http://fgos.ru/LMS/wm/wm_fgos.php?id=sred' target="_blank"><b style="margin-right:10px;">ФГОС среднего (полного) общего образования (10-11 кл.)</b></a></td></tr></xsl:if>
                        <xsl:if test="Lvl3_1='1'"><tr><td class="line-h14s"><a href='https://docs.edu.gov.ru/document/bf0ceabdc94110049a583890956abbfa/' target="_blank"><b style="margin-right:10px;">ФГОС среднего общего образования (10-11 кл.)</b></a></td></tr></xsl:if>
                        <xsl:if test="Lvl6='1'"><tr><td class="line-h14s"><a href='http://rusobr.ru/fgos/fkgos2004.pdf' target="_blank"><b style="margin-right:10px;">ФК ГОС 2004 года</b></a></td></tr></xsl:if>
                        <xsl:if test="Lvl16='1'"><tr><td class="line-h14s"><a href='http://fgos.ru/LMS/wm/wm_fgos.php?id=ovz_intellect' target="_blank"><b style="margin-right:10px;">ФГОС образования обучающихся с умственной отсталостью (интеллектуальными нарушениями)</b></a></td></tr></xsl:if>
                        <xsl:if test="Lvl16_1='1'"><tr><td class="line-h14s"><a href='http://fgos.ru/LMS/wm/wm_fgos.php?id=ovz_nach' target="_blank"><b style="margin-right:10px;">ФГОС начального общего образования обучающихся с ограниченными возможностями здоровья</b></a></td></tr></xsl:if>
                        <xsl:if test="Lvl5='1'"><tr><td class="line-h14s"><a href='http://fgos.ru' target="_blank"><b style="margin-right:10px;">ФГОС начального профессионального образования</b></a></td></tr></xsl:if>
                        <xsl:if test="Lvl7='1'"><tr><td class="line-h14s"><a href='http://fgos.ru' target="_blank"><b style="margin-right:10px;">ФГОС среднего профессионального образования</b></a></td></tr></xsl:if>
                        <xsl:if test="Lvl12='1'"><tr><td class="line-h14s"><a href='http://fgos.ru' target="_blank"><b style="margin-right:10px;">ФГОС высшего профессионального образования по направлениям подготовки бакалавриата</b></a></td></tr></xsl:if>
                        <xsl:if test="Lvl13='1'"><tr><td class="line-h14s"><a href='http://fgos.ru' target="_blank"><b style="margin-right:10px;">ФГОС высшего профессионального образования по направлениям подготовки специалитета</b></a></td></tr></xsl:if>
                        <xsl:if test="Lvl14='1'"><tr><td class="line-h14s"><a href='http://fgos.ru' target="_blank"><b style="margin-right:10px;">ФГОС высшего профессионального образования по направлениям подготовки магистров</b></a></td></tr></xsl:if>
                        <xsl:if test="Lvl15='1'"><tr><td class="line-h14s"><a href='http://fgos.ru' target="_blank"><b style="margin-right:10px;">ФГОС высшего профессионального образования по направлениям подготовки кадров высшей квалификации</b></a></td></tr></xsl:if>
						
                        <xsl:if test="Lvl8='1'">
                          <tr><td class="line-h14s">
                            <xsl:if test="$link!=''">
                              <span style="white-space:nowrap;">
                                <span class="fileicon">
                                  <a href='{$link}' target='_blank'>ФГОС дополнительного образования</a>
                                </span>
                                <span class="infofile">(<xsl:value-of select="LinkFile8/TYPE"/>; <xsl:value-of disable-output-escaping="yes" select="LinkFile8/SIZE"/>)</span>
                              </span>
                            </xsl:if>
                          </td></tr>
                        </xsl:if>
                        <!-- <xsl:if test="Lvl9='1'"><tr><td class="line-h14s"><b style="margin-right:5px;"><xsl:value-of select="Txt9"/></b><span style="white-space:nowrap;"><span class="fileicon"><a href='{$link2}' target='_blank'>Файл</a></span><span class="infofile">(<xsl:value-of select="LinkFile12/TYPE"/>; <xsl:value-of disable-output-escaping="yes" select="LinkFile12/SIZE"/>)</span></span></td></tr></xsl:if>
                        <xsl:if test="Lvl10='1'"><tr><td class="line-h14s"><b style="margin-right:5px;"><xsl:value-of select="Txt10"/></b><span style="white-space:nowrap;"><span class="fileicon"><a href='{$link3}' target='_blank'>Файл</a></span><span class="infofile">(<xsl:value-of select="LinkFile13/TYPE"/>; <xsl:value-of disable-output-escaping="yes" select="LinkFile13/SIZE"/>)</span></span></td></tr></xsl:if>
                        <xsl:if test="Lvl11='1'"><tr><td class="line-h14s"><b style="margin-right:5px;"><xsl:value-of select="Txt11"/></b><span style="white-space:nowrap;"><span class="fileicon"><a href='{$link4}' target='_blank'>Файл</a></span><span class="infofile">(<xsl:value-of select="LinkFile14/TYPE"/>; <xsl:value-of disable-output-escaping="yes" select="LinkFile14/SIZE"/>)</span></span></td></tr></xsl:if> -->
                      
                  
                  </tbody>
                </table>
				</xsl:for-each>
              </span>
            </fieldset><br/>

          <xsl:if test="count(EditPasport/Eduinfo/FaceInformation/ObrDeyat/EduFGOS/Extended/item)>0">
            <fieldset class='information'>
              <legend><h3>Иные образовательные стандарты</h3></legend>
              <span itemprop='EduStandartDoc'>
                <table cellspacing="1" class="tablesorter unit zagol-2" style='width: 100%;'>
                  <tbody>
                  <xsl:for-each select="EditPasport/Eduinfo/FaceInformation/ObrDeyat/EduFGOS/Extended/item">
                  <xsl:variable name="link"><xsl:value-of select="LinkFile/Link"/></xsl:variable>
				  <xsl:if test="$link!=''">
                    <tr>
                      <td class="line-h14s">
                        <span class="fileicon"><a href='{$link}' target='_blank'><xsl:value-of select="Txt"/></a></span><span class="infofile">(<xsl:value-of select="LinkFile/TYPE"/>; <xsl:value-of disable-output-escaping="yes" select="LinkFile/SIZE"/>)</span>
                      </td>
                    </tr>
					</xsl:if>
                  </xsl:for-each>
                  </tbody>
                </table>
              </span>
            </fieldset><br/>
          </xsl:if>

          </div>
          

</xsl:template>
</xsl:stylesheet>
<!--

<xsl:for-each select=""></xsl:for-each>
<xsl:value-of select=""/> 
<xsl:variable name="[имя переменной]"><xsl:value-of select=""/></xsl:variable>
{$[имя переменной]}
<xsl:if test="$link!=''"></xsl:if>
-->