<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="structurahtml.xsl"/>
<xsl:import href="scriptsandcss.xsl"/>


<xsl:variable name="pagename" >Руководство. Педагогический (научно-педагогический) состав</xsl:variable>

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

<!--page-06 Руководство. Педагогический состав-->
            <xsl:if test="count(EditPasport/Eduinfo/PersonnelHead/PersonnelLst/Person/item) > 0">
            <fieldset class='information'>
              <legend><h3>Руководство</h3></legend>
                <div style="width:100%;margin:10px 0px 15px 0px;">
        <xsl:for-each select="EditPasport/Eduinfo/PersonnelHead/PersonnelLst/Person/item">
                    <xsl:variable name="photolink"><xsl:value-of select="Photo/item/Link"/></xsl:variable>
                    <xsl:variable name="link"><xsl:value-of select="LinkFile/item/Link"/></xsl:variable>
                    <xsl:variable name="alt"><xsl:value-of select="Name"/></xsl:variable>
                    <xsl:variable name="degree"><xsl:value-of select="Degree"/></xsl:variable>
                    <xsl:variable name="edu3"><xsl:value-of select="Education3"/></xsl:variable>
                    <xsl:variable name="email"><xsl:value-of select="Email"/></xsl:variable>
                    <xsl:variable name="site"><xsl:value-of select="Site"/></xsl:variable>
                    <xsl:variable name="site2"><xsl:value-of select="Site2"/></xsl:variable>
                    <xsl:variable name="stagfull"><xsl:value-of select="StagFull"/></xsl:variable>
                    <xsl:variable name="stagedu"><xsl:value-of select="StagEdu"/></xsl:variable>
                    <xsl:variable name="opit"><xsl:value-of select="Opit"/></xsl:variable>
                    <xsl:variable name="quali"><xsl:value-of select="Qualification"/></xsl:variable>
                    <xsl:variable name="qualidocname"><xsl:value-of select="QualiDocName"/></xsl:variable>
                    <xsl:variable name="trayning"><xsl:value-of select="Trayning"/></xsl:variable>
                    <xsl:variable name="trayning2"><xsl:value-of select="Trayning2"/></xsl:variable>
                    <xsl:variable name="link1"><xsl:value-of select="FileWithName/item/LinkFile/Link"/></xsl:variable>
                    <xsl:variable name="link2"><xsl:value-of select="FileWithName2/item/LinkFile/Link"/></xsl:variable>
                    <xsl:variable name="link3"><xsl:value-of select="FileWithName3/item/LinkFile/Link"/></xsl:variable>
                  <table cellspacing="1" class="tablesorter unit t_mobile" style='width: 100%;margin:0!important;'>
                    <tbody>
                      <tr>
                        <td  style='width: 20%;' class="mob-clear">
                          <xsl:if test="$photolink!=''"><a href="{$photolink}" target='_blank' class="highslide" onclick='return hs.expand(this)'><img src="{$photolink}"  alt="{$alt}" title="{$alt}"  border="0"  class="thumbl"/></a></xsl:if>
                          <!-- <div class='highslide-caption'> -->
                            <!-- <xsl:if test="Name!=''" >
                              <b itemprop='fio'><xsl:value-of select="Name"/></b>
                            </xsl:if> -->
                            <xsl:if test="Position!=''">
                              <br/><b style="margin-right:5px;">Должность: </b><span itemprop='Post'><xsl:value-of select="Position"/></span><br/>
                            </xsl:if>
                        <!--   </div> -->
                        </td>
                        <td class="mob-clear" width="100%">
                          <table cellspacing="1" class="tablesorter" style='width: 100%;margin:0!important;background-color:#fff;'>
                            <tr>
                              <td style="border-bottom:2px solid #f7f7f7;margin-bottom:10px;padding-bottom:10px;">
                                <xsl:if test="Name!=''">
                                  <b itemprop='fio' style="font-size:11pt;"><xsl:value-of select="Name"/></b>
                                </xsl:if>
                                
                                <br/><xsl:if test="$degree!=''"><br/><b style="margin-right:5px;">Ученая степень:</b><xsl:value-of select="Degree"/>; </xsl:if><xsl:if test="$edu3!=''"><br/><b style="margin-right:5px;">Ученое звание:</b><xsl:value-of select="Education3"/>; </xsl:if>
                              </td>
                            </tr>
                            <xsl:if test="Tel!=''">
                              <tr>
                                <td>
                                  <b>Тел.: </b><span itemprop='Telephone'><xsl:value-of select="Tel"/></span>
                                </td>
                              </tr>
                            </xsl:if>
                            <xsl:if test="$email!=''">
                              <tr>
                                <td>
                                  <b>E-Mail: </b><a href='mailto:{$email}' target='_blank'><span itemprop='e-mail'><xsl:value-of select="Email"/></span></a>
                                </td>
                              </tr>
                            </xsl:if>
                            <xsl:if test="$site!=''">
                              <tr>
                                <td>
                                  <b>Сайт: </b><a href='{$site}' target="_blank"><xsl:value-of select="Site"/></a>
                                </td>
                              </tr>
                              </xsl:if>
                              <xsl:if test="$site2!=''">
                                <tr>
                                  <td>
                                    <b>Портфолио: </b><a href='{$site2}' target="_blank"><xsl:value-of select="Site2"/></a>
                                  </td>
                                </tr>
                              </xsl:if>
                              <xsl:if test="Reception!=''">
                                <tr>
                                  <td>
                                    <b>Прием: </b><xsl:value-of select="Reception"/>
                                  </td>
                                </tr>
                              </xsl:if>
                              <xsl:if test="$stagfull!=''">
                                <tr>
                                  <td>
                                    <b>Общий стаж: </b><xsl:value-of select="StagFull"/>
                                  </td>
                                </tr>
                              </xsl:if>
                              <xsl:if test="$stagedu!=''">
                                <tr>
                                  <td>
                                    <b>Педагогический стаж: </b><xsl:value-of select="StagEdu"/>
                                  </td>
                                </tr>
                              </xsl:if>
                              <xsl:if test="StagProf!=''">
                                <tr>
                                  <td>
                                    <b>Стаж по специальности: </b><xsl:value-of select="StagProf"/>
                                  </td>
                                </tr>
                              </xsl:if>
                              <xsl:if test="StagInOO!=''">
                                <tr>
                                  <td>
                                    <b>Стаж работы в данной ОО: </b><xsl:value-of select="StagInOO"/>
                                  </td>
                                </tr>
                              </xsl:if>
                              <xsl:if test="$opit!=''">
                                <tr>
                                  <td>
                                    <b>Опыт работы: </b><xsl:value-of select="Opit"/>
                                  </td>
                                </tr>
                              </xsl:if>
                              <xsl:if test="Education!=''">
                                <tr>
                                  <td>
                                    <b>Уровень образования: </b><xsl:value-of select="Education"/>
                                  </td>
                                </tr>
                              </xsl:if>
                              <xsl:if test="Education_spec!=''">
                                <tr>
                                  <td>
                                    <b>Специальность и квалификация по диплому: </b><xsl:value-of select="Education_spec"/>
                                  </td>
                                </tr>
                              </xsl:if>
                              <xsl:if test="$quali!='Level4'">
                                <tr>
                                  <td>
                                    <b>Категория: </b><br/>
                                    <xsl:if test="$quali='Level1'">высшая категория </xsl:if>
                                    <xsl:if test="$quali='Level2'">первая категория </xsl:if>
                                    <xsl:if test="$quali='Level5'">вторая категория </xsl:if>
                                    <xsl:if test="$quali='Level3'">соответствие занимаемой должности </xsl:if>с <xsl:value-of select="QualiDateStart"/> по <xsl:value-of select="QualiDateEnd"/>
                                    <br/>
                                    <xsl:if test="$qualidocname=''">Приказ </xsl:if><xsl:if test="$qualidocname!=''"><span style="margin-right:5px;"><xsl:value-of select="QualiDocName"/></span></xsl:if>№<xsl:value-of select="QualiDocNom"/> от <xsl:value-of select="QualiDocDate"/>
                                  <br/>
                                    <span>Издал </span><xsl:value-of select="QualiIzdat"/>
                                  </td>
                                </tr>
                              </xsl:if>
                              <xsl:if test="$trayning!=''">
                                <tr>
                                  <td>
                                    <b>Повышение квалификации: </b><xsl:value-of select="Trayning"/>
                                  </td>
                                </tr>
                              </xsl:if>
                              <xsl:if test="$trayning2!=''">
                                <tr>
                                  <td>
                                    <b>Профессиональная переподготовка: </b><xsl:value-of select="Trayning2"/>
                                  </td>
                                </tr>
                              </xsl:if>
                              <xsl:if test="$link!=''">
                                <tr>
                                  <td>
                                    <span class="fileicon"><a href='{$link}' target='_blank'>Сведения о доходах</a></span><span class="infofile">(<xsl:value-of select="LinkFile/item/TYPE"/>; <xsl:value-of disable-output-escaping="yes" select="LinkFile/item/SIZE"/>)</span>
                                  </td>
                                </tr>
                              </xsl:if>
                              <xsl:if test="($link1!='') or ($link2!='') or ($link3!='')">
                                <tr>
                                  <td>
                                    <b>Документы: </b>
                                  </td>
                                </tr>
                              </xsl:if>
                              <xsl:if test="$link1!=''">
                              <tr>
                                <td>
                                  <span class="fileicon"><a href='{$link1}' target='_blank'><xsl:value-of select="FileWithName/item/Name"/></a></span><span class="infofile">(<xsl:value-of select="FileWithName/item/LinkFile/TYPE"/>; <xsl:value-of disable-output-escaping="yes" select="FileWithName/item/LinkFile/SIZE"/>)</span>
                                </td>
                              </tr>
                              </xsl:if>
                              <xsl:if test="$link2!=''">
                              <tr>
                                <td>
                                  <span class="fileicon"><a href='{$link2}' target='_blank'><xsl:value-of select="FileWithName2/Name"/></a></span><span class="infofile">(<xsl:value-of select="FileWithName2/LinkFile/item/TYPE"/>; <xsl:value-of disable-output-escaping="yes" select="FileWithName2/LinkFile/item/SIZE"/>)</span>
                                </td>
                              </tr>
                              </xsl:if>
                              <xsl:if test="$link3!=''">
                                <tr>
                                  <td>
                                    <span class="fileicon"><a href='{$link3}' target='_blank'><xsl:value-of select="FileWithName3/Name"/></a></span><span class="infofile">(<xsl:value-of select="FileWithName3/LinkFile/item/TYPE"/>; <xsl:value-of disable-output-escaping="yes" select="FileWithName3/LinkFile/item/SIZE"/>)</span>
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
                  </xsl:for-each>
                </div>
            </fieldset><br/>
            </xsl:if>
            <xsl:if test="count(EditPasport/Eduinfo/Personnel1/PersonnelLst/Person/item) > 0">
            <fieldset class='information'>
              <legend><h3>Персональный состав педагогических работников</h3></legend>
                  <br/>
                  <legend><h3>Педагоги дошкольного образования</h3></legend>
                  <div style="width:100%;margin:10px 0px 15px 0px;">
                  <xsl:for-each select="EditPasport/Eduinfo/Personnel1/PersonnelLst/Person/item">
                    <xsl:variable name="photolink"><xsl:value-of select="Photo/item/Link"/></xsl:variable>
                    <xsl:variable name="link"><xsl:value-of select="LinkFile/item/Link"/></xsl:variable>
                    <xsl:variable name="alt"><xsl:value-of select="Name"/></xsl:variable>
                    <xsl:variable name="degree"><xsl:value-of select="Degree"/></xsl:variable>
                    <xsl:variable name="edu3"><xsl:value-of select="Education3"/></xsl:variable>
                    <xsl:variable name="email"><xsl:value-of select="Email"/></xsl:variable>
                    <xsl:variable name="site"><xsl:value-of select="Site"/></xsl:variable>
                    <xsl:variable name="site2"><xsl:value-of select="Site2"/></xsl:variable>
                    <xsl:variable name="stagfull"><xsl:value-of select="StagFull"/></xsl:variable>
                    <xsl:variable name="stagedu"><xsl:value-of select="StagEdu"/></xsl:variable>
                    <xsl:variable name="opit"><xsl:value-of select="Opit"/></xsl:variable>
                    <xsl:variable name="quali"><xsl:value-of select="Qualification"/></xsl:variable>
                    <xsl:variable name="qualidocname"><xsl:value-of select="QualiDocName"/></xsl:variable>
                    <xsl:variable name="trayning"><xsl:value-of select="Trayning"/></xsl:variable>
                    <xsl:variable name="trayning2"><xsl:value-of select="Trayning2"/></xsl:variable>
                    <xsl:variable name="link1"><xsl:value-of select="FileWithName/item/LinkFile/Link"/></xsl:variable>
                    <xsl:variable name="link2"><xsl:value-of select="FileWithName2/item/LinkFile/Link"/></xsl:variable>
                    <xsl:variable name="link3"><xsl:value-of select="FileWithName3/item/LinkFile/Link"/></xsl:variable>
                  <table cellspacing="1" class="tablesorter unit t_mobile" style='width: 100%;margin:0!important;'>
                    
                    <tbody>
                      <tr>
              <td  style='width: 20%;' class="mob-clear">
                        <xsl:if test="$photolink!=''"><a href='{$photolink}' target='_blank' class="highslide" onclick='return hs.expand(this)'><img src="{$photolink}"  alt="{$alt}" title="{$alt}"  border="0" class="thumbl"/></a></xsl:if>
                          <!-- <div class='highslide-caption'> -->
                            <!-- <b itemprop='fio'><xsl:value-of select="Name"/></b> -->
                            <xsl:if test="Position!=''">
                              <br/><b style="margin-right:5px;">Должность:</b><span itemprop='Post'><xsl:value-of select="Position"/></span>
                            </xsl:if>
                      <!--     </div> -->
                        </td>
                        <td class="mob-clear" width="100%">
                          <table cellspacing="1" class="tablesorter" style='width: 100%;margin:0!important;background-color:#fff;'>
                            <tr>
                              <td style="border-bottom:2px solid #f7f7f7;margin-bottom:10px;padding-bottom:10px;">
                                <xsl:if test="Name!=''">
                                  <b itemprop='fio' style="font-size:11pt;"><xsl:value-of select="Name"/></b>
                                </xsl:if>
                                <br/><xsl:if test="$degree!=''"><br/><b style="margin-right:5px;">Ученая степень:</b><span itemprop='Degree'><xsl:value-of select="Degree"/>; </span></xsl:if>
                                <xsl:if test="$edu3!=''"><br/><b style="margin-right:5px;">Ученое звание:</b><span itemprop='AcademStat'><xsl:value-of select="Education3"/>; </span></xsl:if>
                                <xsl:if test="Disciplines!=''">
                                  <br/><b style="margin-right:5px;">Преподаваемые дисциплины:</b><span itemprop='TeachingDiscipline'><xsl:value-of select="Disciplines"/></span>
                                </xsl:if>
                              </td>
                            </tr>
                            <xsl:if test="Tel!=''">
                              <tr>
                                <td>
                                  <b>Тел.: </b><span itemprop=''><xsl:value-of select="Tel"/></span>
                                </td>
                              </tr>
                            </xsl:if>
                            <xsl:if test="$email!=''">
                              <tr>
                                <td>
                                  <b>E-Mail: </b><a href='mailto:{$email}' target='_blank'><span itemprop='e-mail'><xsl:value-of select="Email"/></span></a>
                                </td>
                              </tr>
                            </xsl:if>
                            <xsl:if test="$site!=''">
                              <tr>
                                <td>
                                  <b>Сайт: </b><a href='{$site}' target="_blank"><xsl:value-of select="Site"/></a>
                                </td>
                              </tr>
                            </xsl:if>
                            <xsl:if test="$site2!=''">
                              <tr>
                                <td>
                                  <b>Портфолио: </b><a href='{$site2}' target="_blank"><xsl:value-of select="Site2"/></a>
                                </td>
                              </tr>
                            </xsl:if>
                            <xsl:if test="$stagfull!=''">
                              <tr>
                                <td>
                                  <b>Общий стаж: </b><xsl:value-of select="StagFull"/>
                                </td>
                              </tr>
                            </xsl:if>
                            <xsl:if test="$stagedu!=''">
                              <tr>
                                <td>
                                  <b>Педагогический стаж: </b><span itemprop='GenExperience'><xsl:value-of select="StagEdu"/></span>
                                </td>
                              </tr>
                            </xsl:if>
                            <xsl:if test="StagProf!=''">
                              <tr>
                                <td>
                                  <b>Стаж по специальности: </b><span itemprop='SpecExperience'><xsl:value-of select="StagProf"/></span>
                                </td>
                              </tr>
                            </xsl:if>
                            <xsl:if test="StagInOO!=''">
                              <tr>
                                <td>
                                  <b>Стаж работы в данной ОО: </b><xsl:value-of select="StagInOO"/>
                                </td>
                              </tr>
                            </xsl:if>
                            <xsl:if test="$opit!=''">
                              <tr>
                                <td>
                                  <b>Опыт работы: </b><xsl:value-of select="Opit"/>
                                </td>
                              </tr>
                            </xsl:if>
                            <xsl:if test="Education!=''">
                              <tr>
                                <td>
                                  <b>Уровень образования: </b><xsl:value-of select="Education"/>
                                </td>
                              </tr>
                            </xsl:if>
                            <xsl:if test="Education_spec!=''">
                              <tr>
                                <td>
                                  <b>Специальность и квалификация по диплому: </b><xsl:value-of select="Education_spec"/>
                                </td>
                              </tr>
                            </xsl:if>
                            <xsl:if test="$quali!='Level4'">
                              <tr>
                                <td>
                                  <b>Категория: </b><br/>
                                  <xsl:if test="$quali='Level1'">высшая категория </xsl:if>
                                  <xsl:if test="$quali='Level2'">первая категория </xsl:if>
                                  <xsl:if test="$quali='Level5'">вторая категория </xsl:if>
                                  <xsl:if test="$quali='Level3'">соответствие занимаемой должности </xsl:if>с <xsl:value-of select="QualiDateStart"/> по <xsl:value-of select="QualiDateEnd"/>
                                  <br/>
                                  <xsl:if test="$qualidocname=''">Приказ </xsl:if><xsl:if test="$qualidocname!=''"><span style="margin-right:5px;"><xsl:value-of select="QualiDocName"/></span></xsl:if>№<xsl:value-of select="QualiDocNom"/> от <xsl:value-of select="QualiDocDate"/>
                                <br/>
                                  <span>Издал </span><xsl:value-of select="QualiIzdat"/>
                                </td>
                              </tr>
                            </xsl:if>
                            <xsl:if test="Education4!=''">
                              <tr>
                                <td>
                                  <b>Направление подготовки и/или специальности: </b><span itemprop='EmployeeQualification'><xsl:value-of select="Education4"/></span>
                                </td>
                              </tr>
                            </xsl:if>
                            <xsl:if test="$trayning!=''">
                              <tr>
                                <td>
                                  <b>Повышение квалификации: </b><span itemprop='ProfDevelopment'><xsl:value-of select="Trayning"/></span>
                                </td>
                              </tr>
                            </xsl:if>
                            <xsl:if test="$trayning2!=''">
                              <tr>
                                <td>
                                  <b>Профессиональная переподготовка: </b><xsl:value-of select="Trayning2"/>
                                </td>
                              </tr>
                            </xsl:if>
                            <xsl:if test="($link1!='') or ($link2!='') or ($link3!='')">
                                <tr>
                                  <td>
                                    <b>Документы: </b>
                                  </td>
                                </tr>
                            </xsl:if>
                            <xsl:if test="$link1!=''">
                            <tr>
                              <td>
                                <span class="fileicon"><a href='{$link1}' target='_blank'><xsl:value-of select="FileWithName/item/Name"/></a></span><span class="infofile">(<xsl:value-of select="FileWithName/item/LinkFile/TYPE"/>; <xsl:value-of disable-output-escaping="yes" select="FileWithName/item/LinkFile/SIZE"/>)</span>
                              </td>
                            </tr>
                            </xsl:if>
                            <xsl:if test="$link2!=''">
                            <tr>
                              <td>
                                <span class="fileicon"><a href='{$link2}' target='_blank'><xsl:value-of select="FileWithName2/item/Name"/></a></span><span class="infofile">(<xsl:value-of select="FileWithName2/item/LinkFile/TYPE"/>; <xsl:value-of disable-output-escaping="yes" select="FileWithName2/item/LinkFile/SIZE"/>)</span>
                              </td>
                            </tr>
                            </xsl:if>
                            <xsl:if test="$link3!=''">
                            <tr>
                              <td>
                                <span class="fileicon"><a href='{$link3}' target='_blank'><xsl:value-of select="FileWithName3/item/Name"/></a></span><span class="infofile">(<xsl:value-of select="FileWithName3/item/LinkFile/TYPE"/>; <xsl:value-of disable-output-escaping="yes" select="FileWithName3/item/LinkFile/SIZE"/>)</span>
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
                  </xsl:for-each>
                   </div>
                 </fieldset>
               </xsl:if>
               <xsl:if test="count(EditPasport/Eduinfo/Personnel2/PersonnelLst/Person/item) > 0">
                <fieldset class='information'>
                  <legend><h3>Педагоги начального общего образования</h3></legend>
                    <div style="width:100%;margin:10px 0px 15px 0px;">
                    <xsl:for-each select="EditPasport/Eduinfo/Personnel2/PersonnelLst/Person/item">
                    <xsl:variable name="photolink"><xsl:value-of select="Photo/item/Link"/></xsl:variable>
                    <xsl:variable name="link"><xsl:value-of select="LinkFile/item/Link"/></xsl:variable>
                    <xsl:variable name="alt"><xsl:value-of select="Name"/></xsl:variable>
                    <xsl:variable name="degree"><xsl:value-of select="Degree"/></xsl:variable>
                    <xsl:variable name="edu3"><xsl:value-of select="Education3"/></xsl:variable>
                    <xsl:variable name="email"><xsl:value-of select="Email"/></xsl:variable>
                    <xsl:variable name="site"><xsl:value-of select="Site"/></xsl:variable>
                    <xsl:variable name="site2"><xsl:value-of select="Site2"/></xsl:variable>
                    <xsl:variable name="stagfull"><xsl:value-of select="StagFull"/></xsl:variable>
                    <xsl:variable name="stagedu"><xsl:value-of select="StagEdu"/></xsl:variable>
                    <xsl:variable name="opit"><xsl:value-of select="Opit"/></xsl:variable>
                    <xsl:variable name="quali"><xsl:value-of select="Qualification"/></xsl:variable>
                    <xsl:variable name="qualidocname"><xsl:value-of select="QualiDocName"/></xsl:variable>
                    <xsl:variable name="trayning"><xsl:value-of select="Trayning"/></xsl:variable>
                    <xsl:variable name="trayning2"><xsl:value-of select="Trayning2"/></xsl:variable>
                    <xsl:variable name="link1"><xsl:value-of select="FileWithName/item/LinkFile/Link"/></xsl:variable>
                    <xsl:variable name="link2"><xsl:value-of select="FileWithName2/item/LinkFile/Link"/></xsl:variable>
                    <xsl:variable name="link3"><xsl:value-of select="FileWithName3/item/LinkFile/Link"/></xsl:variable>
                  <table cellspacing="1" class="tablesorter unit t_mobile" style='width: 100%;margin:0!important;'>
                    
                    <tbody>
                      <tr>
              <td  style='width: 20%;' class="mob-clear">
                        <xsl:if test="$photolink!=''"><a href='{$photolink}' target='_blank' class="highslide" onclick='return hs.expand(this)'><img src="{$photolink}"  alt="{$alt}" title="{$alt}"  border="0"  class="thumbl"/></a></xsl:if>
                          <!-- <div class='highslide-caption'> -->
                            <!--< b itemprop='fio'><xsl:value-of select="Name"/></b> -->
                            <xsl:if test="Position!=''">
                              <br/><b style="margin-right:5px;">Должность:</b><span itemprop='Post'><xsl:value-of select="Position"/></span>
                            </xsl:if>
                       <!--    </div> -->
                        </td>
                        <td class="mob-clear" width="100%">
                          <table cellspacing="1" class="tablesorter" style='width: 100%;margin:0!important;background-color:#fff;'>
                            <tr>
                              <td style="border-bottom:2px solid #f7f7f7;margin-bottom:10px;padding-bottom:10px;">
                                <xsl:if test="Name!=''">
                                  <b itemprop='fio' style="font-size:11pt;"><xsl:value-of select="Name"/></b>
                                </xsl:if>
                                <br/><xsl:if test="$degree!=''"><br/><b style="margin-right:5px;">Ученая степень:</b><span itemprop='Degree'><xsl:value-of select="Degree"/>; </span></xsl:if>
                                <xsl:if test="$edu3!=''"><br/><b style="margin-right:5px;">Ученое звание:</b><span itemprop='AcademStat'><xsl:value-of select="Education3"/>; </span></xsl:if>
                                <xsl:if test="Disciplines!=''">
                                  <br/><b style="margin-right:5px;">Преподаваемые дисциплины:</b><span itemprop='TeachingDiscipline'><xsl:value-of select="Disciplines"/></span>
                                </xsl:if>
                              </td>
                            </tr>
                            <xsl:if test="Tel!=''">
                              <tr>
                                <td>
                                  <b>Тел.: </b><span itemprop=''><xsl:value-of select="Tel"/></span>
                                </td>
                              </tr>
                            </xsl:if>
                            <xsl:if test="$email!=''">
                              <tr>
                                <td>
                                  <b>E-Mail: </b><a href='mailto:{$email}' target='_blank'><span itemprop='e-mail'><xsl:value-of select="Email"/></span></a>
                                </td>
                              </tr>
                            </xsl:if>
                            <xsl:if test="$site!=''">
                              <tr>
                                <td>
                                  <b>Сайт: </b><a href='{$site}' target="_blank"><xsl:value-of select="Site"/></a>
                                </td>
                              </tr>
                            </xsl:if>
                            <xsl:if test="$site2!=''">
                              <tr>
                                <td>
                                  <b>Портфолио: </b><a href='{$site2}' target="_blank"><xsl:value-of select="Site2"/></a>
                                </td>
                              </tr>
                            </xsl:if>
                            <xsl:if test="$stagfull!=''">
                              <tr>
                                <td>
                                  <b>Общий стаж: </b><xsl:value-of select="StagFull"/>
                                </td>
                              </tr>
                            </xsl:if>
                            <xsl:if test="$stagedu!=''">
                              <tr>
                                <td>
                                  <b>Педагогический стаж: </b><span itemprop='GenExperience'><xsl:value-of select="StagEdu"/></span>
                                </td>
                              </tr>
                            </xsl:if>
                            <xsl:if test="StagProf!=''">
                              <tr>
                                <td>
                                  <b>Стаж по специальности: </b><span itemprop='SpecExperience'><xsl:value-of select="StagProf"/></span>
                                </td>
                              </tr>
                            </xsl:if>
                            <xsl:if test="StagInOO!=''">
                              <tr>
                                <td>
                                  <b>Стаж работы в данной ОО: </b><xsl:value-of select="StagInOO"/>
                                </td>
                              </tr>
                            </xsl:if>
                            <xsl:if test="$opit!=''">
                              <tr>
                                <td>
                                  <b>Опыт работы: </b><xsl:value-of select="Opit"/>
                                </td>
                              </tr>
                            </xsl:if>
                            <xsl:if test="Education!=''">
                              <tr>
                                <td>
                                  <b>Уровень образования: </b><xsl:value-of select="Education"/>
                                </td>
                              </tr>
                            </xsl:if>
                            <xsl:if test="Education_spec!=''">
                              <tr>
                                <td>
                                  <b>Специальность и квалификация по диплому: </b><xsl:value-of select="Education_spec"/>
                                </td>
                              </tr>
                            </xsl:if>
                            <xsl:if test="$quali!='Level4'">
                              <tr>
                                <td>
                                  <b>Категория: </b><br/>
                                  <xsl:if test="$quali='Level1'">высшая категория </xsl:if>
                                  <xsl:if test="$quali='Level2'">первая категория </xsl:if>
                                  <xsl:if test="$quali='Level5'">вторая категория </xsl:if>
                                  <xsl:if test="$quali='Level3'">соответствие занимаемой должности </xsl:if>с <xsl:value-of select="QualiDateStart"/> по <xsl:value-of select="QualiDateEnd"/>
                                  <br/>
                                  <xsl:if test="$qualidocname=''">Приказ </xsl:if><xsl:if test="$qualidocname!=''"><span style="margin-right:5px;"><xsl:value-of select="QualiDocName"/></span></xsl:if>№<xsl:value-of select="QualiDocNom"/> от <xsl:value-of select="QualiDocDate"/>
                                <br/>
                                  <span>Издал </span><xsl:value-of select="QualiIzdat"/>
                                </td>
                              </tr>
                            </xsl:if>
                            <xsl:if test="Education4!=''">
                              <tr>
                                <td>
                                  <b>Направление подготовки и/или специальности: </b><span itemprop='EmployeeQualification'><xsl:value-of select="Education4"/></span>
                                </td>
                              </tr>
                            </xsl:if>
                            <xsl:if test="$trayning!=''">
                              <tr>
                                <td>
                                  <b>Повышение квалификации: </b><span itemprop='ProfDevelopment'><xsl:value-of select="Trayning"/></span>
                                </td>
                              </tr>
                            </xsl:if>
                            <xsl:if test="$trayning2!=''">
                              <tr>
                                <td>
                                  <b>Профессиональная переподготовка: </b><xsl:value-of select="Trayning2"/>
                                </td>
                              </tr>
                            </xsl:if>
                            <xsl:if test="($link1!='') or ($link2!='') or ($link3!='')">
                                <tr>
                                  <td>
                                    <b>Документы: </b>
                                  </td>
                                </tr>
                            </xsl:if>
                            <xsl:if test="$link1!=''">
                              <tr>
                                <td>
                                  <span class="fileicon"><a href='{$link1}' target='_blank'><xsl:value-of select="FileWithName/item/Name"/></a></span><span class="infofile">(<xsl:value-of select="FileWithName/item/LinkFile/TYPE"/>; <xsl:value-of disable-output-escaping="yes" select="FileWithName/item/LinkFile/SIZE"/>)</span>
                                </td>
                              </tr>
                            </xsl:if>
                            <xsl:if test="$link2!=''">
                              <tr>
                                <td>
                                  <span class="fileicon"><a href='{$link2}' target='_blank'><xsl:value-of select="FileWithName2/item/Name"/></a></span><span class="infofile">(<xsl:value-of select="FileWithName2/item/LinkFile/TYPE"/>; <xsl:value-of disable-output-escaping="yes" select="FileWithName2/item/LinkFile/SIZE"/>)</span>
                                </td>
                              </tr>
                            </xsl:if>
                            <xsl:if test="$link3!=''">
                              <tr>
                                <td>
                                  <span class="fileicon"><a href='{$link3}' target='_blank'><xsl:value-of select="FileWithName3/item/Name"/></a></span><span class="infofile">(<xsl:value-of select="FileWithName3/item/LinkFile/TYPE"/>; <xsl:value-of disable-output-escaping="yes" select="FileWithName3/item/LinkFile/SIZE"/>)</span>
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
                  </xsl:for-each>          
                  </div>
                </fieldset>
                  </xsl:if>
              <xsl:if test="count(EditPasport/Eduinfo/Personnel3/PersonnelLst/Person/item) > 0">
                <fieldset class='information'>
                  <legend><h3>Педагоги основного общего и среднего общего образования</h3></legend>
                    <div style="width:100%;margin:10px 0px 15px 0px;">
                    <xsl:for-each select="EditPasport/Eduinfo/Personnel3/PersonnelLst/Person/item">
                    <xsl:variable name="photolink"><xsl:value-of select="Photo/item/Link"/></xsl:variable>
                    <xsl:variable name="link"><xsl:value-of select="LinkFile/item/Link"/></xsl:variable>
                    <xsl:variable name="alt"><xsl:value-of select="Name"/></xsl:variable>
                    <xsl:variable name="degree"><xsl:value-of select="Degree"/></xsl:variable>
                    <xsl:variable name="edu3"><xsl:value-of select="Education3"/></xsl:variable>
                    <xsl:variable name="email"><xsl:value-of select="Email"/></xsl:variable>
                    <xsl:variable name="site"><xsl:value-of select="Site"/></xsl:variable>
                    <xsl:variable name="site2"><xsl:value-of select="Site2"/></xsl:variable>
                    <xsl:variable name="stagfull"><xsl:value-of select="StagFull"/></xsl:variable>
                    <xsl:variable name="stagedu"><xsl:value-of select="StagEdu"/></xsl:variable>
                    <xsl:variable name="opit"><xsl:value-of select="Opit"/></xsl:variable>
                    <xsl:variable name="quali"><xsl:value-of select="Qualification"/></xsl:variable>
                    <xsl:variable name="qualidocname"><xsl:value-of select="QualiDocName"/></xsl:variable>
                    <xsl:variable name="trayning"><xsl:value-of select="Trayning"/></xsl:variable>
                    <xsl:variable name="trayning2"><xsl:value-of select="Trayning2"/></xsl:variable>
                    <xsl:variable name="link1"><xsl:value-of select="FileWithName/item/LinkFile/Link"/></xsl:variable>
                    <xsl:variable name="link2"><xsl:value-of select="FileWithName2/item/LinkFile/Link"/></xsl:variable>
                    <xsl:variable name="link3"><xsl:value-of select="FileWithName3/item/LinkFile/Link"/></xsl:variable>
                  <table cellspacing="1" class="tablesorter unit t_mobile" style='width: 100%;margin:0!important;'>
                    
                    <tbody>
                      <tr>
              <td  style='width: 20%;' class="mob-clear">
                        <xsl:if test="$photolink!=''"><a href='{$photolink}' target='_blank' class="highslide" onclick='return hs.expand(this)'>
                          <xsl:if test="$photolink!=''"><img src="{$photolink}"  alt="{$alt}" title="{$alt}"  border="0"  class="thumbl"/></xsl:if></a></xsl:if>
                          <!-- <div class='highslide-caption'> -->
                            <!-- <b itemprop='fio'><xsl:value-of select="Name"/></b> -->
                            <xsl:if test="Position!=''">
                              <br/><b style="margin-right:5px;">Должность:</b><span itemprop='Post'><xsl:value-of select="Position"/></span>
                            </xsl:if>
                         <!--  </div> -->
                        </td>
                        <td class="mob-clear" width="100%">
                          <table cellspacing="1" class="tablesorter" style='width: 100%;margin:0!important;background-color:#fff;'>
                            <tr>
                              <td style="border-bottom:2px solid #f7f7f7;margin-bottom:10px;padding-bottom:10px;">
                                <xsl:if test="Name!=''">
                                  <b itemprop='fio' style="font-size:11pt;"><xsl:value-of select="Name"/></b>
                                </xsl:if>
                                <br/><xsl:if test="$degree!=''"><br/><b style="margin-right:5px;">Ученая степень:</b><span itemprop='Degree'><xsl:value-of select="Degree"/>; </span></xsl:if>
                                <xsl:if test="$edu3!=''"><br/><b style="margin-right:5px;">Ученое звание:</b><span itemprop='AcademStat'><xsl:value-of select="Education3"/>; </span></xsl:if>
                                <xsl:if test="Disciplines!=''">
                                  <br/><b style="margin-right:5px;">Преподаваемые дисциплины:</b><span itemprop='TeachingDiscipline'><xsl:value-of select="Disciplines"/></span>
                                </xsl:if>
                              </td>
                            </tr>
                            <xsl:if test="Tel!=''">
                              <tr>
                                <td>
                                  <b>Тел.: </b><span itemprop=''><xsl:value-of select="Tel"/></span>
                                </td>
                              </tr>
                            </xsl:if>
                            <xsl:if test="$email!=''">
                              <tr>
                                <td>
                                  <b>E-Mail: </b><a href='mailto:{$email}' target='_blank'><span itemprop='e-mail'><xsl:value-of select="Email"/></span></a>
                                </td>
                              </tr>
                            </xsl:if>
                            <xsl:if test="$site!=''">
                                <tr>
                                  <td>
                                    <b>Сайт: </b><a href='{$site}' target="_blank"><xsl:value-of select="Site"/></a>
                                  </td>
                                </tr>
                            </xsl:if>
                            <xsl:if test="$site2!=''">
                              <tr>
                                <td>
                                  <b>Портфолио: </b><a href='{$site2}' target="_blank"><xsl:value-of select="Site2"/></a>
                                </td>
                              </tr>
                            </xsl:if>
                            <xsl:if test="$stagfull!=''">
                              <tr>
                                <td>
                                  <b>Общий стаж: </b><xsl:value-of select="StagFull"/>
                                </td>
                              </tr>
                            </xsl:if>
                            <xsl:if test="$stagedu!=''">
                              <tr>
                                <td>
                                  <b>Педагогический стаж: </b><span itemprop='GenExperience'><xsl:value-of select="StagEdu"/></span>
                                </td>
                              </tr>
                            </xsl:if>
                            <xsl:if test="StagProf!=''">
                              <tr>
                                <td>
                                  <b>Стаж по специальности: </b><span itemprop='SpecExperience'><xsl:value-of select="StagProf"/></span>
                                </td>
                              </tr>
                            </xsl:if>
                            <xsl:if test="StagInOO!=''">
                              <tr>
                                <td>
                                  <b>Стаж работы в данной ОО: </b><xsl:value-of select="StagInOO"/>
                                </td>
                              </tr>
                            </xsl:if>
                            <xsl:if test="$opit!=''">
                              <tr>
                                <td>
                                  <b>Опыт работы: </b><xsl:value-of select="Opit"/>
                                </td>
                              </tr>
                            </xsl:if>
                            <xsl:if test="Education!=''">
                              <tr>
                                <td>
                                  <b>Уровень образования: </b><xsl:value-of select="Education"/>
                                </td>
                              </tr>
                            </xsl:if>
                            <xsl:if test="Education_spec!=''">
                              <tr>
                                <td>
                                  <b>Специальность и квалификация по диплому: </b><xsl:value-of select="Education_spec"/>
                                </td>
                              </tr>
                            </xsl:if>
                            <xsl:if test="$quali!='Level4'">
                              <tr>
                                <td>
                                  <b>Категория: </b><br/><xsl:if test="$quali='Level1'">высшая категория </xsl:if>
                                  <xsl:if test="$quali='Level2'">первая категория </xsl:if>
                                  <xsl:if test="$quali='Level5'">вторая категория </xsl:if>
                                  <xsl:if test="$quali='Level3'">соответствие занимаемой должности </xsl:if>с <xsl:value-of select="QualiDateStart"/> по <xsl:value-of select="QualiDateEnd"/>
                                  <br/>
                                  <xsl:if test="$qualidocname=''">Приказ </xsl:if><xsl:if test="$qualidocname!=''"><span style="margin-right:5px;"><xsl:value-of select="QualiDocName"/></span></xsl:if>№<xsl:value-of select="QualiDocNom"/> от <xsl:value-of select="QualiDocDate"/>
                                  <br/>
                                  <span>Издал </span><xsl:value-of select="QualiIzdat"/>
                                </td>
                              </tr>
                            </xsl:if>
                            <xsl:if test="Education4!=''">
                              <tr>
                                <td>
                                  <b>Направление подготовки и/или специальности: </b><span itemprop='EmployeeQualification'><xsl:value-of select="Education4"/></span>
                                </td>
                              </tr>
                            </xsl:if>
                            <xsl:if test="$trayning!=''">
                              <tr>
                                <td>
                                  <b>Повышение квалификации: </b><span itemprop='ProfDevelopment'><xsl:value-of select="Trayning"/></span>
                                </td>
                              </tr>
                            </xsl:if>
                            <xsl:if test="$trayning2!=''">
                              <tr>
                                <td>
                                  <b>Профессиональная переподготовка: </b><xsl:value-of select="Trayning2"/>
                                </td>
                              </tr>
                            </xsl:if>
                            <xsl:if test="($link1!='') or ($link2!='') or ($link3!='')">
                              <tr>
                                <td>
                                  <b>Документы: </b>
                                </td>
                              </tr>
                            </xsl:if>
                            <xsl:if test="$link1!=''">
                              <tr>
                                <td>
                                  <span class="fileicon"><a href='{$link1}' target='_blank'><xsl:value-of select="FileWithName/item/Name"/></a></span><span class="infofile">(<xsl:value-of select="FileWithName/item/LinkFile/TYPE"/>; <xsl:value-of disable-output-escaping="yes" select="FileWithName/item/LinkFile/SIZE"/>)</span>
                                </td>
                              </tr>
                            </xsl:if>
                            <xsl:if test="$link2!=''">
                              <tr>
                                <td>
                                  <span class="fileicon"><a href='{$link2}' target='_blank'><xsl:value-of select="FileWithName2/item/Name"/></a></span><span class="infofile">(<xsl:value-of select="FileWithName2/item/LinkFile/TYPE"/>; <xsl:value-of disable-output-escaping="yes" select="FileWithName2/item/LinkFile/SIZE"/>)</span>
                                </td>
                              </tr>
                            </xsl:if>
                            <xsl:if test="$link3!=''">
                              <tr>
                                <td>
                                  <span class="fileicon"><a href='{$link3}' target='_blank'><xsl:value-of select="FileWithName3/item/Name"/></a></span><span class="infofile">(<xsl:value-of select="FileWithName3/item/LinkFile/TYPE"/>; <xsl:value-of disable-output-escaping="yes" select="FileWithName3/item/LinkFile/SIZE"/>)</span>
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
                  </xsl:for-each>
                  </div>
                </fieldset>
          </xsl:if>
          <xsl:if test="count(EditPasport/Eduinfo/Personnel4/PersonnelLst/Person/item) > 0">
            <fieldset class='information'>
                  <legend><h3>Педагоги среднего профессионального образования</h3></legend>
                  <div style="width:100%;margin:10px 0px 15px 0px;">
                    <xsl:for-each select="EditPasport/Eduinfo/Personnel4/PersonnelLst/Person/item">
                    <xsl:variable name="photolink"><xsl:value-of select="Photo/item/Link"/></xsl:variable>
                    <xsl:variable name="link"><xsl:value-of select="LinkFile/item/Link"/></xsl:variable>
                    <xsl:variable name="alt"><xsl:value-of select="Name"/></xsl:variable>
                    <xsl:variable name="degree"><xsl:value-of select="Degree"/></xsl:variable>
                    <xsl:variable name="edu3"><xsl:value-of select="Education3"/></xsl:variable>
                    <xsl:variable name="email"><xsl:value-of select="Email"/></xsl:variable>
                    <xsl:variable name="site"><xsl:value-of select="Site"/></xsl:variable>
                    <xsl:variable name="site2"><xsl:value-of select="Site2"/></xsl:variable>
                    <xsl:variable name="stagfull"><xsl:value-of select="StagFull"/></xsl:variable>
                    <xsl:variable name="stagedu"><xsl:value-of select="StagEdu"/></xsl:variable>
                    <xsl:variable name="opit"><xsl:value-of select="Opit"/></xsl:variable>
                    <xsl:variable name="quali"><xsl:value-of select="Qualification"/></xsl:variable>
                    <xsl:variable name="qualidocname"><xsl:value-of select="QualiDocName"/></xsl:variable>
                    <xsl:variable name="trayning"><xsl:value-of select="Trayning"/></xsl:variable>
                    <xsl:variable name="trayning2"><xsl:value-of select="Trayning2"/></xsl:variable>
                    <xsl:variable name="link1"><xsl:value-of select="FileWithName/item/LinkFile/Link"/></xsl:variable>
                    <xsl:variable name="link2"><xsl:value-of select="FileWithName2/item/LinkFile/Link"/></xsl:variable>
                    <xsl:variable name="link3"><xsl:value-of select="FileWithName3/item/LinkFile/Link"/></xsl:variable>
                  <table cellspacing="1" class="tablesorter unit t_mobile" style='width: 100%;margin:0!important;'>
                    
                    <tbody>
                      <tr>
              <td  style='width: 20%;' class="mob-clear">
                        <xsl:if test="$photolink!=''"><a href='{$photolink}' target='_blank' class="highslide" onclick='return hs.expand(this)'><img src="{$photolink}"  alt="{$alt}" title="{$alt}"  border="0"  class="thumbl"/></a></xsl:if>
                          <!-- <div class='highslide-caption'> -->
                            <!-- <b itemprop='fio'><xsl:value-of select="Name"/></b> -->
                            <xsl:if test="Position!=''">
                              <br/><b style="margin-right:5px;">Должность:</b><span itemprop='Post'><xsl:value-of select="Position"/></span>
                            </xsl:if>
                     <!--      </div> -->
                        </td>
                        <td class="mob-clear" width="100%">
                          <table cellspacing="1" class="tablesorter" style='width: 100%;margin:0!important;background-color:#fff;'>
                            <tr>
                              <td style="border-bottom:2px solid #f7f7f7;margin-bottom:10px;padding-bottom:10px;">
                                <xsl:if test="Name!=''">
                                  <b itemprop='fio' style="font-size:11pt;"><xsl:value-of select="Name"/></b>
                                </xsl:if>
                                <br/><xsl:if test="$degree!=''"><br/><b style="margin-right:5px;">Ученая степень:</b><span itemprop='Degree'><xsl:value-of select="Degree"/>; </span></xsl:if>
                                <xsl:if test="$edu3!=''"><br/><b style="margin-right:5px;">Ученое звание:</b><span itemprop='AcademStat'><xsl:value-of select="Education3"/>; </span></xsl:if>
                                <xsl:if test="Disciplines!=''">
                                  <br/><b style="margin-right:5px;">Преподаваемые дисциплины:</b><span itemprop='TeachingDiscipline'><xsl:value-of select="Disciplines"/></span>
                                </xsl:if>
                              </td>
                            </tr>
                            <xsl:if test="Tel!=''">
                              <tr>
                                <td>
                                  <b>Тел.: </b><span itemprop=''><xsl:value-of select="Tel"/></span>
                                </td>
                              </tr>
                            </xsl:if>
                            <xsl:if test="$email!=''">
                              <tr>
                                <td>
                                  <b>E-Mail: </b><a href='mailto:{$email}' target='_blank'><span itemprop='e-mail'><xsl:value-of select="Email"/></span></a>
                                </td>
                              </tr>
                            </xsl:if>
                            <xsl:if test="$site!=''">
                              <tr>
                                <td>
                                  <b>Сайт: </b><a href='{$site}' target="_blank"><xsl:value-of select="Site"/></a>
                                </td>
                              </tr>
                            </xsl:if>
                            <xsl:if test="$site2!=''">
                              <tr>
                                <td>
                                  <b>Портфолио: </b><a href='{$site2}' target="_blank"><xsl:value-of select="Site2"/></a>
                                </td>
                              </tr>
                            </xsl:if>
                            <xsl:if test="$stagfull!=''">
                              <tr>
                                <td>
                                  <b>Общий стаж: </b><xsl:value-of select="StagFull"/>
                                </td>
                              </tr>
                            </xsl:if>
                            <xsl:if test="$stagedu!=''">
                              <tr>
                                <td>
                                  <b>Педагогический стаж: </b><span itemprop='GenExperience'><xsl:value-of select="StagEdu"/></span>
                                </td>
                              </tr>
                            </xsl:if>
                            <xsl:if test="StagProf!=''">
                              <tr>
                                <td>
                                  <b>Стаж по специальности: </b><span itemprop='SpecExperience'><xsl:value-of select="StagProf"/></span>
                                </td>
                              </tr>
                            </xsl:if>
                            <xsl:if test="StagInOO!=''">
                              <tr>
                                <td>
                                  <b>Стаж работы в данной ОО: </b><xsl:value-of select="StagInOO"/>
                                </td>
                              </tr>
                            </xsl:if>
                            <xsl:if test="$opit!=''">
                              <tr>
                                <td>
                                  <b>Опыт работы: </b><xsl:value-of select="Opit"/>
                                </td>
                              </tr>
                            </xsl:if>
                            <xsl:if test="Education!=''">
                              <tr>
                                <td>
                                  <b>Уровень образования: </b><xsl:value-of select="Education"/>
                                </td>
                              </tr>
                            </xsl:if>
                            <xsl:if test="Education_spec!=''">
                              <tr>
                                <td>
                                  <b>Специальность и квалификация по диплому: </b><xsl:value-of select="Education_spec"/>
                                </td>
                              </tr>
                            </xsl:if>
                            <xsl:if test="$quali!='Level4'">
                              <tr>
                                <td>
                                  <b>Категория: </b><br/><xsl:if test="$quali='Level1'">высшая категория </xsl:if>
                                  <xsl:if test="$quali='Level2'">первая категория </xsl:if>
                                  <xsl:if test="$quali='Level5'">вторая категория </xsl:if>
                                  <xsl:if test="$quali='Level3'">соответствие занимаемой должности </xsl:if>с <xsl:value-of select="QualiDateStart"/> по <xsl:value-of select="QualiDateEnd"/>
                                <br/>
                                  <xsl:if test="$qualidocname=''">Приказ </xsl:if><xsl:if test="$qualidocname!=''"><span style="margin-right:5px;"><xsl:value-of select="QualiDocName"/></span></xsl:if>№<xsl:value-of select="QualiDocNom"/> от <xsl:value-of select="QualiDocDate"/>
                                <br/>
                                  <span>Издал </span><xsl:value-of select="QualiIzdat"/>
                                </td>
                              </tr>
                            </xsl:if>
                            <xsl:if test="Education4!=''">
                              <tr>
                                <td>
                                  <b>Направление подготовки и/или специальности: </b><span itemprop='EmployeeQualification'><xsl:value-of select="Education4"/></span>
                                </td>
                              </tr>
                            </xsl:if>
                            <xsl:if test="$trayning!=''">
                              <tr>
                                <td>
                                  <b>Повышение квалификации: </b><span itemprop='ProfDevelopment'><xsl:value-of select="Trayning"/></span>
                                </td>
                              </tr>
                            </xsl:if>
                            <xsl:if test="$trayning2!=''">
                              <tr>
                                <td>
                                  <b>Профессиональная переподготовка: </b><xsl:value-of select="Trayning2"/>
                                </td>
                              </tr>
                            </xsl:if>
                            <xsl:if test="($link1!='') or ($link2!='') or ($link3!='')">
                              <tr>
                                <td>
                                  <b>Документы: </b>
                                </td>
                              </tr>
                            </xsl:if>
                            <xsl:if test="$link1!=''">
                              <tr>
                                <td>
                                  <span class="fileicon"><a href='{$link1}' target='_blank'><xsl:value-of select="FileWithName/item/Name"/></a></span><span class="infofile">(<xsl:value-of select="FileWithName/item/LinkFile/TYPE"/>; <xsl:value-of disable-output-escaping="yes" select="FileWithName/item/LinkFile/SIZE"/>)</span>
                                </td>
                              </tr>
                            </xsl:if>
                            <xsl:if test="$link2!=''">
                              <tr>
                                <td>
                                  <span class="fileicon"><a href='{$link2}' target='_blank'><xsl:value-of select="FileWithName2/item/Name"/></a></span><span class="infofile">(<xsl:value-of select="FileWithName2/item/LinkFile/TYPE"/>; <xsl:value-of disable-output-escaping="yes" select="FileWithName2/item/LinkFile/SIZE"/>)</span>
                                </td>
                              </tr>
                            </xsl:if>
                            <xsl:if test="$link3!=''">
                              <tr>
                                <td>
                                  <span class="fileicon"><a href='{$link3}' target='_blank'><xsl:value-of select="FileWithName3/item/Name"/></a></span><span class="infofile">(<xsl:value-of select="FileWithName3/item/LinkFile/TYPE"/>; <xsl:value-of disable-output-escaping="yes" select="FileWithName3/item/LinkFile/SIZE"/>)</span>
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
                  </xsl:for-each>                  
                  </div>
                </fieldset>
                  </xsl:if>
                  <xsl:if test="count(EditPasport/Eduinfo/Personnel5/PersonnelLst/Person/item) > 0">
                    <fieldset class='information'>
                  <legend><h3>Педагоги дополнительного образования  детей и взрослых</h3></legend>
                  <div style="width:100%;margin:10px 0px 15px 0px;">
                    <xsl:for-each select="EditPasport/Eduinfo/Personnel5/PersonnelLst/Person/item">
                    <xsl:variable name="photolink"><xsl:value-of select="Photo/item/Link"/></xsl:variable>
                    <xsl:variable name="link"><xsl:value-of select="LinkFile/item/Link"/></xsl:variable>
                    <xsl:variable name="alt"><xsl:value-of select="Name"/></xsl:variable>
                    <xsl:variable name="degree"><xsl:value-of select="Degree"/></xsl:variable>
                    <xsl:variable name="edu3"><xsl:value-of select="Education3"/></xsl:variable>
                    <xsl:variable name="email"><xsl:value-of select="Email"/></xsl:variable>
                    <xsl:variable name="site"><xsl:value-of select="Site"/></xsl:variable>
                    <xsl:variable name="site2"><xsl:value-of select="Site2"/></xsl:variable>
                    <xsl:variable name="stagfull"><xsl:value-of select="StagFull"/></xsl:variable>
                    <xsl:variable name="stagedu"><xsl:value-of select="StagEdu"/></xsl:variable>
                    <xsl:variable name="opit"><xsl:value-of select="Opit"/></xsl:variable>
                    <xsl:variable name="quali"><xsl:value-of select="Qualification"/></xsl:variable>
                    <xsl:variable name="qualidocname"><xsl:value-of select="QualiDocName"/></xsl:variable>
                    <xsl:variable name="trayning"><xsl:value-of select="Trayning"/></xsl:variable>
                    <xsl:variable name="trayning2"><xsl:value-of select="Trayning2"/></xsl:variable>
                    <xsl:variable name="link1"><xsl:value-of select="FileWithName/item/LinkFile/Link"/></xsl:variable>
                    <xsl:variable name="link2"><xsl:value-of select="FileWithName2/item/LinkFile/Link"/></xsl:variable>
                    <xsl:variable name="link3"><xsl:value-of select="FileWithName3/item/LinkFile/Link"/></xsl:variable>
                  <table cellspacing="1" class="tablesorter unit t_mobile" style='width: 100%;margin:0!important;'>
                    
                    <tbody>
                      <tr>
              <td  style='width: 20%;' class="mob-clear">
                        <xsl:if test="$photolink!=''"><a href='{$photolink}' target='_blank' class="highslide" onclick='return hs.expand(this)'>
                          <xsl:if test="$photolink!=''"><img src="{$photolink}"  alt="{$alt}" title="{$alt}"  border="0"  class="thumbl"/></xsl:if></a></xsl:if>
                        <!--   <div class='highslide-caption'> -->
                            <!-- <b itemprop='fio'><xsl:value-of select="Name"/></b> -->
                            <xsl:if test="Position!=''">
                              <br/><b style="margin-right:5px;">Должность:</b><span itemprop='Post'><xsl:value-of select="Position"/></span>
                            </xsl:if>
                   <!--        </div> -->
                        </td>
                        <td class="mob-clear" width="100%">
                          <table cellspacing="1" class="tablesorter" style='width: 100%;margin:0!important;background-color:#fff;'>
                            <tr>
                              <td style="border-bottom:2px solid #f7f7f7;margin-bottom:10px;padding-bottom:10px;">
                                <xsl:if test="Name!=''">
                                  <b itemprop='fio' style="font-size:11pt;"><xsl:value-of select="Name"/></b>
                                </xsl:if>
                                <br/><xsl:if test="$degree!=''"><br/><b style="margin-right:5px;">Ученая степень:</b><span itemprop='Degree'><xsl:value-of select="Degree"/>; </span></xsl:if>
                                <xsl:if test="$edu3!=''"><br/><b style="margin-right:5px;">Ученое звание:</b><span itemprop='AcademStat'><xsl:value-of select="Education3"/>; </span></xsl:if>
                                <xsl:if test="Disciplines!=''">
                                  <br/><b style="margin-right:5px;">Преподаваемые дисциплины:</b><span itemprop='TeachingDiscipline'><xsl:value-of select="Disciplines"/></span>
                                </xsl:if>
                              </td>
                            </tr>
                            <xsl:if test="Tel!=''">
                              <tr>
                                <td>
                                  <b>Тел.: </b><span itemprop=''><xsl:value-of select="Tel"/></span>
                                </td>
                              </tr>
                            </xsl:if>
                            <xsl:if test="$email!=''">
                              <tr>
                                <td>
                                  <b>E-Mail: </b><a href='mailto:{$email}' target='_blank'><span itemprop='e-mail'><xsl:value-of select="Email"/></span></a>
                                </td>
                              </tr>
                            </xsl:if>
                            <xsl:if test="$site!=''">
                              <tr>
                                <td>
                                  <b>Сайт: </b><a href='{$site}' target="_blank"><xsl:value-of select="Site"/></a>
                                </td>
                              </tr>
                            </xsl:if>
                            <xsl:if test="$site2!=''">
                              <tr>
                                <td>
                                  <b>Портфолио: </b><a href='{$site2}' target="_blank"><xsl:value-of select="Site2"/></a>
                                </td>
                              </tr>
                            </xsl:if>
                            <xsl:if test="$stagfull!=''">
                              <tr>
                                <td>
                                  <b>Общий стаж: </b><xsl:value-of select="StagFull"/>
                                </td>
                              </tr>
                            </xsl:if>
                            <xsl:if test="$stagedu!=''">
                              <tr>
                                <td>
                                  <b>Педагогический стаж: </b><span itemprop='GenExperience'><xsl:value-of select="StagEdu"/></span>
                                </td>
                              </tr>
                            </xsl:if>
                            <xsl:if test="StagProf!=''">
                              <tr>
                                <td>
                                  <b>Стаж по специальности: </b><span itemprop='SpecExperience'><xsl:value-of select="StagProf"/></span>
                                </td>
                              </tr>
                            </xsl:if>
                            <xsl:if test="StagInOO!=''">
                              <tr>
                                <td>
                                  <b>Стаж работы в данной ОО: </b><xsl:value-of select="StagInOO"/>
                                </td>
                              </tr>
                            </xsl:if>
                            <xsl:if test="$opit!=''">
                              <tr>
                                <td>
                                  <b>Опыт работы: </b><xsl:value-of select="Opit"/>
                                </td>
                              </tr>
                            </xsl:if>
                            <xsl:if test="Education!=''">
                              <tr>
                                <td>
                                  <b>Уровень образования: </b><xsl:value-of select="Education"/>
                                </td>
                              </tr>
                            </xsl:if>
                            <xsl:if test="Education_spec!=''">
                              <tr>
                                <td>
                                  <b>Специальность и квалификация по диплому: </b><xsl:value-of select="Education_spec"/>
                                </td>
                              </tr>
                            </xsl:if>
                            <xsl:if test="$quali!='Level4'">
                              <tr>
                                <td>
                                  <b>Категория: </b><br/><xsl:if test="$quali='Level1'">высшая категория </xsl:if>
                                  <xsl:if test="$quali='Level2'">первая категория </xsl:if>
                                  <xsl:if test="$quali='Level5'">вторая категория </xsl:if>
                                  <xsl:if test="$quali='Level3'">соответствие занимаемой должности </xsl:if>с <xsl:value-of select="QualiDateStart"/> по <xsl:value-of select="QualiDateEnd"/>
                                <br/>
                                  <xsl:if test="$qualidocname=''">Приказ </xsl:if><xsl:if test="$qualidocname!=''"><span style="margin-right:5px;"><xsl:value-of select="QualiDocName"/></span></xsl:if>№<xsl:value-of select="QualiDocNom"/> от <xsl:value-of select="QualiDocDate"/>
                                <br/>
                                  <span>Издал </span><xsl:value-of select="QualiIzdat"/>
                                </td>
                              </tr>
                            </xsl:if>
                            <xsl:if test="Education4!=''">
                              <tr>
                                <td>
                                  <b>Направление подготовки и/или специальности: </b><span itemprop='EmployeeQualification'><xsl:value-of select="Education4"/></span>
                                </td>
                              </tr>
                            </xsl:if>
                            <xsl:if test="$trayning!=''">
                              <tr>
                                <td>
                                  <b>Повышение квалификации: </b><span itemprop='ProfDevelopment'><xsl:value-of select="Trayning"/></span>
                                </td>
                              </tr>
                            </xsl:if>
                            <xsl:if test="$trayning2!=''">
                              <tr>
                                <td>
                                  <b>Профессиональная переподготовка: </b><xsl:value-of select="Trayning2"/>
                                </td>
                              </tr>
                            </xsl:if>
                            <xsl:if test="($link1!='') or ($link2!='') or ($link3!='')">
                              <tr>
                                <td>
                                  <b>Документы: </b>
                                </td>
                              </tr>
                            </xsl:if>
                            <xsl:if test="$link1!=''">
                              <tr>
                                <td>
                                  <span class="fileicon"><a href='{$link1}' target='_blank'><xsl:value-of select="FileWithName/item/Name"/></a></span><span class="infofile">(<xsl:value-of select="FileWithName/item/LinkFile/TYPE"/>; <xsl:value-of disable-output-escaping="yes" select="FileWithName/item/LinkFile/SIZE"/>)</span>
                                </td>
                              </tr>
                            </xsl:if>
                            <xsl:if test="$link2!=''">
                              <tr>
                                <td>
                                  <span class="fileicon"><a href='{$link2}' target='_blank'><xsl:value-of select="FileWithName2/item/Name"/></a></span><span class="infofile">(<xsl:value-of select="FileWithName2/item/LinkFile/TYPE"/>; <xsl:value-of disable-output-escaping="yes" select="FileWithName2/item/LinkFile/SIZE"/>)</span>
                                </td>
                              </tr>
                            </xsl:if>
                            <xsl:if test="$link3!=''">
                              <tr>
                                <td>
                                  <span class="fileicon"><a href='{$link3}' target='_blank'><xsl:value-of select="FileWithName3/item/Name"/></a></span><span class="infofile">(<xsl:value-of select="FileWithName3/item/LinkFile/TYPE"/>; <xsl:value-of disable-output-escaping="yes" select="FileWithName3/item/LinkFile/SIZE"/>)</span>
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
                  </xsl:for-each>
                  </div> 
                  </fieldset>         
                  </xsl:if>
                  <xsl:if test="count(EditPasport/Eduinfo/Personnel6/PersonnelLst/Person/item) > 0">
                  <fieldset class='information'>
                  <legend><h3>Педагоги дополнительного профессионального образования</h3></legend>
          <div style="width:100%;margin:10px 0px 15px 0px;">
        <xsl:for-each select="EditPasport/Eduinfo/Personnel6/PersonnelLst/Person/item">
                    <xsl:variable name="photolink"><xsl:value-of select="Photo/item/Link"/></xsl:variable>
                    <xsl:variable name="link"><xsl:value-of select="LinkFile/item/Link"/></xsl:variable>
                    <xsl:variable name="alt"><xsl:value-of select="Name"/></xsl:variable>
                    <xsl:variable name="degree"><xsl:value-of select="Degree"/></xsl:variable>
                    <xsl:variable name="edu3"><xsl:value-of select="Education3"/></xsl:variable>
                    <xsl:variable name="email"><xsl:value-of select="Email"/></xsl:variable>
                    <xsl:variable name="site"><xsl:value-of select="Site"/></xsl:variable>
                    <xsl:variable name="site2"><xsl:value-of select="Site2"/></xsl:variable>
                    <xsl:variable name="stagfull"><xsl:value-of select="StagFull"/></xsl:variable>
                    <xsl:variable name="stagedu"><xsl:value-of select="StagEdu"/></xsl:variable>
                    <xsl:variable name="opit"><xsl:value-of select="Opit"/></xsl:variable>
                    <xsl:variable name="quali"><xsl:value-of select="Qualification"/></xsl:variable>
                    <xsl:variable name="qualidocname"><xsl:value-of select="QualiDocName"/></xsl:variable>
                    <xsl:variable name="trayning"><xsl:value-of select="Trayning"/></xsl:variable>
                    <xsl:variable name="trayning2"><xsl:value-of select="Trayning2"/></xsl:variable>
                    <xsl:variable name="link1"><xsl:value-of select="FileWithName/item/LinkFile/Link"/></xsl:variable>
                    <xsl:variable name="link2"><xsl:value-of select="FileWithName2/item/LinkFile/Link"/></xsl:variable>
                    <xsl:variable name="link3"><xsl:value-of select="FileWithName3/item/LinkFile/Link"/></xsl:variable>
                  <table cellspacing="1" class="tablesorter unit t_mobile" style='width: 100%;margin:0!important;'>
                    
                    <tbody>
                      <tr>
              <td  style='width: 20%;' class="mob-clear">
                        <xsl:if test="$photolink!=''"><a href='{$photolink}' target='_blank' class="highslide" onclick='return hs.expand(this)'>
                          <xsl:if test="$photolink!=''"><img src="{$photolink}"  alt="{$alt}" title="{$alt}"  border="0"  class="thumbl"/></xsl:if></a></xsl:if>
                         <!--  <div class='highslide-caption'> -->
                            <!-- <b itemprop='fio'><xsl:value-of select="Name"/></b> -->
                            <xsl:if test="Position!=''">
                              <br/><b style="margin-right:5px;">Должность:</b><span itemprop='Post'><xsl:value-of select="Position"/></span>
                            </xsl:if>
                    <!--       </div> -->
                        </td>
                        <td class="mob-clear" width="100%">
                          <table cellspacing="1" class="tablesorter" style='width: 100%;margin:0!important;background-color:#fff;'>
                            <tr>
                              <td style="border-bottom:2px solid #f7f7f7;margin-bottom:10px;padding-bottom:10px;">
                                <xsl:if test="Name!=''">
                                  <b itemprop='fio' style="font-size:11pt;"><xsl:value-of select="Name"/></b>
                                </xsl:if>
                                <br/><xsl:if test="$degree!=''"><br/><b style="margin-right:5px;">Ученая степень:</b><span itemprop='Degree'><xsl:value-of select="Degree"/>; </span></xsl:if>
                                <xsl:if test="$edu3!=''"><br/><b style="margin-right:5px;">Ученое звание:</b><span itemprop='AcademStat'><xsl:value-of select="Education3"/>; </span></xsl:if>
                                <xsl:if test="Disciplines!=''">
                                  <br/><b style="margin-right:5px;">Преподаваемые дисциплины:</b><span itemprop='TeachingDiscipline'><xsl:value-of select="Disciplines"/></span>
                                </xsl:if>
                              </td>
                            </tr>
                            <xsl:if test="Tel!=''">
                              <tr>
                                <td>
                                  <b>Тел.: </b><span itemprop=''><xsl:value-of select="Tel"/></span>
                                </td>
                              </tr>
                            </xsl:if>
                            <xsl:if test="$email!=''">
                              <tr>
                                <td>
                                  <b>E-Mail: </b><a href='mailto:{$email}' target='_blank'><span itemprop='e-mail'><xsl:value-of select="Email"/></span></a>
                                </td>
                              </tr>
                            </xsl:if>
                            <xsl:if test="$site!=''">
                              <tr>
                                <td>
                                  <b>Сайт: </b><a href='{$site}' target="_blank"><xsl:value-of select="Site"/></a>
                                </td>
                              </tr>
                            </xsl:if>
                            <xsl:if test="$site2!=''">
                              <tr>
                                <td>
                                  <b>Портфолио: </b><a href='{$site2}' target="_blank"><xsl:value-of select="Site2"/></a>
                                </td>
                              </tr>
                            </xsl:if>
                            <xsl:if test="$stagfull!=''">
                              <tr>
                                <td>
                                  <b>Общий стаж: </b><xsl:value-of select="StagFull"/>
                                </td>
                              </tr>
                            </xsl:if>
                            <xsl:if test="$stagedu!=''">
                              <tr>
                                <td>
                                  <b>Педагогический стаж: </b><span itemprop='GenExperience'><xsl:value-of select="StagEdu"/></span>
                                </td>
                              </tr>
                            </xsl:if>
                            <xsl:if test="StagProf!=''">
                              <tr>
                                <td>
                                  <b>Стаж по специальности: </b><span itemprop='SpecExperience'><xsl:value-of select="StagProf"/></span>
                                </td>
                              </tr>
                            </xsl:if>
                            <xsl:if test="StagInOO!=''">
                              <tr>
                                <td>
                                  <b>Стаж работы в данной ОО: </b><xsl:value-of select="StagInOO"/>
                                </td>
                              </tr>
                            </xsl:if>
                            <xsl:if test="$opit!=''">
                              <tr>
                                <td>
                                  <b>Опыт работы: </b><xsl:value-of select="Opit"/>
                                </td>
                              </tr>
                            </xsl:if>
                            <xsl:if test="Education!=''">
                              <tr>
                                <td>
                                  <b>Уровень образования: </b><xsl:value-of select="Education"/>
                                </td>
                              </tr>
                            </xsl:if>
                            <xsl:if test="Education_spec!=''">
                              <tr>
                                <td>
                                  <b>Специальность и квалификация по диплому: </b><xsl:value-of select="Education_spec"/>
                                </td>
                              </tr>
                            </xsl:if>
                            <xsl:if test="$quali!='Level4'">
                              <tr>
                                <td>
                                  <b>Категория: </b><br/><xsl:if test="$quali='Level1'">высшая категория </xsl:if>
                                  <xsl:if test="$quali='Level2'">первая категория </xsl:if>
                                  <xsl:if test="$quali='Level5'">вторая категория </xsl:if>
                                  <xsl:if test="$quali='Level3'">соответствие занимаемой должности </xsl:if>с <xsl:value-of select="QualiDateStart"/> по <xsl:value-of select="QualiDateEnd"/>
                                <br/>
                                  <xsl:if test="$qualidocname=''">Приказ </xsl:if><xsl:if test="$qualidocname!=''"><span style="margin-right:5px;"><xsl:value-of select="QualiDocName"/></span></xsl:if>№<xsl:value-of select="QualiDocNom"/> от <xsl:value-of select="QualiDocDate"/>
                                <br/>
                                  <span>Издал </span><xsl:value-of select="QualiIzdat"/>
                                </td>
                              </tr>
                            </xsl:if>
                            <xsl:if test="Education4!=''">
                              <tr>
                                <td>
                                  <b>Направление подготовки и/или специальности: </b><span itemprop='EmployeeQualification'><xsl:value-of select="Education4"/></span>
                                </td>
                              </tr>
                            </xsl:if>
                            <xsl:if test="$trayning!=''">
                              <tr>
                                <td>
                                  <b>Повышение квалификации: </b><span itemprop='ProfDevelopment'><xsl:value-of select="Trayning"/></span>
                                </td>
                              </tr>
                            </xsl:if>
                            <xsl:if test="$trayning2!=''">
                              <tr>
                                <td>
                                  <b>Профессиональная переподготовка: </b><xsl:value-of select="Trayning2"/>
                                </td>
                              </tr>
                            </xsl:if>
                            <xsl:if test="($link1!='') or ($link2!='') or ($link3!='')">
                              <tr>
                                <td>
                                  <b>Документы: </b>
                                </td>
                              </tr>
                            </xsl:if>
                            <xsl:if test="$link1!=''">
                              <tr>
                                <td>
                                  <span class="fileicon"><a href='{$link1}' target='_blank'><xsl:value-of select="FileWithName/item/Name"/></a></span><span class="infofile">(<xsl:value-of select="FileWithName/item/LinkFile/TYPE"/>; <xsl:value-of disable-output-escaping="yes" select="FileWithName/item/LinkFile/SIZE"/>)</span>
                                </td>
                              </tr>
                            </xsl:if>
                            <xsl:if test="$link2!=''">
                              <tr>
                                <td>
                                  <span class="fileicon"><a href='{$link2}' target='_blank'><xsl:value-of select="FileWithName2/item/Name"/></a></span><span class="infofile">(<xsl:value-of select="FileWithName2/item/LinkFile/TYPE"/>; <xsl:value-of disable-output-escaping="yes" select="FileWithName2/item/LinkFile/SIZE"/>)</span>
                                </td>
                              </tr>
                            </xsl:if>
                            <xsl:if test="$link3!=''">
                              <tr>
                                <td>
                                  <span class="fileicon"><a href='{$link3}' target='_blank'><xsl:value-of select="FileWithName3/item/Name"/></a></span><span class="infofile">(<xsl:value-of select="FileWithName3/item/LinkFile/TYPE"/>; <xsl:value-of disable-output-escaping="yes" select="FileWithName3/item/LinkFile/SIZE"/>)</span>
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
                  </xsl:for-each>         
                  </div>
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