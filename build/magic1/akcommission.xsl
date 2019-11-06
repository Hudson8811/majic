<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">


<xsl:import href="structurahtml.xsl"/>
<xsl:import href="scriptsandcss.xsl"/>


<xsl:variable name="pagename" >Комиссия по соблюдению требований к служебному поведению и урегулированию конфликта интересов (аттестационная комиссия)</xsl:variable>

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



            <xsl:if test="(count(EditPasport/Anticorruption/Сommission/SostavKomissiiFile/FileWithName/item)>0) or (count(EditPasport/Anticorruption/Сommission/PologenieOKomissii/FileWithName/item)>0)">
              <fieldset class='information'>
                <legend><h3>Сведения об аттестационной комиссии по соблюдению требований к служебному поведению и урегулированию конфликта интересов</h3></legend>
                <span itemprop=''>
                  <table cellspacing="1" class="tablesorter unit zagol-2" style='width: 100%;'>
                    <tbody>
                    <xsl:for-each select="EditPasport/Anticorruption/Сommission/SostavKomissiiFile/FileWithName/item">
                      <xsl:variable name="link"><xsl:value-of select="LinkFile/Link"/></xsl:variable>
                        <xsl:if test="$link!=''">
                        <tr>
                          <td class="line-h14s">
                            <span style="white-space:normal;"><span class="fileicon"><a href='{$link}' target='_blank'>Состав комиссии</a></span><span class="infofile">(<xsl:value-of select="LinkFile/TYPE"/>; <xsl:value-of disable-output-escaping="yes" select="LinkFile/SIZE"/>)</span></span>
                          </td>
                        </tr>
                        </xsl:if>
                    </xsl:for-each>
  				          <xsl:for-each select="EditPasport/Anticorruption/Сommission/PologenieOKomissii/FileWithName/item">
                      <xsl:variable name="link"><xsl:value-of select="LinkFile/Link"/></xsl:variable>
                        <xsl:if test="$link!=''">
                        <tr>
                          <td class="line-h14s">
                            <span style="white-space:normal;"><span class="fileicon"><a href='{$link}' target='_blank'>Положение о комиссии</a></span><span class="infofile">(<xsl:value-of select="LinkFile/TYPE"/>; <xsl:value-of disable-output-escaping="yes" select="LinkFile/SIZE"/>)</span></span>
                          </td>
                        </tr>
                        </xsl:if>
                    </xsl:for-each>
                    </tbody>
                  </table>
                </span>
              </fieldset><br/>
            </xsl:if>
            <xsl:if test="count(EditPasport/Anticorruption/Сommission/ZasedaniyaKomissiy/item)>0">
              <fieldset class='information'>
                  <legend><h3>Сведения о состоявшемся заседании комиссии, принятых решениях</h3></legend>
                    <div style="width:100%;margin:10px 0px 15px 0px;">
                      <span itemprop=''>
                        <xsl:for-each select="EditPasport/Anticorruption/Сommission/ZasedaniyaKomissiy/item">
                          <xsl:variable name="link"><xsl:value-of select="ZasedanieOsnovanie/FileWithName/item/LinkFile/Link"/></xsl:variable>
                          <xsl:variable name="link2"><xsl:value-of select="ZasedanieReshenie/FileWithName/item/LinkFile/Link"/></xsl:variable>
                          <table cellspacing="0" class="tablesorter unit zagol-2" style='width: 100%;margin:0!important;'>
                            <tbody>
                              <xsl:if test="ZasedanieDate!=''">
                                <tr>
                                  <td class="thtd line-h14s">
                                    <b style="margin-right:5px;">Дата проведения:</b><xsl:value-of select="ZasedanieDate"/>
                                  </td>
                                </tr>
                              </xsl:if>
                  						<xsl:if test="$link!=''">
                                <tr>
                                  <td class="line-h14s">
                  							     <span style="white-space:normal;"><span class="fileicon"><a href='files/{$link2}' target='_blank'>Основание для проведения заседания комиссии</a></span><span class="infofile">(<xsl:value-of select="ZasedanieOsnovanie/FileWithName/item/LinkFile/TYPE"/>; <xsl:value-of disable-output-escaping="yes" select="ZasedanieOsnovanie/FileWithName/item/LinkFile/SIZE"/>)</span></span><br/>
                  							  </td>
                                </tr>
                  						</xsl:if>
                  						<xsl:if test="$link2!=''">
                                <tr>
                                  <td>
                  					        <span style="white-space:normal;"><span class="fileicon"><a href='files/{$link2}' target='_blank'>Сведения о принятых решениях на состоявшемся заседании комиссии</a></span><span class="infofile">(<xsl:value-of select="ZasedanieReshenie/FileWithName/item/LinkFile/TYPE"/>; <xsl:value-of disable-output-escaping="yes" select="ZasedanieReshenie/FileWithName/item/LinkFile/SIZE"/>)</span></span>
                                  </td>
                                </tr>
                  						</xsl:if>
                            </tbody>
                          </table>
                        </xsl:for-each>
                      </span>
                    </div>
              </fieldset><br/>
            </xsl:if>



        </div>
</xsl:template>
</xsl:stylesheet>