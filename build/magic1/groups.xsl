<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:import href="structurahtml.xsl"/>
  <xsl:import href="scriptsandcss.xsl"/>
  <xsl:variable name="pagename" >Группы</xsl:variable>
  <xsl:template match="/">
    <html>
      <head>
        <meta name='Keywords' content='Тестовая организация. И сайт её тестовый. Для тестов всяких нововведений., конструктор сайтов, создание сайтов, создание сайта, сайты детских садов, сайты школ, создание сайта школы, создание сайта детского сайта' />
        <meta name='geo.placename' content='Кривоколенный пер, д.4, ст.5, Москва г., Москва г., Российская Федерация101000, ' />
        <title>Тестовая организация. И сайт её тестовый. Для тестов всяких нововведений. - Основные сведения</title>
        <xsl:call-template name="ScriptsAndCSS" />
      </head>
      <body>
        <xsl:call-template name="StructuraHTML" />
      </body>
    </html>
  </xsl:template>

  <xsl:key name="key1" match="item" use="classType" />

  <xsl:template name="GroupArray">
    <xsl:for-each select="EditPasport/ClassGroup/GroupArray/item[count(. | key('key1', classType)[1]) = 1]">
      <xsl:sort select="classType" data-type = "number"/>
      <xsl:value-of select="classType"/>
      <xsl:for-each select="key('key1', classType)">
        <b style="margin-right:5px;">
          <xsl:value-of select="classType"/>
        </b>
        <b style="margin-right:5px;">
          <xsl:value-of select="Name"/>
        </b>
      </xsl:for-each>
    </xsl:for-each>
  </xsl:template>

  <xsl:template name="Content">
    <div  class="containersved" id="containersved" align="center">
      <xsl:if test="count(EditPasport/ClassGroup/GroupArray/item) > 0">
        <fieldset class='information'>
          <legend>
            <h3>Группы ДОО</h3>
          </legend>
          <span itemprop=''>
            <table border="0" cellspacing="0" cellpadding="0" style='width: 100%;' class="unit zagol-2 t_open">
              <tbody>
                <xsl:for-each select="EditPasport/ClassGroup/GroupArray/item[count(. | key('key1', classType)[1]) = 1]">
                  <xsl:sort select="classType" data-type = "number"/>

                  <tr>
                    <td style="padding:0;">
                      <xsl:if test = "classType!='Иное'" >
                        <h4 class="tog2t" style="color:#555;font-size:10pt;padding-top:10px;padding-bottom:10px;">
                          <b>
                            <xsl:value-of select="classType"/>
                          </b>
                        </h4>
                      </xsl:if>
                      <xsl:if test = "classType='Иное'" >
                        <h4 class="togt" style="color:#555;font-size:10pt;padding-top:10px;padding-bottom:10px;">
                          <b>
                            <xsl:value-of select="Text"/>
                          </b>
                        </h4>
                      </xsl:if>
                      <div class="art2t" style="width:100%!important;padding:0;">

                        <xsl:for-each select="key('key1', classType)">
                          <xsl:sort select="Name"/>

                          <p class="list">
                            <table cellspacing="1" class="lnk tablesorter zagol-2" style='width: 100%;display:table;'>
                              <tbody>
                                <tr >
                                  <td class="thtd" >
                                    <b style="margin-right:5px;" itemprop=''>
                                      <xsl:value-of select="classTypeName"/>
                                    </b>
                                    <xsl:if test=" Name!=''">
                                      <span itemprop=''>
                                        <xsl:value-of select="Name"/>
                                      </span>
                                    </xsl:if>
                                    <xsl:if test=" Profil!=''">
                                      <span>
                                        <xsl:value-of select="Profil"/>
                                      </span>
                                    </xsl:if>
                                  </td>
                                </tr>
                              </tbody>
                            </table>
                            <div class="artt">

                              <xsl:variable name="link">
                                <xsl:value-of select="SiteGroup"/>
                              </xsl:variable>
                              <xsl:variable name="link3">
                                <xsl:value-of select="LinkFile/item/Link"/>
                              </xsl:variable>
                              <xsl:variable name="link4">
                                <xsl:value-of select="LinkFile2/item/Link"/>
                              </xsl:variable>
                              <xsl:variable name="link5">
                                <xsl:value-of select="LinkFile3/item/Link"/>
                              </xsl:variable>
 



                             <table cellspacing="1" class="tablesorter zagol-2" style='width: 98%;display:table;'>
                                <tbody>
                                  <xsl:if test=" Profil!=''">
                                    <tr>
                                      <td class="line-h14s">
                                        <b style="margin-right:5px;">Профиль, вертикаль: </b>
                                        <span itemprop=''>
                                          <xsl:value-of select="Profil"/>
                                        </span>
                                      </td>
                                    </tr>
                                  </xsl:if>
                                  <xsl:if test="$link!=''">
                                    <tr >
                                      <td class="line-h14s">
                                        <b style="margin-right:5px;">Ссылка на сайт группы: </b>
                                        <span style="vertical-align:top;">
                                          <a href='{$link}' target='_blank'>
                                            <span itemprop=''>
                                              <xsl:value-of select="SiteGroup"/>
                                            </span>
                                          </a>
                                        </span>
                                      </td>
                                    </tr>
                                  </xsl:if>














                                  <xsl:if test="$link3!=''">
                                    <tr >
                                      <td class="line-h14s">
                                        <b style="margin-right:5px;">Расписание занятий: </b>
                                        <span style="white-space:nowrap;">
                                          <span class="fileicon">
                                            <a href='{$link3}' target='_blank'>Файл</a>
                                          </span>
                                          <span class="infofile">
                                            (<xsl:value-of select="LinkFile/item/TYPE"/>; <xsl:value-of disable-output-escaping="yes" select="LinkFile/item/SIZE"/>)
                                          </span>
                                        </span>
                                      </td>
                                    </tr>
                                  </xsl:if>
                                  <xsl:if test="$link4!=''">
                                    <tr >
                                      <td class="line-h14s">
                                        <b style="margin-right:5px;">Учебный план: </b>
                                        <span style="white-space:nowrap;">
                                          <span class="fileicon">
                                            <a href='{$link4}' target='_blank'>Файл</a>
                                          </span>
                                          <span class="infofile">
                                            (<xsl:value-of select="LinkFile2/item/TYPE"/>; <xsl:value-of disable-output-escaping="yes" select="LinkFile2/item/SIZE"/>)
                                          </span>
                                        </span>
                                      </td>
                                    </tr>
                                  </xsl:if>
                                  <xsl:if test="$link5!=''">
                                    <tr >
                                      <td class="line-h14s">
                                        <b style="margin-right:5px;">План внеурочной деятельности: </b>
                                        <span style="white-space:nowrap;">
                                          <span class="fileicon">
                                            <a href='{$link5}' target='_blank'>Файл</a>
                                          </span>
                                          <span class="infofile">
                                            (<xsl:value-of select="LinkFile3/item/TYPE"/>; <xsl:value-of disable-output-escaping="yes" select="LinkFile3/item/SIZE"/>)
                                          </span>
                                        </span>
                                      </td>
                                    </tr>
                                  </xsl:if>
                                  <tr>
                                    <td class="line-h14s">
                                      <b style="margin-right:5px;">Ссылка на ФГОС: </b>
                                      <span style="vertical-align:top;">
                                        <a href='/sveden/edustandarts.html' target='_blank'>перейти</a>
                                      </span>
                                    </td>
                                  </tr>


































                                  <xsl:if test="Count!=''">
                                    <tr >
                                      <td class="line-h14s">
                                        <b style="margin-right:5px;">Нормативная наполняемость группы: </b>
                                        <span style="white-space:nowrap;">
                                          <span itemprop=''>
                                            <xsl:value-of select="Count"/>
                                          </span>
                                          <span>чел.</span>
                                        </span>
                                      </td>
                                    </tr>
                                  </xsl:if>
                                  <xsl:if test="Count2!=''">
                                    <tr >
                                      <td class="line-h14s">
                                        <b style="margin-right:5px;">Фактическая наполняемость группы: </b>
                                        <span style="white-space:nowrap;">
                                          <span itemprop=''>
                                            <xsl:value-of select="Count2"/>
                                          </span>
                                          <span>чел.</span>
                                        </span>
                                      </td>
                                    </tr>
                                  </xsl:if>
                                </tbody>
                              </table>

                              <xsl:for-each select="Teacher/*/Person/item">
                                <xsl:variable name="photolink">
                                  <xsl:value-of select="Photo/item/Link"/>
                                </xsl:variable>
                                <xsl:variable name="email">
                                  <xsl:value-of select="Email"/>
                                </xsl:variable>
                                <xsl:variable name="site2">
                                  <xsl:value-of select="Site2"/>
                                </xsl:variable>
                                <xsl:variable name="stagedu">
                                  <xsl:value-of select="StagEdu"/>
                                </xsl:variable>
                                <xsl:variable name="alt">
                                  <xsl:value-of select="Name"/>
                                </xsl:variable>
                                <h4 class="tog2 person" style="color:#555;font-size:10pt;padding-top:10px;padding-bottom:10px;">
                                  <b style="margin-right:5px;">Воспитатель: </b>
                                  <span>
                                    <xsl:value-of select="Name"/>
                                  </span>
                                </h4>
                                <div class="art2" style="width:100%!important;padding:0;">
                                  <table cellspacing="1" class="tablesorter unit t_mobile" style='width: 100%;margin:0!important;'>
                                    <tbody>
                                      <tr>
                                        <td  class="mob-clear">
                                          <xsl:if test="$photolink!=''">
                                            <img src="{$photolink}"  alt="{$alt}" title="{$alt}"  border="0"  class="thumbl"/>
                                          </xsl:if>
                                          <!-- <div class='highslide-caption'>
                                              
                                            </div> -->
                                        </td>
                                        <td class="mob-clear" width="100%">
                                          <table cellspacing="1" class="tablesorter" style='width: 100%;margin:0!important;background-color:#fff;'>
                                            <xsl:if test="Name!=''">
                                              <tr>
                                                <td style="border-bottom:2px solid #f7f7f7;margin-bottom:10px;padding-bottom:10px;">
                                                  <b itemprop='fio' style="font-size:11pt;">
                                                    <xsl:value-of select="Name"/>
                                                  </b>
                                                </td>
                                              </tr>
                                            </xsl:if>
                                            <xsl:if test="Position!=''">
                                              <tr>
                                                <td>
                                                  <!-- <b itemprop='fio'><xsl:value-of select="Name"/></b> -->
                                                  <b>Должность: </b>
                                                  <span itemprop=''>
                                                    <xsl:value-of select="Position"/>
                                                  </span>
                                                </td>
                                              </tr>
                                            </xsl:if>
                                            <xsl:if test="Tel!=''">
                                              <tr>
                                                <td>
                                                  <b>Тел.: </b>
                                                  <span itemprop=''>
                                                    <xsl:value-of select="Tel"/>
                                                  </span>
                                                </td>
                                              </tr>
                                            </xsl:if>
                                            <xsl:if test="$email!=''">
                                              <tr>
                                                <td>
                                                  <b>E-Mail: </b>
                                                  <a href='mailto:{$email}' target='_blank'>
                                                    <span itemprop='e-mail'>
                                                      <xsl:value-of select="Email"/>
                                                    </span>
                                                  </a>
                                                </td>
                                              </tr>
                                            </xsl:if>
                                            <xsl:if test="$site2!=''">
                                              <tr>
                                                <td>
                                                  <b>Портфолио: </b>
                                                  <a href='{$site2}' target="_blank">
                                                    <xsl:value-of select="Site2"/>
                                                  </a>
                                                </td>
                                              </tr>
                                            </xsl:if>
                                            <xsl:if test="$stagedu!=''">
                                              <tr>
                                                <td>
                                                  <b>Педагогический стаж: </b>
                                                  <span itemprop='GenExperience'>
                                                    <xsl:value-of select="StagEdu"/>
                                                  </span>
                                                </td>
                                              </tr>
                                            </xsl:if>
                                          </table>
                                        </td>
                                      </tr>
                                      <tr>
                                        <td style="height:15px;width:100%;background-color:#cccccc;padding:0;" colspan="2">
                                        </td>
                                      </tr>
                                    </tbody>
                                  </table>
                                </div>
                              </xsl:for-each>
                            </div>
                            <b class="togt" style="cursor:pointer;padding-left:5px;">показать >></b>
                            <!--</p>-->
                          </p>
                        </xsl:for-each>
                      </div>
                    </td>
                  </tr>
                </xsl:for-each>
              </tbody>
            </table>
          </span>
        </fieldset>
        <br/>
      </xsl:if>
    </div>

  </xsl:template>
</xsl:stylesheet>