<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="structurahtml.xsl"/>
<xsl:import href="scriptsandcss.xsl"/>


<xsl:variable name="pagename" >Образование</xsl:variable>
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
           
<!--page-04 Образование-->
            <xsl:if test="EditPasport/Eduinfo/FaceInformation/ObrDeyat/EduLevels != ''"> 
            <fieldset class='information'>
                <legend><h3>Уровни образования</h3></legend>
                <span itemprop='EduLevel'>
                  <table border="0" cellspacing="0" cellpadding="3" style='width: 100%;' class="unit t_mobile">
                    <tbody>
                    <xsl:for-each select="EditPasport/Eduinfo/FaceInformation/ObrDeyat/EduLevels">
                      <tr>
                        <td>
                           <xsl:if test="(Lvl1='1') or (Lvl101='1') or (Lvl2='1') or (Lvl3='1') or (Lvl4='1') or (Lvl401='1')"> 
                            <b>Общее образование</b> (уровни общего образования): 
                            <ul>
                              <xsl:if test="Lvl1='1'"><li>дошкольное образование;</li></xsl:if>
                              <xsl:if test="Lvl101='1'"><li>дошкольное образование - первый уровень общего образования;</li></xsl:if>
                              <xsl:if test="Lvl2='1'"><li>начальное общее образование;</li></xsl:if>
                              <xsl:if test="Lvl3='1'"><li>основное общее образование;</li></xsl:if>
                              <xsl:if test="Lvl4='1'"><li>среднее общее образование;</li></xsl:if>
                              <xsl:if test="Lvl401='1'"><li>среднее (полное) общее образование;</li></xsl:if>
                            </ul>
                           </xsl:if> 
                          <xsl:if test="(Lvl5='1') or (Lvl6='1') or (Lvl7='1') or (Lvl8='1') or (Lvl801='1') or (Lvl802='1')"> 
                            <b>Профессиональное образование</b> (уровни профессионального образования): <ul>
                              <xsl:if test="Lvl5='1'"><li>начальное профессиональное образование;</li></xsl:if>
                              <xsl:if test="Lvl6='1'"><li>среднее профессиональное образование;</li></xsl:if>
                              <xsl:if test="Lvl7='1'"><li>высшее профессиональное образование;</li></xsl:if>
                              <xsl:if test="Lvl8='1'"><li>высшее профессиональное образование - бакалавриат;</li></xsl:if>
                              <xsl:if test="Lvl801='1'"><li>высшее профессиональное образование - специалитет, магистратура;</li></xsl:if>
                              <xsl:if test="Lvl802='1'"><li>высшее профессиональное образование - подготовка кадров высшей квалификации;</li></xsl:if>
                            </ul>
                          </xsl:if>
                          <xsl:if test="(Lvl803='1') or (Lvl9='1') or (Lvl10='1') or (Lvl11='1')">
                            <b>Дополнительное образование</b> (подвиды дополнительного образования): 
                            <ul>
                              <xsl:if test="Lvl803='1'"><li>дополнительное образование детей;</li></xsl:if>
                              <xsl:if test="Lvl9='1'"><li>дополнительное образование взрослых;</li></xsl:if>
                              <xsl:if test="Lvl10='1'"><li>дополнительное образование детей и взрослых;</li></xsl:if>
                              <xsl:if test="Lvl11='1'"><li>дополнительное профессиональное образование;</li></xsl:if>
                            </ul>
                           </xsl:if>
                          <xsl:if test="Lvl1101='1'"><b>Профессиональное обучение</b> (послевузовское образование)</xsl:if>
                        </td>
                      </tr>
                      </xsl:for-each>
                    </tbody>
                  </table>
                </span>
            </fieldset><br/>
            </xsl:if>
            <xsl:if test="EditPasport/Eduinfo/FaceInformation/ObrDeyat/EduLevelsDop != ''"> 
              <fieldset class='information'>
                  <legend><h3>Дополнительное образование</h3></legend>
                  <table border="0" cellspacing="0" cellpadding="3" style='width: 100%;' class="unit t_mobile">
                    <tbody>
                    <xsl:for-each select="EditPasport/Eduinfo/FaceInformation/ObrDeyat/EduLevelsDop">
                        <tr>
                          <td>
                            <b>Подвиды дополнительного образования</b>: 
                            <ul>
                              <xsl:if test="Lvl5='1'"><li>дополнительное образование детей;</li></xsl:if>
                              <xsl:if test="Lvl10='1'"><li>дополнительное образование взрослых;</li></xsl:if>
                              <xsl:if test="Lvl11='1'"><li>дополнительное образование детей и взрослых;</li></xsl:if>
                              <xsl:if test="Lvl1101='1'"><li>дополнительное профессиональное образование;</li></xsl:if>
                            </ul>
                          </td>
                        </tr>
                    </xsl:for-each>
                    </tbody>
                  </table>
              </fieldset><br/>
            </xsl:if>
            <xsl:if test="EditPasport/Eduinfo/FaceInformation/ObrDeyat/EduForms != ''"> 
            <fieldset class='information'>
                <legend><h3>Формы обучения</h3></legend>
                <span itemprop='EduForm'>
                  <table border="0" cellspacing="0" cellpadding="3" style='width: 100%;' class="unit t_mobile">
                    <tbody>
                    <xsl:for-each select="EditPasport/Eduinfo/FaceInformation/ObrDeyat/EduForms">
                      <tr>
                        <td><xsl:if test="Lvl1='1'">очная; </xsl:if><xsl:if test="Lvl2='1'">заочная; </xsl:if><xsl:if test="Lvl3='1'">вечерняя; </xsl:if><xsl:if test="Lvl4='1'">дистанционная; </xsl:if><xsl:if test="Lvl5='1'">семейная; </xsl:if><xsl:if test="Lvl6='1'">индивидуальная; </xsl:if><xsl:if test="Lvl7='1'"><xsl:value-of select="Lvl7Txt"/></xsl:if></td>
                      </tr>
                    </xsl:for-each>
                    </tbody>
                  </table>
                </span>
            </fieldset><br/>
          </xsl:if>
            <xsl:if test="EditPasport/Eduinfo/FaceInformation/MainInformation/NormSr !=''">
              <fieldset class='information'>
                  <legend><h3>Нормативный срок обучения</h3></legend>
                  <span itemprop='LearningTerm'>
                    <table border="0" cellspacing="0" cellpadding="3" style='width: 100%;' class="unit t_mobile">
                      <tbody>
                      <xsl:for-each select="EditPasport/Eduinfo/FaceInformation/MainInformation">
                        <tr>
                          <td><xsl:value-of disable-output-escaping="yes" select="NormSr"/></td>
                        </tr>
                      </xsl:for-each>
                      </tbody>
                    </table>
                  </span>
              </fieldset><br/>
            </xsl:if>

			     <fieldset class='information'>
                <legend><h3>Срок действия аккредитации</h3></legend>
                <span itemprop='DateEnd'>
                  <table border="0" cellspacing="0" cellpadding="3" style='width: 100%;' class="unit t_mobile">
                    <tbody>
                    <xsl:for-each select="EditPasport/Eduinfo/FaceInformation/MainInformation">
                      <tr>
                        <td>
                        <xsl:if test="AcredDate/HideDate='1'"><b>Аккредитация:</b> отсутствует</xsl:if>
                        <xsl:if test="AcredDate/Hide2Date='1'"></xsl:if>
                        <xsl:if test="AcredDate/NotLimit='1'"><b>Аккредитация:</b> бессрочная</xsl:if>
                        <xsl:if test="AcredDate/Hide4Date='1'"><b>Аккредитация:</b> бессрочная</xsl:if>
                        <xsl:if test="AcredDate/Hide5Date='1'"><b>Аккредитация:</b> не предусмотрена</xsl:if>
                        <xsl:if test="AcredDate/Hide3Date='1'"><b>Аккредитация до: </b><xsl:value-of select="AcredDate/SelDate"/></xsl:if>
                        <br/><xsl:if test="AcredDateText!=''"><span><xsl:value-of select="AcredDateText"/></span></xsl:if>
                        </td>
                      </tr>
                    </xsl:for-each>
                    </tbody>
                  </table>
                </span>
            </fieldset><br/>
            <xsl:if test="count(EditPasport/Eduinfo/FaceInformation/ObrDeyat/EduProgrammsList/item) > 0">
              <fieldset class='information'>
                <legend><h3>Образовательные программы, в том числе реализуемые адаптированные образовательные программы</h3></legend>
                  <div style="width:100%;margin:10px 0px 15px 0px;">
                  <xsl:for-each select="EditPasport/Eduinfo/FaceInformation/ObrDeyat/EduProgrammsList/item">
                    <xsl:variable name="link"><xsl:value-of select="WorkFile/item/Link"/></xsl:variable>
                    <xsl:variable name="link2"><xsl:value-of select="WorkFile2/item/Link"/></xsl:variable>
                    <xsl:variable name="link3"><xsl:value-of select="WorkFile3/item/Link"/></xsl:variable>
                    <xsl:variable name="link4"><xsl:value-of select="WorkFile4/item/Link"/></xsl:variable>
                  <table cellspacing="0" class="tablesorter unit zagol-2" style='width: 100%;margin:0!important;'>
                    <tbody>
                      <xsl:if test="ItemName !=''">
                        <tr>
                          <td class="line-h14s">
                            <b><xsl:value-of select="ItemName"/></b>
                          </td>
                        </tr>
                      </xsl:if>
                      <xsl:if test="AcrDateState='NotLimit'">
                        <tr>
                          <td class="line-h14s">
                            <b>Аккредитация: </b><i>бессрочная</i>
                          </td>
                        </tr>
                      </xsl:if>
                      <xsl:if test="AcrDateState='ForDate'">
                        <tr>
                          <td class="line-h14s">
                            <b>Аккредитация до: </b><i><xsl:value-of select="SelDate"/></i>
                          </td>
                        </tr>
                      </xsl:if>
                      <xsl:if test="AcrDateState='HideDate'">
                        <tr>
                          <td class="line-h14s">
                            <b>Аккредитация: </b><i>отсутствует</i>
                          </td>
                        </tr>
                      </xsl:if>
                      <xsl:if test="EduLevel !=''">
                        <tr>
                          <td class="line-h14s">
                            <b>Уровень образования: </b><i itemprop='EduLavel'><xsl:value-of select="EduLevel"/></i>
                          </td>
                        </tr>
                      </xsl:if>
                      <xsl:if test="Kod !=''">
                        <tr>
                          <td class="line-h14s">
                            <b>Код профессии, специальности, направления подготовки: </b><i itemprop='EduCode'><xsl:value-of select="Kod"/></i>
                          </td>
                        </tr>
                      </xsl:if>
                      <xsl:if test="Prof !=''">
                        <tr>
                          <td class="line-h14s">
                            <b>Наименование профессии, специальности, направления подготовки: </b><span style="margin-left:5px;"><i><xsl:value-of select="Prof"/></i></span>
                          </td>
                        </tr>
                      </xsl:if>
                      <xsl:if test="Desc !=''">
                        <tr>
                          <td class="line-h14s">
                            <b>Описание: </b><span style="margin-left:5px;"><i><xsl:value-of select="Desc"/></i></span>
                          </td>
                        </tr>
                      </xsl:if>
                      <xsl:if test="$link!=''">
                        <tr>
                          <td class="line-h14s">
                            
                             
                              <span style="white-space:nowrap;"><span class="fileicon"><a href='{$link}' target='_blank'>Программа</a></span><span class="infofile">(<xsl:value-of select="WorkFile/item/TYPE"/>; <xsl:value-of disable-output-escaping="yes" select="WorkFile/item/SIZE"/>)</span></span>
                            
                          </td>
                        </tr>
                      </xsl:if>
                      <xsl:if test="$link2!=''">
                        <tr>
                          <td class="line-h14s">
                            
                              <b>Направления научной (научно-исследовательской) деятельности: </b>
                              <span style="white-space:nowrap;"><span class="fileicon"><a href='{$link2}' target='_blank'>Файл</a></span><span class="infofile">(<xsl:value-of select="WorkFile2/item/TYPE"/>; <xsl:value-of disable-output-escaping="yes" select="WorkFile2/item/SIZE"/>)</span></span>
                            
                          </td>
                        </tr>
                      </xsl:if>
                      <xsl:if test="$link3!=''">
                        <tr>
                          <td class="line-h14s">
                            
                              <b>Результаты научной (научно-исследовательской) деятельности: </b>
                              <span style="white-space:nowrap;"><span class="fileicon"><a href='{$link3}' target='_blank'>Файл</a></span><span class="infofile">(<xsl:value-of select="WorkFile3/item/TYPE"/>; <xsl:value-of disable-output-escaping="yes" select="WorkFile3/item/SIZE"/>)</span></span>
                            
                          </td>
                        </tr>
                      </xsl:if>
                      <xsl:if test="$link4!=''">
                        <tr>
                          <td class="line-h14s">
                            
                              <b>Научно-исследовательская база для осуществления научной (научно-исследовательской) деятельности: </b>
                              <span style="white-space:nowrap;"><span class="fileicon"><a href='{$link4}' target='_blank'>Файл</a></span><span class="infofile">(<xsl:value-of select="WorkFile4/item/TYPE"/>; <xsl:value-of disable-output-escaping="yes" select="WorkFile4/item/SIZE"/>)</span></span>
                            
                          </td>
                        </tr>
                      </xsl:if>
                      <tr>
                        <td style="height:15px;width:100%;background-color:#cccccc;padding:0;">
                        </td>
                      </tr>
                    </tbody>
                  </table>
                  </xsl:for-each>
                 </div>
              </fieldset><br/>
            </xsl:if>
            <xsl:if test="count(EditPasport/Eduinfo/FaceInformation/ObrDeyat/education_plan/PeriodFile/item) > 0">
              <fieldset class='information'>
                <legend><h3>Учебный план</h3></legend>
                  <span itemprop='education_plan'>
                    <table cellspacing="1" class="tablesorter table-3" style='width: 100%;'>
                      <tbody>
                      <xsl:for-each select="EditPasport/Eduinfo/FaceInformation/ObrDeyat/education_plan/PeriodFile/item">
                      <xsl:variable name="link"><xsl:value-of select="LinkFile/item/Link"/></xsl:variable>
                      <xsl:variable name="timestart"><xsl:value-of select="TimeStart"/></xsl:variable>
                      <xsl:variable name="timeend" select="$timestart+1"></xsl:variable>
                      <tr style="border-bottom:0!important;">
                      <td class="thtd line-h14s">
                        <span><b>Год: </b><xsl:if test="PeriodType='2'"><xsl:value-of select="TimeStart"/>-<xsl:value-of select="$timeend"/> учебный год</xsl:if>
                            <xsl:if test="PeriodType='1'"><xsl:value-of select="TimeStart"/> год</xsl:if></span>
                      </td>
                      
                    </tr>
                        <tr style="border-bottom:0!important;">

                          <td>
                            <xsl:if test="$link!=''">
                            <span class="fileicon"><a href='{$link}' target='_blank'><xsl:value-of select="Name"/></a></span><span class="infofile">(<xsl:value-of select="LinkFile/item/TYPE"/>; <xsl:value-of disable-output-escaping="yes" select="LinkFile/item/SIZE"/>)</span></xsl:if>
                          </td>
                        </tr>
                      </xsl:for-each>
                      </tbody>
                    </table>
                  </span>
              </fieldset><br/> 
            </xsl:if>     
            <xsl:if test="count(EditPasport/Eduinfo/FaceInformation/ObrDeyat/EduAnotF/EduAnotFull/item) > 0">      
              <fieldset class='information'>
                <legend><h3>Аннотации к рабочим программам дисциплин</h3></legend>
                  <span itemprop='education_annotation'>
                    <table cellspacing="1" class="tablesorter table-3" style='width: 100%;'>
                      <tbody>
                      <xsl:for-each select="EditPasport/Eduinfo/FaceInformation/ObrDeyat/EduAnotF/EduAnotFull/item">
                      <xsl:variable name="link"><xsl:value-of select="LinkFile/item/Link"/></xsl:variable>
                    <tr style="border-bottom:0!important;">
                      <td class="thtd line-h14s">
                        <span><b>Класс/год обучения: </b><xsl:if test="EduClass!=''"><xsl:value-of select="EduClass"/></xsl:if></span>
                      </td>
                      
                    </tr >
                        <tr style="border-bottom:0!important;" >
                        
                          <td >
                            <xsl:if test="$link!=''">
                            <span class="fileicon"><a href='{$link}' target='_blank'><xsl:value-of select="DisciplineTxt"/></a></span><span class="infofile">(<xsl:value-of select="LinkFile/item/TYPE"/>; <xsl:value-of disable-output-escaping="yes" select="LinkFile/item/SIZE"/>)</span></xsl:if><br/>
                          
                          <xsl:if test="Anot!=''"><span><b>Аннотация: </b><xsl:value-of select="Anot"/></span></xsl:if><br/>
                          </td>
                        </tr>
                      </xsl:for-each>
                      </tbody>
                    </table>
                  </span>
              </fieldset><br/>
            </xsl:if>
            <xsl:if test="count(EditPasport/Eduinfo/FaceInformation/ObrDeyat/education_shedule/PeriodFile/item) > 0">
              <fieldset class='information'>
                <legend><h3>Календарный учебный график</h3></legend>
                  <span itemprop='education_shedule'>
                    <table cellspacing="1" class="tablesorter table-3" style='width: 100%;'>
                      <tbody>
                      <xsl:for-each select="EditPasport/Eduinfo/FaceInformation/ObrDeyat/education_shedule/PeriodFile/item">
                      <xsl:variable name="link"><xsl:value-of select="FileWithName/item/LinkFile/Link"/></xsl:variable>
                      <xsl:variable name="timestart"><xsl:value-of select="TimeStart"/></xsl:variable>
                      <xsl:variable name="timeend" select="$timestart+1"></xsl:variable>
                      <tr style="border-bottom:0!important;">
                      <td class="thtd line-h14s">
                        <span><b>Год: </b><xsl:if test="PeriodType='2'"><xsl:value-of select="TimeStart"/>-<xsl:value-of select="$timeend"/> учебный год</xsl:if>
                            <xsl:if test="PeriodType='1'"><xsl:value-of select="TimeStart"/> год</xsl:if></span>
                      </td>
                      
                    </tr>
                        <tr style="border-bottom:0!important;">
                          <td>
                            <xsl:if test="$link!=''">
                            <span class="fileicon"><a href='{$link}' target='_blank'><xsl:value-of select="FileWithName/item/Name"/></a></span><span class="infofile">(<xsl:value-of select="FileWithName/item/LinkFile/TYPE"/>; <xsl:value-of disable-output-escaping="yes" select="FileWithName/item/LinkFile/SIZE"/>)</span></xsl:if>
                          </td>
                        </tr>
                      </xsl:for-each>
                      </tbody>
                    </table>
                  </span>
              </fieldset><br/>
            </xsl:if>
            <xsl:if test="count(EditPasport/Eduinfo/FaceInformation/ObrDeyat/EduMetodDocs/EduAnot/item) > 0">
              <fieldset class='information'>
                <legend><h3>Методические и иные документы</h3></legend>
                  <span itemprop='methodology'>
                    <table cellspacing="1" class="tablesorter table-3" style='width: 100%;'>
                      <tbody>
                      <xsl:for-each select="EditPasport/Eduinfo/FaceInformation/ObrDeyat/EduMetodDocs/EduAnot/item">
                      <xsl:variable name="link"><xsl:value-of select="LinkFile/item/Link"/></xsl:variable>
                      <xsl:variable name="link2"><xsl:value-of select="Link"/></xsl:variable>
                      <tr style="border-bottom:0!important;">
                      <td class="thtd line-h14s">
                        <span><b>Класс/год обучения: </b><xsl:if test="EduClass!=''"><xsl:value-of select="EduClass"/></xsl:if></span>
                      </td>
                      
                    </tr >
                        <tr style="border-bottom:0!important;">
                          <td>
                            <xsl:if test="$link!=''">
                            <span class="fileicon"><a href='{$link}' target='_blank'><xsl:value-of select="DisciplineTxt"/></a></span><span class="infofile">(<xsl:value-of select="LinkFile/item/TYPE"/>; <xsl:value-of disable-output-escaping="yes" select="LinkFile/item/SIZE"/>)</span></xsl:if>
                <!--<xsl:if test="$link2!=''"><a href='{$link2}' target='_blank'>Ссылка</a></xsl:if>-->
                          </td>
                        </tr>
                      </xsl:for-each>
                      </tbody>
                    </table>
                  </span>
              </fieldset><br/>
            </xsl:if>
            <xsl:if test="count(EditPasport/Eduinfo/FaceInformation/ObrDeyat/EduMetodDocs/EduAnot/item) > 0">
            <fieldset class='information'>
                <legend><h3>Реализуемые образовательные программы</h3></legend>
                  <table cellspacing="1" class="tablesorter table-3" style='width: 100%;'>

                    <tbody>
                    <xsl:for-each select="EditPasport/Eduinfo/FaceInformation/ObrDeyat/EduObrProgramms/EduAnot/item">
                    <xsl:variable name="link"><xsl:value-of select="LinkFile/item/Link"/></xsl:variable>
                    <xsl:variable name="link2"><xsl:value-of select="Link"/></xsl:variable>
                    <tr style="border-bottom:0!important;">
                      <td class="thtd line-h14s">
                        <span><b>Класс/год обучения: </b><xsl:if test="EduClass!=''"><xsl:value-of select="EduClass"/></xsl:if></span>
                      </td>
                      
                    </tr >
                      <tr style="border-bottom:0!important;">

                        <td>
                          <xsl:if test="$link!=''">
                          <span class="fileicon"><a href='{$link}' target='_blank'><xsl:value-of select="DisciplineTxt"/></a></span><span class="infofile">(<xsl:value-of select="LinkFile/item/TYPE"/>; <xsl:value-of disable-output-escaping="yes" select="LinkFile/item/SIZE"/>)</span></xsl:if>
              <!--<xsl:if test="$link2!=''"><a href='{$link2}' target='_blank'>Ссылка</a></xsl:if>-->
                        </td>
                      </tr>
                    </xsl:for-each>
                    </tbody>
                  </table>
              </fieldset><br/>  
            </xsl:if>
            <xsl:if test="count(EditPasport/Eduinfo/FaceInformation/ObrDeyat/EduCountsList1/EduCountsItemYear/item) > 0">         
              <fieldset class='information'>
                <legend><h3>Численность обучающихся по программам</h3></legend>
                  <div style="width:100%;margin:10px 0px 15px 0px;">
                    <xsl:for-each select="EditPasport/Eduinfo/FaceInformation/ObrDeyat/EduCountsList1/EduCountsItemYear/item">
                    <xsl:variable name="timestart"><xsl:value-of select="TimeStart"/></xsl:variable>
                    <xsl:variable name="timeend" select="$timestart+1"></xsl:variable>
                    <table cellspacing="0" class="tablesorter unit zagol-2" style='width: 100%;overflow:hidden;margin:0!important;'>
                      <tbody>
                        <tr>
                          <td class="thtd line-h14s">
                            <b style="margin-right:10px;">Учебный год:</b><span><xsl:value-of select="TimeStart"/>-<xsl:value-of select="$timeend"/></span>
                          </td>
                        </tr>
                        <tr>
                          <td class="line-h14s">
                            <b style="margin-right:10px;">Образовательная программа / Профессия:</b><span><xsl:value-of select="Programm"/></span>
                          </td>
                        </tr>
                        <xsl:if test="Count1!='0'">
                          <tr>
                            <td class="line-h14s">
                              <b itemprop='BudgAmount' style="margin-right:10px;">За счет ассигнований федерального бюджета:</b><span itemprop='BudgAmount'><xsl:value-of select="Count1"/></span>
                            </td>
                          </tr>
                        </xsl:if>
                        <xsl:if test="Count2!='0'">
                          <tr>
                            <td class="line-h14s">
                              <b itemprop='BudgAmount' style="margin-right:10px;">За счет бюджета субъектов РФ:</b><span itemprop='BudgAmount'><xsl:value-of select="Count2"/></span>
                            </td>
                          </tr>
                        </xsl:if>
                        <xsl:if test="Count3!='0'">
                        <tr>
                          <td class="line-h14s">
                            <b itemprop='BudgAmount' style="margin-right:10px;">За счет местных бюджетов:</b><span itemprop='BudgAmount'><xsl:value-of select="Count3"/></span>
                          </td>
                        </tr>
                      </xsl:if>
                      <xsl:if test="Count4!='0'">
                        <tr>
                          <td class="line-h14s">
                            <b itemprop='BudgAmount' style="margin-right:10px;">По договорам об образовании за счет средств физических и (или) юридических лиц:</b><span itemprop='BudgAmount'><xsl:value-of select="Count4"/></span>
                          </td>
                        </tr>
                      </xsl:if>
                      </tbody>
                    </table>
                    </xsl:for-each>
                  </div>
              </fieldset><br/>            
            </xsl:if>
            <xsl:if test="count(EditPasport/Eduinfo/FaceInformation/ObrDeyat/EduCountsList3/EduCountsList3/item) > 0"> 
              <fieldset class='information'>
                <legend><h3>Численность обучающихся по возрастам / годам обучения</h3></legend>
                    <xsl:for-each select="EditPasport/Eduinfo/FaceInformation/ObrDeyat/EduCountsList3/EduCountsList3/item">
                    <xsl:variable name="timestart"><xsl:value-of select="TimeStart"/></xsl:variable>
                    <xsl:variable name="timeend" select="$timestart+1"></xsl:variable>
                    <xsl:variable name="doo0" select="doo0"></xsl:variable>
                    <xsl:variable name="doo1" select="doo1"></xsl:variable>
                    <xsl:variable name="doo2" select="doo2"></xsl:variable>
                    <xsl:variable name="doo3" select="doo3"></xsl:variable>
                    <xsl:variable name="doo4" select="doo4"></xsl:variable>
                    <xsl:variable name="doo5" select="doo5"></xsl:variable>
                    <xsl:variable name="doo6" select="doo6"></xsl:variable>
                    <xsl:variable name="doo7" select="doo7"></xsl:variable>
                    <xsl:variable name="doosum" select="$doo0+$doo1+$doo2+$doo3+$doo4+$doo5+$doo6+$doo7"></xsl:variable>
                    <xsl:for-each select="DooDopsGroups/item">
                          <xsl:variable name="doodop" select="count"></xsl:variable>
                          <xsl:variable name="doodopsum"><xsl:value-of select="$doodop+$doosum"/></xsl:variable>

                      </xsl:for-each>
                 
                    <!-- <xsl:if test="count(DooDopsGroups/item)">
                      <xsl:for-each select="DooDopsGroups/item">
                          <xsl:variable name="doodopsgroups" select="count"></xsl:variable>
                          <xsl:variable name="doodopsgroupsum" select="$doodopsgroups + $doosum"></xsl:variable>
                      </xsl:for-each>
                    </xsl:if> -->
                    
                    <xsl:variable name="nsch0" select="nsch0"></xsl:variable>
                    <xsl:variable name="nsch1" select="nsch1"></xsl:variable>
                    <xsl:variable name="nsch2" select="nsch2"></xsl:variable>
                    <xsl:variable name="nsch3" select="nsch3"></xsl:variable>
                    <xsl:variable name="nsch4" select="nsch4"></xsl:variable>
                    <xsl:variable name="nschsum" select="$nsch0+$nsch1+$nsch2+$nsch3+$nsch4"></xsl:variable>
                    <xsl:variable name="msch5" select="msch5"></xsl:variable>
                    <xsl:variable name="msch1" select="msch1"></xsl:variable>
                    <xsl:variable name="msch2" select="msch2"></xsl:variable>
                    <xsl:variable name="msch3" select="msch3"></xsl:variable>
                    <xsl:variable name="msch4" select="msch4"></xsl:variable>
                    <xsl:variable name="mschsum" select="$msch5+$msch1+$msch2+$msch3+$msch4"></xsl:variable>
                    <xsl:variable name="hsch1" select="hsch1"></xsl:variable>
                    <xsl:variable name="hsch2" select="hsch2"></xsl:variable>
                    <xsl:variable name="hsch3" select="hsch3"></xsl:variable>
                    <xsl:variable name="hschsum" select="$hsch1+$hsch2+$hsch3"></xsl:variable>
                    <xsl:variable name="prof1" select="prof1"></xsl:variable>
                    <xsl:variable name="prof2" select="prof2"></xsl:variable>
                    <xsl:variable name="prof3" select="prof3"></xsl:variable>
                    <xsl:variable name="prof4" select="prof4"></xsl:variable>
                    <xsl:variable name="prof5" select="prof5"></xsl:variable>
                    <xsl:variable name="prof6" select="prof6"></xsl:variable>
                    <xsl:variable name="prof7" select="prof7"></xsl:variable>
                    <xsl:variable name="profsum" select="$prof1+$prof2+$prof3+$prof4+$prof5+$prof6+$prof7"></xsl:variable>
                    <xsl:variable name="dop1" select="dop1"></xsl:variable>
                    <xsl:variable name="dop2" select="dop2"></xsl:variable>
                    <xsl:variable name="dop3" select="dop3"></xsl:variable>
                    <xsl:variable name="dop4" select="dop4"></xsl:variable>
                    <xsl:variable name="dop5" select="dop5"></xsl:variable>
                    <xsl:variable name="dop6" select="dop6"></xsl:variable>
                    <xsl:variable name="dop7" select="dop7"></xsl:variable>
                    <xsl:variable name="dopsum" select="$dop1+$dop2+$dop3+$dop4+$dop5+$dop6+$dop7"></xsl:variable>
                    <xsl:variable name="allsum" select="$doosum+$nschsum+$mschsum+$hschsum+$profsum+$dopsum"></xsl:variable>
  				          <table cellspacing="1" class="tablesorter" style='width: 100%;margin:0!important;'>
                      <tbody>
  				              <tr>
                          <td style="background-color:#cccccc;padding:8px 5px;"><b style="margin-right:10px;">Учебный год:</b><xsl:value-of select="TimeStart"/>-<xsl:value-of select="$timeend"/>
                          </td>
                        </tr>
                      </tbody>
                    </table>
                    <table border="0" cellspacing="0" cellpadding="3" class="zagol-2 unit" style='width: 100%;'>
                      <tbody>
                        <xsl:if test="($doo0!='0') or ($doo1!='0') or ($doo2!='0') or ($doo3!='0') or ($doo4!='0') or ($doo5!='0') or ($doo6!='0') or ($doo7!='0') "> 
                          <tr width="100%"><td width="auto" style="width:auto;"><b>Дошкольное образование</b>: 
                          <b><xsl:value-of select="$doosum"/></b></td></tr>
                          <xsl:if test="doo0!='0'"><tr><td>Группа раннего возраста: <xsl:value-of select="doo0"/></td></tr></xsl:if>
                          <xsl:if test="doo1!='0'"><tr><td>Ясельная группа: <xsl:value-of select="doo1"/></td></tr></xsl:if>
                          <xsl:if test="doo2!='0'"><tr><td>Младшая группа: <xsl:value-of select="doo2"/></td></tr></xsl:if>
                          <xsl:if test="doo3!='0'"><tr><td>Средняя группа: <xsl:value-of select="doo3"/></td></tr></xsl:if>
                          <xsl:if test="doo4!='0'"><tr><td>Старшая группа: <xsl:value-of select="doo4"/></td></tr></xsl:if>
                          <xsl:if test="doo5!='0'"><tr><td>Подготовительная группа: <xsl:value-of select="doo5"/></td></tr></xsl:if>
                          <xsl:if test="doo6!='0'"><tr><td>Группа круглосуточного пребывания: <xsl:value-of select="doo6"/></td></tr></xsl:if>
                          <xsl:if test="doo7!='0'"><tr><td>Разновозрастная группа: <xsl:value-of select="doo7"/></td></tr></xsl:if>
                          <xsl:if test="count(DooDopsGroups/item)">
                            <xsl:for-each select="DooDopsGroups/item">
                              <tr><td><xsl:value-of select="Name"/>: <xsl:value-of select="count"/></td></tr>
                            </xsl:for-each>
                          </xsl:if>
                       </xsl:if> 
                       <xsl:if test="($nsch0!='0') or($nsch1!='0') or ($nsch2!='0') or ($nsch3!='0') or ($nsch4!='0') or ($msch1!='0') or ($msch2!='0') or ($msch3!='0') or ($msch4!='0') or ($msch5!='0') or ($hsch1!='0') or ($hsch2!='0') or ($hsch3!='0') ">
                          <tr><td style="height:2px;width:100%;background-color:#f7f7f7;padding:0;" colspan="2"></td></tr>
                          <xsl:if test="($nsch0!='0') or ($nsch1!='0') or ($nsch2!='0') or ($nsch3!='0') or ($nsch4!='0')">
                            <tr><td><b>1-4 класс</b>: <b><xsl:value-of select="$nschsum"/></b></td></tr>
                          </xsl:if>
                          <xsl:if test="nsch0!='0'"><tr><td>Подготовительный класс: <xsl:value-of select="nsch0"/></td></tr></xsl:if>
                          <xsl:if test="nsch1!='0'"><tr><td>1 класс: <xsl:value-of select="nsch1"/></td></tr></xsl:if>
                          <xsl:if test="nsch2!='0'"><tr><td>2 класс: <xsl:value-of select="nsch2"/></td></tr></xsl:if>
                          <xsl:if test="nsch3!='0'"><tr><td>3 класс: <xsl:value-of select="nsch3"/></td></tr></xsl:if>
                          <xsl:if test="nsch4!='0'"><tr><td>4 класс: <xsl:value-of select="nsch4"/></td></tr></xsl:if>
                          <xsl:if test=" ($msch1!='0') or ($msch2!='0') or ($msch3!='0') or ($msch4!='0') and ($msch5!='0')  ">
                            <tr><td><b>5-9 класс</b>: <b><xsl:value-of select="$mschsum"/></b></td></tr>
                          </xsl:if>
                          <xsl:if test="msch1!='0'"><tr><td>5 класс: <xsl:value-of select="msch1"/></td></tr></xsl:if>
                          <xsl:if test="msch2!='0'"><tr><td>6 класс: <xsl:value-of select="msch2"/></td></tr></xsl:if>
                          <xsl:if test="msch3!='0'"><tr><td>7 класс: <xsl:value-of select="msch3"/></td></tr></xsl:if>
                          <xsl:if test="msch4!='0'"><tr><td>8 класс: <xsl:value-of select="msch4"/></td></tr></xsl:if>
                          <xsl:if test="msch5!='0'"><tr><td>9 класс: <xsl:value-of select="msch5"/></td></tr></xsl:if>
                          <xsl:if test="($hsch1!='0') or ($hsch2!='0') or ($hsch3!='0') ">
                            <tr><td><b>10-11(12) класс</b>: <b><xsl:value-of select="$hschsum"/></b></td></tr>
                          </xsl:if>
                          <xsl:if test="hsch1!='0'"><tr><td>10 класс: <xsl:value-of select="hsch1"/></td></tr></xsl:if>
                          <xsl:if test="hsch2!='0'"><tr><td>11 класс: <xsl:value-of select="hsch2"/></td></tr></xsl:if>
                          <xsl:if test="hsch3!='0'"><tr><td>12 класс: <xsl:value-of select="hsch3"/></td></tr></xsl:if>
                      </xsl:if>
                        <xsl:if test="($prof1!='0') or ($prof2!='0') or ($prof3!='0') or ($prof4!='0') or ($prof5!='0') or ($prof6!='0') or ($prof7!='0') ">
                          <tr><td style="height:2px;width:100%;background-color:#f7f7f7;padding:0;" colspan="2"></td></tr>
                          <tr><td><b>Профессиональное образование</b>: <b><xsl:value-of select="$profsum"/></b></td></tr>
                          <xsl:if test="prof1!='0'"><tr><td>1 год обучения: <xsl:value-of select="prof1"/></td></tr></xsl:if>
                          <xsl:if test="prof2!='0'"><tr><td>2 год обучения: <xsl:value-of select="prof2"/></td></tr></xsl:if>
                          <xsl:if test="prof3!='0'"><tr><td>3 год обучения: <xsl:value-of select="prof3"/></td></tr></xsl:if>
                          <xsl:if test="prof4!='0'"><tr><td>4 год обучения: <xsl:value-of select="prof4"/></td></tr></xsl:if>
                          <xsl:if test="prof5!='0'"><tr><td>5 год обучения: <xsl:value-of select="prof5"/></td></tr></xsl:if>
                          <xsl:if test="prof6!='0'"><tr><td>6 год обучения: <xsl:value-of select="prof6"/></td></tr></xsl:if>
                          <xsl:if test="prof7!='0'"><tr><td>7 год обучения: <xsl:value-of select="prof7"/></td></tr></xsl:if>
                      </xsl:if>
                      <xsl:if test="($dop1!='0') or ($dop2!='0') or ($dop3!='0') or ($dop4!='0') or ($dop5!='0') or ($dop6!='0') or ($dop7!='0') ">
                          <tr><td style="height:2px;width:100%;background-color:#f7f7f7;padding:0;" colspan="2"></td></tr>
                          <tr><td><b>Дополнительное образование</b>: <b><xsl:value-of select="$dopsum"/></b></td></tr>
                          <xsl:if test="dop1!='0'"><tr><td>1 год обучения: <xsl:value-of select="dop1"/></td></tr></xsl:if>
                          <xsl:if test="dop2='0'"><tr><td>2 год обучения: <xsl:value-of select="dop2"/></td></tr></xsl:if>
                          <xsl:if test="dop3!='0'"><tr><td>3 год обучения: <xsl:value-of select="dop3"/></td></tr></xsl:if>
                          <xsl:if test="dop4!='0'"><tr><td>4 год обучения: <xsl:value-of select="dop4"/></td></tr></xsl:if>
                          <xsl:if test="dop5!='0'"><tr><td>5 год обучения: <xsl:value-of select="dop5"/></td></tr></xsl:if>
                          <xsl:if test="dop6!='0'"><tr><td>6 год обучения: <xsl:value-of select="dop6"/></td></tr></xsl:if>
                          <xsl:if test="dop7!='0'"><tr><td>7 год обучения: <xsl:value-of select="dop7"/></td></tr></xsl:if>
                      </xsl:if>
                        <tr><td style="height:2px;width:100%;background-color:#f7f7f7;padding:0;" colspan="2"></td></tr>
                        <tr><td><b>Всего</b>: <b><xsl:value-of select="$allsum"/></b></td></tr>
                      </tbody>
                    </table>
                    </xsl:for-each>
              </fieldset><br/>
			       </xsl:if>
             <xsl:if test="count(EditPasport/Eduinfo/FaceInformation/ObrDeyat/EduCountsList4/EduCountsItemProf/item) > 0"> 
                <fieldset class='information'>
                  <legend><h3>Результаты приема по профессии, специальности</h3></legend>
                    <div style="width:100%;margin:10px 0px 15px 0px;">
                      <xsl:for-each select="EditPasport/Eduinfo/FaceInformation/ObrDeyat/EduCountsList4/EduCountsItemProf/item">
                        <xsl:variable name="timestart"><xsl:value-of select="TimeStart"/></xsl:variable>
                        <xsl:variable name="timeend" select="$timestart+1"></xsl:variable>
                        <span itemprop='priem'>
                          <table cellspacing="0" class="tablesorter unit zagol-2" style='width: 100%;overflow:hidden;margin:0!important;' itemprop='Perevod'>
                            <tbody>
                              <tr>
                                <td class="thtd line-h14s">
                                  <b style="margin-right:10px;">Учебный год:</b><span><xsl:value-of select="TimeStart"/>-<xsl:value-of select="$timeend"/></span>
                                </td>
                              </tr>
                              <tr>
                                <td class="line-h14s">
                                  <b style="margin-right:10px;">Программа:</b><span><xsl:value-of select="Programm"/></span>
                                </td>
                              </tr>
                              <xsl:if test="Count5!=''">
                                <tr>
                                  <td class="line-h14s">
                                    <b style="margin-right:10px;">Средняя сумма набранных баллов по всем вступительным испытаниям:</b><span><xsl:value-of select="Count5"/></span>
                                  </td>
                                </tr>
                              </xsl:if>
                              <xsl:if test="Count6!=''">
                                <tr>
                                  <td class="line-h14s">
                                    <b style="margin-right:10px;">Количество обучающихся, поступивших в результате перевода:</b><span><xsl:value-of select="Count6"/></span>
                                  </td>
                                </tr>
                              </xsl:if>
                              <xsl:if test="Count7!=''">
                                <tr>
                                  <td class="line-h14s">
                                    <b style="margin-right:10px;">Количество обучающихся, поступивших в результате восстановления:</b><span><xsl:value-of select="Count7"/></span>
                                  </td>
                                </tr>
                              </xsl:if>
                              <xsl:if test="Count9!=''">
                                <tr>
                                  <td class="line-h14s">
                                    <b style="margin-right:10px;">Количество поступивших всего:</b><span><xsl:value-of select="Count9"/></span>
                                  </td>
                                </tr>
                              </xsl:if>
                              <xsl:if test="Count8!=''">
                                <tr>
                                  <td class="line-h14s">
                                    <b style="margin-right:10px;">Количество отчисленных:</b><span><xsl:value-of select="Count8"/></span>
                                  </td>
                                </tr>
                              </xsl:if>
                            </tbody>
                          </table>
                        </span>
                      </xsl:for-each>
                    </div>
                </fieldset><br/>
              </xsl:if>
            <xsl:if test="count(EditPasport/Eduinfo/FaceInformation/ObrDeyat/Langs/_EnumLanguages/item) > 0">
              <fieldset class='information'>
                <legend><h3>Языки, на которых осуществляется образование</h3></legend>
                  <span itemprop='language'>
                    <table border="0" cellspacing="0" cellpadding="3" style='width: 100%;' class="unit">
                      <tbody>
                      <xsl:for-each select="EditPasport/Eduinfo/FaceInformation/ObrDeyat/Langs/_EnumLanguages">
                        <tr>
                          <td>
                              <xsl:if test="item ='Language1'">Абазинский; </xsl:if>
                              <xsl:if test="item ='Language2'">Абхазский; </xsl:if>
                              <xsl:if test="item ='Language3'">Аварский; </xsl:if>
                              <xsl:if test="item ='Language4'">Агульский; </xsl:if>
                              <xsl:if test="item ='Language5'">Адыгейский; </xsl:if>
                              <xsl:if test="item ='Language6'">Азербайджанский; </xsl:if>
                              <xsl:if test="item ='Language7'">Аккинский (ауховский); </xsl:if>
                              <xsl:if test="item ='Language8'">Албанский; </xsl:if>
                              <xsl:if test="item ='Language9'">Алеутский; </xsl:if>
                              <xsl:if test="item ='Language10'">Алтайский; </xsl:if>
                              <xsl:if test="item ='Language11'">Алюторский; </xsl:if>
                              <xsl:if test="item ='Language12'">Английский; </xsl:if>
                              <xsl:if test="item ='Language13'">Андийский; </xsl:if>
                              <xsl:if test="item ='Language14'">Арабский; </xsl:if>
                              <xsl:if test="item ='Language15'">Армянский; </xsl:if>
                              <xsl:if test="item ='Language16'">Арчинский; </xsl:if>
                              <xsl:if test="item ='Language17'">Ассирийский; </xsl:if>
                              <xsl:if test="item ='Language18'">Афганский; </xsl:if>
                              <xsl:if test="item ='Language19'">Ахвахский; </xsl:if>
                              <xsl:if test="item ='Language20'">Башкирский; </xsl:if>
                              <xsl:if test="item ='Language21'">Бежитинский; </xsl:if>
                              <xsl:if test="item ='Language22'">Белорусский; </xsl:if>
                              <xsl:if test="item ='Language23'">Белуджский; </xsl:if>
                              <xsl:if test="item ='Language24'">Бесермянский; </xsl:if>
                              <xsl:if test="item ='Language25'">Болгарский; </xsl:if>
                              <xsl:if test="item ='Language26'">Ботлихский; </xsl:if>
                              <xsl:if test="item ='Language27'">Бурятский; </xsl:if>
                              <xsl:if test="item ='Language28'">Венгерский; </xsl:if>
                              <xsl:if test="item ='Language29'">Вепсский; </xsl:if>
                              <xsl:if test="item ='Language30'">Вьетнамский; </xsl:if>
                              <xsl:if test="item ='Language31'">Гагаузский; </xsl:if>
                              <xsl:if test="item ='Language32'">Гинухский; </xsl:if>
                              <xsl:if test="item ='Language33'">Годоберинский; </xsl:if>
                              <xsl:if test="item ='Language34'">Голландский; </xsl:if>
                              <xsl:if test="item ='Language35'">Греческий; </xsl:if>
                              <xsl:if test="item ='Language36'">Грузинский; </xsl:if>
                              <xsl:if test="item ='Language37'">Гунзибский; </xsl:if>
                              <xsl:if test="item ='Language38'">Даргинский; </xsl:if>
                              <xsl:if test="item ='Language39'">Дунганский; </xsl:if>
                              <xsl:if test="item ='Language40'">Еврейский; </xsl:if>
                              <xsl:if test="item ='Language41'">Ижорский; </xsl:if>
                              <xsl:if test="item ='Language42'">Ингушский; </xsl:if>
                              <xsl:if test="item ='Language43'">Испанский; </xsl:if>
                              <xsl:if test="item ='Language44'">Итальянский; </xsl:if>
                              <xsl:if test="item ='Language45'">Ительменский; </xsl:if>
                              <xsl:if test="item ='Language46'">Кабардино-черкесский; </xsl:if>
                              <xsl:if test="item ='Language47'">Казахский; </xsl:if>
                              <xsl:if test="item ='Language48'">Кайтагский; </xsl:if>
                              <xsl:if test="item ='Language49'">Калмыцкий; </xsl:if>
                              <xsl:if test="item ='Language50'">Караимский; </xsl:if>
                              <xsl:if test="item ='Language51'">Каракалпакский; </xsl:if>
                              <xsl:if test="item ='Language52'">Каратинский; </xsl:if>
                              <xsl:if test="item ='Language53'">Карачаево-балкарский; </xsl:if>
                              <xsl:if test="item ='Language54'">Карельский; </xsl:if>
                              <xsl:if test="item ='Language55'">Кванадинский (багулальский); </xsl:if>
                              <xsl:if test="item ='Language56'">Керекский; </xsl:if>
                              <xsl:if test="item ='Language57'">Кетский; </xsl:if>
                              <xsl:if test="item ='Language58'">Киргизский; </xsl:if>
                              <xsl:if test="item ='Language59'">Китайский; </xsl:if>
                              <xsl:if test="item ='Language60'">Коми; </xsl:if>
                              <xsl:if test="item ='Language61'">Коми-пермяцкий; </xsl:if>
                              <xsl:if test="item ='Language62'">Корейский; </xsl:if>
                              <xsl:if test="item ='Language63'">Корякский; </xsl:if>
                              <xsl:if test="item ='Language64'">Крызский; </xsl:if>
                              <xsl:if test="item ='Language65'">Крымско-татарский; </xsl:if>
                              <xsl:if test="item ='Language66'">Кубачинский; </xsl:if>
                              <xsl:if test="item ='Language67'">Кумандинский; </xsl:if>
                              <xsl:if test="item ='Language68'">Кумыкский; </xsl:if>
                              <xsl:if test="item ='Language69'">Курдский; </xsl:if>
                              <xsl:if test="item ='Language70'">Лазский; </xsl:if>
                              <xsl:if test="item ='Language71'">Лакский; </xsl:if>
                              <xsl:if test="item ='Language72'">Латышский; </xsl:if>
                              <xsl:if test="item ='Language73'">Лезгинский; </xsl:if>
                              <xsl:if test="item ='Language74'">Ливский; </xsl:if>
                              <xsl:if test="item ='Language75'">Литовский; </xsl:if>
                              <xsl:if test="item ='Language76'">Мансийский; </xsl:if>
                              <xsl:if test="item ='Language77'">Марийский; </xsl:if>
                              <xsl:if test="item ='Language78'">Мегрельский; </xsl:if>
                              <xsl:if test="item ='Language79'">Мокшанский; </xsl:if>
                              <xsl:if test="item ='Language80'">Молдавский; </xsl:if>
                              <xsl:if test="item ='Language81'">Монгольский; </xsl:if>
                              <xsl:if test="item ='Language82'">Мордовский; </xsl:if>
                              <xsl:if test="item ='Language83'">Нагайбакский; </xsl:if>
                              <xsl:if test="item ='Language84'">Нанайский; </xsl:if>
                              <xsl:if test="item ='Language85'">Нганасайский; </xsl:if>
                              <xsl:if test="item ='Language86'">Негидальский; </xsl:if>
                              <xsl:if test="item ='Language87'">Немецкий; </xsl:if>
                              <xsl:if test="item ='Language88'">Ненецкий; </xsl:if>
                              <xsl:if test="item ='Language89'">Нивхский; </xsl:if>
                              <xsl:if test="item ='Language90'">Ногайский; </xsl:if>
                              <xsl:if test="item ='Language91'">Орокский; </xsl:if>
                              <xsl:if test="item ='Language92'">Орочский; </xsl:if>
                              <xsl:if test="item ='Language93'">Осетинский; </xsl:if>
                              <xsl:if test="item ='Language94'">Персидский; </xsl:if>
                              <xsl:if test="item ='Language95'">Польский; </xsl:if>
                              <xsl:if test="item ='Language96'">Румынский; </xsl:if>
                              <xsl:if test="item ='Language97'">Русский; </xsl:if>
                              <xsl:if test="item ='Language98'">Рутульский; </xsl:if>
                              <xsl:if test="item ='Language99'">Рушанский; </xsl:if>
                              <xsl:if test="item ='Language100'">Саамский; </xsl:if>
                              <xsl:if test="item ='Language101'">Сванский; </xsl:if>
                              <xsl:if test="item ='Language102'">Селькупский; </xsl:if>
                              <xsl:if test="item ='Language103'">Сербскохорватский; </xsl:if>
                              <xsl:if test="item ='Language104'">Словацкий; </xsl:if>
                              <xsl:if test="item ='Language105'">Табасаранский; </xsl:if>
                              <xsl:if test="item ='Language106'">Таджикский; </xsl:if>
                              <xsl:if test="item ='Language107'">Талышский; </xsl:if>
                              <xsl:if test="item='Language108'">Татарский; </xsl:if>
                              <xsl:if test="item='Language109'">Татский; </xsl:if>
                              <xsl:if test="item='Language110'">Телеутский; </xsl:if>
                              <xsl:if test="item='Language111'">Тиндинский; </xsl:if>
                              <xsl:if test="item='Language112'">Тлибишо-тлиссинский; </xsl:if>
                              <xsl:if test="item='Language113'">Тофаларский; </xsl:if>
                              <xsl:if test="item='Language114'">Тубаларский (тубский); </xsl:if>
                              <xsl:if test="item='Language115'">Тувинский; </xsl:if>
                              <xsl:if test="item='Language116'">Турецкий; </xsl:if>
                              <xsl:if test="item='Language117'">Туркменский; </xsl:if>
                              <xsl:if test="item='Language118'">Удинский; </xsl:if>
                              <xsl:if test="item='Language119'">Удмуртский; </xsl:if>
                              <xsl:if test="item='Language120'">Удэгейский; </xsl:if>
                              <xsl:if test="item='Language121'">Узбекский; </xsl:if>
                              <xsl:if test="item='Language122'">Уйгурский; </xsl:if>
                              <xsl:if test="item='Language123'">Украинский; </xsl:if>
                              <xsl:if test="item='Language124'">Ульчский; </xsl:if>
                              <xsl:if test="item='Language125'">Финский; </xsl:if>
                              <xsl:if test="item='Language126'">Французский; </xsl:if>
                              <xsl:if test="item='Language127'">Хакасский; </xsl:if>
                              <xsl:if test="item='Language128'">Хантыйский; </xsl:if>
                              <xsl:if test="item='Language129'">Хваршинский; </xsl:if>
                              <xsl:if test="item='Language130'">Хиналугский; </xsl:if>
                              <xsl:if test="item='Language131'">Хунзальский; </xsl:if>
                              <xsl:if test="item='Language132'">Цахурский; </xsl:if>
                              <xsl:if test="item='Language133'">Цезский (дидойский); </xsl:if>
                              <xsl:if test="item='Language134'">Цыганский; </xsl:if>
                              <xsl:if test="item='Language135'">Чамалинский; </xsl:if>
                              <xsl:if test="item='Language136'">Челканский (лебединский); </xsl:if>
                              <xsl:if test="item='Language137'">Чеченский; </xsl:if>
                              <xsl:if test="item='Language138'">Чешский; </xsl:if>
                              <xsl:if test="item='Language139'">Чуванский; </xsl:if>
                              <xsl:if test="item='Language140'">Чувашский; </xsl:if>
                              <xsl:if test="item='Language141'">Чукотский; </xsl:if>
                              <xsl:if test="item='Language142'">Чулымско-тюркский; </xsl:if>
                              <xsl:if test="item='Language143'">Шапсугский; </xsl:if>
                              <xsl:if test="item='Language144'">Шведский; </xsl:if>
                              <xsl:if test="item='Language145'">Шорский; </xsl:if>
                              <xsl:if test="item='Language146'">Шугнайский; </xsl:if>
                              <xsl:if test="item='Language147'">Эвенкийский; </xsl:if>
                              <xsl:if test="item='Language148'">Эвенский; </xsl:if>
                              <xsl:if test="item='Language149'">Энецкий; </xsl:if>
                              <xsl:if test="item='Language150'">Эрзянский; </xsl:if>
                              <xsl:if test="item='Language151'">Эскимосский; </xsl:if>
                              <xsl:if test="item='Language152'">Эстонский; </xsl:if>
                              <xsl:if test="item='Language153'">Юкагирский; </xsl:if>
                              <xsl:if test="item='Language154'">Язгулемский; </xsl:if>
                              <xsl:if test="item='Language155'">Якутский; </xsl:if>
                              <xsl:if test="item='Language156'">Японский; </xsl:if>
                <!--<xsl:if test="item='Other'">Другие языки; </xsl:if>-->
                          </td>
                        </tr>
                      </xsl:for-each>
                      </tbody>
                    </table>
                  </span>
                    <table cellspacing="0" class="tablesorter unit zagol-2" style='width: 100%;'>
                      <tbody>
                        <xsl:for-each select="EditPasport/Eduinfo/FaceInformation/ObrDeyat/LangsDocs/FileWithName/item">
                        <xsl:variable name="link"><xsl:value-of select="LinkFile/Link"/></xsl:variable>
      				            <xsl:if test="$link!=''">
                            <tr>
                              <td class="line-h14s">
                                <xsl:if test="$link!=''">
                                  <span style="white-space:nowrap;"><span class="fileicon"><a href='{$link}' target='_blank'><xsl:value-of select="Name"/></a></span><span class="infofile">(<xsl:value-of select="LinkFile/TYPE"/>; <xsl:value-of disable-output-escaping="yes" select="LinkFile/SIZE"/>)</span></span>
                                </xsl:if>
                              </td>
                            </tr>
                          </xsl:if>
                        </xsl:for-each>
                      </tbody>
                    </table>
              </fieldset><br/>	
            </xsl:if>	
          <xsl:if test="count(EditPasport/Eduinfo/FaceInformation/ObrDeyat/Prescriptions/Prescription2/item) > 0">
            <fieldset class='information'>
                <legend><h3>Информация о направлениях и результатах научной (научно-исследовательской) деятельности</h3></legend>
                  <div style="width:100%;margin:10px 0px 15px 0px;">
                    <span itemprop='NIR'>
                    <xsl:for-each select="EditPasport/Eduinfo/FaceInformation/ObrDeyat/Prescriptions/Prescription2/item">
                    <xsl:variable name="link"><xsl:value-of select="LinkFile/item/Link"/></xsl:variable>
                    <xsl:variable name="link2"><xsl:value-of select="LinkFile2/item/Link"/></xsl:variable>
                    <xsl:variable name="timestart"><xsl:value-of select="TimeStart"/></xsl:variable>
                    <xsl:variable name="timeend" select="$timestart+1"></xsl:variable>
                      <table cellspacing="0" class="tablesorter unit zagol-2" style='width: 100%;margin:0!important;'>
                        <tbody >
                          <tr style="border-bottom:0!important;">
                            <td>
                          <xsl:if test="Name!=''">
                              <span>
                                <b style="margin-right:5px;">Название Направления научной (научно-исследовательской) деятельности: </b><xsl:value-of select="Name"/> (<xsl:value-of select="TimeStart"/>-<xsl:value-of select="$timeend"/> учебный год)
                              </span><br/>
                          </xsl:if>
                          <xsl:if test="$link!=''">
                              <span style="white-space:nowrap;"><span class="fileicon"><a href='{$link}' target='_blank'>Результаты научной (научно-исследовательской) деятельности</a></span><span class="infofile">(<xsl:value-of select="LinkFile/item/TYPE"/>; <xsl:value-of disable-output-escaping="yes" select="LinkFile/item/SIZE"/>)</span></span>
                          </xsl:if><br/>
					               <xsl:if test="$link2!=''">
                                <span style="white-space:nowrap;"><span class="fileicon"><a href='{$link2}' target='_blank'>Научно-исследовательская база</a></span><span class="infofile">(<xsl:value-of select="LinkFile2/item/TYPE"/>; <xsl:value-of disable-output-escaping="yes" select="LinkFile2/item/SIZE"/>)</span></span><br/>
                          </xsl:if> 
                          </td>                           
                        </tr>
                        </tbody>
                      </table>
                      </xsl:for-each>
                    </span>
                  </div>
            </fieldset><br/>
            </xsl:if>
            <xsl:if test="count(EditPasport/Eduinfo/FaceInformation/ObrDeyat/DocumentsList/Document/item) > 0">
              <fieldset class='information'>
                  <legend><h3>Иные документы</h3></legend>
                  <table cellspacing="1" class="tablesorter table-3" style='width: 100%;'>
                    <tbody>
                    <xsl:for-each select="EditPasport/Eduinfo/FaceInformation/ObrDeyat/DocumentsList/Document/item">
                    <xsl:variable name="link"><xsl:value-of select="FileName/item/Link"/></xsl:variable>
                      <tr style="border-bottom:0!important;">  
                        <td>
                          <xsl:if test="$link!=''"><span class="fileicon"><a href='{$link}' target='_blank'><xsl:value-of select="DocumentName"/></a></span><span class="infofile">(<xsl:value-of select="FileName/item/TYPE"/>; <xsl:value-of disable-output-escaping="yes" select="FileName/item/SIZE"/>)</span></xsl:if><br/>
                          <span><b>Кем выдан: </b><xsl:value-of select="WhoGive"/></span><br/>
                          <span><b>Когда выдан: </b><xsl:value-of select="WhenGive"/></span><br/>
                        </td>
                      </tr>
                    </xsl:for-each>
                    </tbody>
                  </table>
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