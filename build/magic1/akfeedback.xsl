<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">


<xsl:import href="structurahtml.xsl"/>
<xsl:import href="scriptsandcss.xsl"/>


<xsl:variable name="pagename" >Обратная связь для сообщений о фактах коррупции</xsl:variable>

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




            <xsl:if test="count(EditPasport/Anticorruption/Feedback/NormativRassmotreniyaObrasheniyGrazdan/FileWithName/item)>0">
              <fieldset class='information'>
                <legend><h3>Нормативный правовой акт, регламентирующий порядок рассмотрения обращений граждан</h3></legend>
                <span itemprop=''>
                  <table cellspacing="1" class="tablesorter unit zagol-2" style='width: 100%;'>
                    <tbody>
                      <xsl:for-each select="EditPasport/Anticorruption/Feedback/NormativRassmotreniyaObrasheniyGrazdan/FileWithName/item">
                        <xsl:variable name="link"><xsl:value-of select="LinkFile/Link"/></xsl:variable>
                        <xsl:if test="$link!=''">
    					            <tr>
                            <td class="line-h14s">
    							             <span style="white-space:normal;"><span class="fileicon"><a href='{$link}' target='_blank'>Нормативный правовой акт, регламентирующий порядок рассмотрения обращений граждан</a></span><span class="infofile">(<xsl:value-of select="LinkFile/TYPE"/>; <xsl:value-of disable-output-escaping="yes" select="LinkFile/SIZE"/>)</span></span>
                            </td>
                          </tr>
                        </xsl:if>
                      </xsl:for-each>
                    </tbody>
                  </table>
                </span>
              </fieldset><br/>
            </xsl:if>
            <xsl:if test="(EditPasport/Anticorruption/Feedback/PhoneGoryachayaLinaya!='') or (EditPasport/Anticorruption/Feedback/PhoneDoveriya!='') or (EditPasport/Anticorruption/Feedback/MailAntikorupciya!='')">
              <fieldset class='information'>
                <legend><h3>Способы для граждан и юридических лиц беспрепятственно направлять свои обращения</h3></legend>
                  <div style="width:100%;margin:10px 0px 15px 0px;">
                    <span itemprop=''>
                      <xsl:for-each select="EditPasport/Anticorruption/Feedback">
                        <!-- <xsl:variable name="site"><xsl:value-of select=""/></xsl:variable> -->
                        <xsl:variable name="mail"><xsl:value-of select="MailAntikorupciya"/></xsl:variable>
                          <table border="0" cellspacing="0" cellpadding="0"  class="unit t_mobile" style="margin:0;">
                             <tbody>
                              <xsl:if test="PhoneGoryachayaLinaya!=''">
                                <tr>
                                  <td valign="top"   width="50%" class="col_1">
                                    <p class="p-td"><span style="vertical-align:top;"><b>Телефон горячей линии:</b></span> </p>
                                  </td>
                                  <td valign="top" width="auto" class="col_2">
                                    <p class="p-td "><span style="vertical-align:top;"><xsl:value-of select="PhoneGoryachayaLinaya"/></span></p>
                                  </td>
                                </tr>
                              </xsl:if>
                              <xsl:if test="PhoneDoveriya!=''">
                                <tr class="zagol">
                                  <td valign="top"   width="50%" class="col_1">
                                    <p class="p-td "><span style="vertical-align:top;"><b>Телефон доверия:</b></span></p>
                                  </td>
                                  <td valign="top" width="auto" class="col_2">
                                    <p class="p-td "><span style="vertical-align:top;"><xsl:value-of select="PhoneDoveriya"/></span></p>
                                  </td>
                                </tr>
                              </xsl:if>
                              <xsl:if test="$mail!=''">
                                <tr class="zagol">
                                  <td valign="top"   width="50%" class="col_1">
                                    <p class="p-td "><span style="vertical-align:top;"><b>Электронная почта организации:</b></span></p>
                                  </td>
                                  <td valign="top" width="auto" class="col_2">
                                    <p class="p-td "><span style="vertical-align:top;"><a href='mailto:{$mail}' target='_blank'><span itemprop=''><xsl:value-of select="MailAntikorupciya"/></span></a></span></p>
                                  </td>
                                </tr>
                              </xsl:if>
                              <!-- <xsl:if test="$site!=''">
                                <tr class="zagol">
                                  <td valign="top"   width="50%">
                                    <p class="p-td"><span style="vertical-align:top;"><b>Форма направления сообщений гражданами и организациями через сайт:</b></span></p>
                                  </td>
                                  <td valign="top" width="auto">
                                    <p class="p-td"><span style="vertical-align:top;"><a href='{$site}' target='_blank'><span itemprop=''><xsl:value-of select=""/>[mysite.edusite.ru]</span></a></span></p>
                                  </td>
                                </tr>
                              </xsl:if> -->
                                
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