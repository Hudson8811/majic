<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="structurahtml.xsl"/>
<xsl:import href="scriptsandcss.xsl"/>


<xsl:variable name="pagename" >Документы</xsl:variable>
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

<!--page-03 Документы-->
           <xsl:if test="count(EditPasport/Eduinfo/FaceInformation/NormDocs/Ustav_Doc/FileWithName/item) > 0">
            <fieldset class='information'>
              <legend><h3>Устав образовательной организации</h3></legend>
                <table cellspacing="1" class="tablesorter unit zagol-2" style='width: 100%;'>
                  <tbody>
                    <xsl:for-each select="EditPasport/Eduinfo/FaceInformation/NormDocs/Ustav_Doc/FileWithName/item">
                      <xsl:variable name="link"><xsl:value-of select="LinkFile/Link"/></xsl:variable>
                      <tr>
                        <td class="line-h14s">
                          <xsl:if test="$link!=''">
                            <span style="white-space:normal;"><span class="fileicon"><a href='{$link}' target='_blank'><xsl:value-of disable-output-escaping="yes" select="Name"/></a></span><span class="infofile">(<xsl:value-of select="LinkFile/TYPE"/>; <xsl:value-of disable-output-escaping="yes" select="LinkFile/SIZE"/>)</span></span></xsl:if>
                        </td>
                      </tr>
                    </xsl:for-each>
                  </tbody>
                </table>
            </fieldset><br/>
          </xsl:if>
          <xsl:if test="count(EditPasport/Eduinfo/FaceInformation/NormDocs/License_Doc/FileWithName/item) > 0">
            <fieldset class='information'>
              <legend><h3>Лицензия на осуществление образовательной деятельности</h3></legend>
                <table cellspacing="1" class="tablesorter unit zagol-2" style='width: 100%;'>
                  <tbody>
                  <xsl:for-each select="EditPasport/Eduinfo/FaceInformation/NormDocs/License_Doc/FileWithName/item">
                    <xsl:variable name="link"><xsl:value-of select="LinkFile/Link"/></xsl:variable>
                    <tr>
                      <td class="line-h14s">
                        <xsl:if test="$link!=''">
                          <span style="white-space:normal;"><span class="fileicon" itemprop='License_DocLink'><a href='{$link}' target='_blank'><xsl:value-of disable-output-escaping="yes" select="Name"/></a></span><span class="infofile">(<xsl:value-of select="LinkFile/TYPE"/>; <xsl:value-of disable-output-escaping="yes" select="LinkFile/SIZE"/>)</span></span></xsl:if>  
                      </td>
                    </tr>
                  </xsl:for-each>
                  </tbody>
                </table>
            </fieldset><br/>
          </xsl:if>
          <xsl:if test="count(EditPasport/Eduinfo/FaceInformation/NormDocs/Accreditation_Doc/FileWithName/item) > 0">
            <fieldset class='information'>
              <legend><h3>Свидетельство о государственной аккредитации</h3></legend>
                <table cellspacing="1" class="tablesorter unit zagol-2" style='width: 100%;'>
                  <tbody>
                  <xsl:for-each select="EditPasport/Eduinfo/FaceInformation/NormDocs">
                    <xsl:if test="Doc3_txt!=''"> 
                      <tr>
                        <td class="line-h14s">
                          <span><xsl:value-of select="Doc3_txt"/></span>
                        </td>
                      </tr>
                    </xsl:if> 
                  </xsl:for-each>
                  <xsl:for-each select="EditPasport/Eduinfo/FaceInformation/NormDocs/Accreditation_Doc/FileWithName/item">
                    <xsl:variable name="link"><xsl:value-of select="LinkFile/Link"/></xsl:variable>
                    <xsl:if test="$link!=''"> 
                    <tr>
                      <td class="line-h14s">
                        <xsl:if test="$link!=''">
                          <span style="white-space:normal;"><span class="fileicon" itemprop='Accreditation_DocLink'><a href='{$link}' target='_blank'><xsl:value-of disable-output-escaping="yes" select="Name"/></a></span><span class="infofile">(<xsl:value-of select="LinkFile/TYPE"/>; <xsl:value-of disable-output-escaping="yes" select="LinkFile/SIZE"/>)</span></span></xsl:if>
                      </td>
                    </tr>
                    </xsl:if> 
                    </xsl:for-each>
                  </tbody>
                </table>
            </fieldset><br/>
          </xsl:if>
          <xsl:if test="count(EditPasport/Eduinfo/FaceInformation/NormDocs/FinPlan_Doc/YearFile/item) > 0"> 
            <fieldset class='information'>
              <legend><h3>План финансово-хозяйственной деятельности образовательной организации</h3></legend>
             <!--  <span itemprop='FinPlan_DocLink'> -->
                <table cellspacing="1" class="tablesorter table-3" style='width: 100%;'>
                  <caption>План финансово-хозяйственной деятельности образовательной организации, утвержденный в установленном законодательством Российской Федерации порядке или бюджетная смета образовательной организации: </caption>

                  <tbody>
                  <xsl:for-each select="EditPasport/Eduinfo/FaceInformation/NormDocs/FinPlan_Doc/YearFile/item">
                    <xsl:variable name="link"><xsl:value-of select="LinkFile/item/Link"/></xsl:variable>
                    <tr style="border-bottom:0!important;">
                      <td class="thtd line-h14s">
                        <span><b>Год: </b><xsl:value-of select="TimeStart"/></span>
                      </td>
                      
                    </tr>
                    <tr style="border-bottom:0!important;" >
                   
                    <td>
                      <xsl:if test="$link!=''"><span class="fileicon"><a href='{$link}' target='_blank'><xsl:value-of disable-output-escaping="yes" select="Name"/></a></span><span class="infofile">(<xsl:value-of select="LinkFile/item/TYPE"/>; <xsl:value-of disable-output-escaping="yes" select="LinkFile/item/SIZE"/>)</span></xsl:if>
                    </td>
                    </tr>
                  </xsl:for-each>
                  </tbody>
                </table>
            <!--   </span> -->
            </fieldset><br/>
          </xsl:if>
          <xsl:if test="count(EditPasport/Eduinfo/FaceInformation/NormDocs/FinRec/YearFile/item) > 0"> 
            <fieldset class='information'>
              <legend><h3>Финансовый отчет</h3></legend>
              <table cellspacing="1" class="tablesorter table-3" style='width: 100%;'>
                <tbody>
                <xsl:for-each select="EditPasport/Eduinfo/FaceInformation/NormDocs/FinRec/YearFile/item">
                  <xsl:variable name="link"><xsl:value-of select="LinkFile/item/Link"/></xsl:variable>
                   <tr style="border-bottom:0!important;">
                      <td class="thtd line-h14s">
                        <span><b>Год: </b><xsl:value-of select="TimeStart"/></span>
                      </td>
                      
                    </tr>
                  <tr style="border-bottom:0!important;">
                    
                    <td>
                      <xsl:if test="$link!=''"><span class="fileicon"><a href='{$link}' target='_blank'><xsl:value-of disable-output-escaping="yes" select="Name"/></a></span><span class="infofile">(<xsl:value-of select="LinkFile/item/TYPE"/>; <xsl:value-of disable-output-escaping="yes" select="LinkFile/item/SIZE"/>)</span></xsl:if>
                    </td>
                  </tr>
                </xsl:for-each>
                </tbody>
              </table>
            </fieldset><br/>
          </xsl:if>
            <fieldset class='information'>
              <legend><h3>Локальные нормативные акты</h3></legend>
                <table cellspacing="1" class="tablesorter zagol-2 unit" style='width: 100%;'>
                  <tbody>
                  <xsl:for-each select="EditPasport/Eduinfo/FaceInformation/NormDocs">
                  <xsl:variable name="docs4_txt"><xsl:value-of select="Docs4_txt"/></xsl:variable>
                  <xsl:if test="$docs4_txt!=''">
                    <tr>
                      <td class="line-h14s">
                        <span><xsl:value-of select="Docs4_txt"/></span>
                      </td>
                    </tr>
                  </xsl:if>
                  </xsl:for-each>
                  <xsl:for-each select="EditPasport/Eduinfo/FaceInformation/NormDocs/LocalActStud/item">
                    <xsl:variable name="link"><xsl:value-of select="Link"/></xsl:variable>
                    <xsl:if test="$link!=''">
                      <tr>
                        <td class="line-h14s">
                          <span style="white-space:normal;"><span itemprop='LocalActStud' class="fileicon"><a href='{$link}' target='_blank'>Правила внутреннего распорядка обучающихся</a></span><span class="infofile">(<xsl:value-of select="TYPE"/>; <xsl:value-of disable-output-escaping="yes" select="SIZE"/>)</span></span>
                        </td>
                      </tr>
                    </xsl:if>
                  </xsl:for-each>
                  <xsl:for-each select="EditPasport/Eduinfo/FaceInformation/NormDocs/LocalActOrder/item">
                    <xsl:variable name="link"><xsl:value-of select="Link"/></xsl:variable>
                    <xsl:if test="$link!=''">
                      <tr>
                        <td class="line-h14s">
                          <span style="white-space:normal;"><span itemprop='LocalActOrder' class="fileicon"><a href='{$link}' target='_blank'>Правила внутреннего трудового распорядка</a></span><span class="infofile">(<xsl:value-of select="TYPE"/>; <xsl:value-of disable-output-escaping="yes" select="SIZE"/>)</span></span>
                        </td>
                      </tr>
                    </xsl:if>
                  </xsl:for-each>
                  <xsl:for-each select="EditPasport/Eduinfo/FaceInformation/NormDocs/LocalActCollec/item">
                    <xsl:variable name="link"><xsl:value-of select="Link"/></xsl:variable>
                    <xsl:if test="$link!=''">
                      <tr>
                        <td class="line-h14s">
                          <span style="white-space:normal;"><span itemprop='LocalActCollec' class="fileicon"><a href='{$link}' target='_blank'>Коллективный договор</a></span><span class="infofile">(<xsl:value-of select="TYPE"/>; <xsl:value-of disable-output-escaping="yes" select="SIZE"/>)</span></span>
                        </td>
                      </tr>
                    </xsl:if>
                  </xsl:for-each>
                  <xsl:for-each select="EditPasport/Eduinfo/FaceInformation/NormDocs/Priem_Doc/item">
                    <xsl:variable name="link"><xsl:value-of select="Link"/></xsl:variable>
                    <xsl:if test="$link!=''">
                      <tr>
                        <td class="line-h14s">
                          <span style="white-space:normal;"><span itemprop='Priem_DocLink' class="fileicon"><a href='{$link}' target='_blank'>Правила приема обучающихся</a></span><span class="infofile">(<xsl:value-of select="TYPE"/>; <xsl:value-of disable-output-escaping="yes" select="SIZE"/>)</span></span>
                        </td>
                      </tr>
                    </xsl:if>
                  </xsl:for-each>
                  <xsl:for-each select="EditPasport/Eduinfo/FaceInformation/NormDocs/Mode_Doc/item">
                    <xsl:variable name="link"><xsl:value-of select="Link"/></xsl:variable>
                    <xsl:if test="$link!=''">
                      <tr>
                        <td class="line-h14s">
                          <span style="white-space:normal;"><span itemprop='Mode_DocLink' class="fileicon"><a href='{$link}' target='_blank'>Режим занятий обучающихся</a></span><span class="infofile">(<xsl:value-of select="TYPE"/>; <xsl:value-of disable-output-escaping="yes" select="SIZE"/>)</span></span>
                        </td>
                      </tr>
                    </xsl:if>
                  </xsl:for-each>
                  <xsl:for-each select="EditPasport/Eduinfo/FaceInformation/NormDocs/Tek_kontrol_Doc/item">
                    <xsl:variable name="link"><xsl:value-of select="Link"/></xsl:variable>
                    <xsl:if test="$link!=''">
                      <tr>
                        <td class="line-h14s">
                          <span style="white-space:normal;"><span itemprop='Tek_kontrol_DocLink' class="fileicon"><a href='{$link}' target='_blank' >Формы, периодичность и порядок текущего контроля успеваемости и промежуточной аттестации обучающихся</a></span><span class="infofile">(<xsl:value-of select="TYPE"/>; <xsl:value-of disable-output-escaping="yes" select="SIZE"/>)</span></span>
                        </td>
                      </tr>
                    </xsl:if>
                  </xsl:for-each>
                  <xsl:for-each select="EditPasport/Eduinfo/FaceInformation/NormDocs/Perevod_Doc/item">
                    <xsl:variable name="link"><xsl:value-of select="Link"/></xsl:variable>
                    <xsl:if test="$link!=''">
                      <tr>
                        <td class="line-h14s">
                          <span style="white-space:normal;"><span itemprop='Perevod_DocLink' class="fileicon"><a href='{$link}' target='_blank'>Порядок и основания перевода, отчисления и восстановления обучающихся</a></span><span class="infofile">(<xsl:value-of select="TYPE"/>; <xsl:value-of disable-output-escaping="yes" select="SIZE"/>)</span></span>
                        </td>
                      </tr>
                    </xsl:if>
                  </xsl:for-each>
                  <xsl:for-each select="EditPasport/Eduinfo/FaceInformation/NormDocs/Voz_Doc/item">
                    <xsl:variable name="link"><xsl:value-of select="Link"/></xsl:variable>
                    <xsl:if test="$link!=''">
                      <tr>
                        <td class="line-h14s">
                          <span style="white-space:normal;"><span itemprop='Voz_DocLink' class="fileicon"><a href='{$link}' target='_blank'>Порядок оформления возникновения, приостановления и прекращения отношений между образовательной организацией и обучающимися и (или) родителями (законными представителями) несовершеннолетних обучающихся</a></span><span class="infofile">(<xsl:value-of select="TYPE"/>; <xsl:value-of disable-output-escaping="yes" select="SIZE"/>)</span></span>
                        </td>
                      </tr>
                    </xsl:if>
                  </xsl:for-each>
                  <xsl:for-each select="EditPasport/Eduinfo/FaceInformation/NormDocs/Docs4/FileWithName/item">
                    <xsl:variable name="link"><xsl:value-of select="LinkFile/Link"/></xsl:variable>
                    <xsl:if test="$link!=''">
                      <tr>
                        <td class="line-h14s">
                          <span style="white-space:normal;"><span class="fileicon"><a href='{$link}' target='_blank'><xsl:value-of select="Name"/></a></span><span class="infofile">(<xsl:value-of select="LinkFile/TYPE"/>; <xsl:value-of disable-output-escaping="yes" select="LinkFile/SIZE"/>)</span></span>
                        </td>
                      </tr>
                    </xsl:if>
                  </xsl:for-each>
                </tbody>
              </table>
            </fieldset><br/>
          <xsl:if test="count(EditPasport/Eduinfo/FaceInformation/NormDocs/ReportEdu_Doc/PeriodFile/item) > 0">  
            <fieldset class='information'>
              <legend><h3>Отчет о результатах самообследования</h3></legend>
                <!-- <span itemprop='FinPlan_DocLink'>
                  <span itemprop='ReportEdu_DocLink'> -->
                    <table cellspacing="1" class="tablesorter table-3" style='width: 100%;'>
                      <tbody>
                      <xsl:for-each select="EditPasport/Eduinfo/FaceInformation/NormDocs/ReportEdu_Doc/PeriodFile/item">
                        <xsl:variable name="link"><xsl:value-of  select="LinkFile/item/Link"/></xsl:variable>
                         <tr style="border-bottom:0!important;">
                      <td class="thtd line-h14s">
                        <span><b>Год: </b><xsl:value-of select="TimeStart"/></span>
                      </td>
                      
                    </tr>
                          <tr style="border-bottom:0!important;">
                           <td>
                              <xsl:if test="$link!=''"><span class="fileicon"><a href='{$link}' target='_blank'><xsl:value-of disable-output-escaping="yes" select="Name"/></a></span><span class="infofile">(<xsl:value-of select="LinkFile/item/TYPE"/>; <xsl:value-of disable-output-escaping="yes" select="LinkFile/item/SIZE"/>)</span></xsl:if>
                            </td>
                          </tr>
                      </xsl:for-each>
                      </tbody>
                    </table>

<!--                   </span>
                </span> -->
            </fieldset><br/> 
          </xsl:if>
          <xsl:if test="count(EditPasport/Eduinfo/FaceInformation/NormDocs/PaydList/PaidItem/item) > 0">     
            <fieldset class='information'>
              <legend><h3>Документы о порядке оказания платных образовательных услуг</h3></legend>
                <table cellspacing="1" class="tablesorter table-3" style='width: 100%;'>
                  <tbody>
                  <xsl:for-each select="EditPasport/Eduinfo/FaceInformation/NormDocs/PaydList/PaidItem/item">
                    <xsl:variable name="link"><xsl:value-of select="LinkFile/item/Link"/></xsl:variable>
                    <xsl:variable name="link2"><xsl:value-of select="LinkFile2/item/Link"/></xsl:variable>
                    <xsl:variable name="link3"><xsl:value-of select="LinkFile3/item/Link"/></xsl:variable>
                    <xsl:variable name="link4"><xsl:value-of select="LinkFile4/item/Link"/></xsl:variable>
                    <xsl:variable name="link5"><xsl:value-of select="FileWithName/item/LinkFile/Link"/></xsl:variable>
                    <xsl:variable name="link6"><xsl:value-of select="FileWithName2/item/LinkFile/Link"/></xsl:variable>
                    <xsl:variable name="link7"><xsl:value-of select="FileWithName3/item/LinkFile/Link"/></xsl:variable>
                    <xsl:variable name="timestart"><xsl:value-of select="TimeStart"/></xsl:variable>
                    <xsl:variable name="timeend" select="$timestart+1"></xsl:variable>
                    <xsl:if test = "($link!='') or ($link2!='') or ($link3!='') or ($link4!='') or ($link5!='') and ($link6!='') or ($link7!='') " >
                       <tr style="border-bottom:0!important;">
                      <td class="thtd line-h14s">
                        <span><b>Год: </b><xsl:value-of select="TimeStart"/>-<xsl:value-of select="$timeend"/></span>
                      </td>
                      
                    </tr>
                      <tr style="border-bottom:0!important;">
                        <td>

                        <span><b><xsl:value-of select="Name"/></b></span><br/>

                          <xsl:if test="$link!=''"><span class="fileicon"><a href='{$link}' target='_blank'>Образец договора об оказании платных образовательных услуг</a></span><span class="infofile">(<xsl:value-of select="LinkFile/item/TYPE"/>; <xsl:value-of disable-output-escaping="yes" select="LinkFile/item/SIZE"/>)</span><br/></xsl:if>

                          <xsl:if test="$link2!=''"><span class="fileicon"><a href='{$link2}' target='_blank'>Документ об утверждении стоимости (приказ)</a></span><span class="infofile">(<xsl:value-of select="LinkFile2/item/TYPE"/>; <xsl:value-of disable-output-escaping="yes" select="LinkFile2/item/SIZE"/>)</span><br/></xsl:if>

                          <xsl:if test="$link3!=''"><span class="fileicon"><a href='{$link3}' target='_blank'>Документ об утверждении стоимости (прайс-лист)</a></span><span class="infofile">(<xsl:value-of select="LinkFile3/item/TYPE"/>; <xsl:value-of disable-output-escaping="yes" select="LinkFile3/item/SIZE"/>)</span><br/></xsl:if>

                          <xsl:if test="$link4!=''"><span class="fileicon"><a href='{$link4}' target='_blank'>Документ о порядке оказания платных услуг</a></span><span class="infofile">(<xsl:value-of select="LinkFile4/item/TYPE"/>; <xsl:value-of disable-output-escaping="yes" select="LinkFile4/item/SIZE"/>)</span><br/></xsl:if>

                          <xsl:if test="$link5!=''"><span class="fileicon"><a href='{$link5}' target='_blank'><xsl:value-of select="FileWithName/item/Name"/></a></span><span class="infofile">(<xsl:value-of select="FileWithName/item/LinkFile/TYPE"/>; <xsl:value-of disable-output-escaping="yes" select="FileWithName/item/LinkFile/SIZE"/>)</span><br/></xsl:if>

                          <xsl:if test="$link6!=''"><span class="fileicon"><a href='{$link6}' target='_blank'><xsl:value-of select="FileWithName2/item/Name"/></a></span><span class="infofile">(<xsl:value-of select="FileWithName2/item/LinkFile/TYPE"/>; <xsl:value-of disable-output-escaping="yes" select="FileWithName2/item/LinkFile/SIZE"/>)</span><br/></xsl:if>

                          <xsl:if test="$link7!=''"><span class="fileicon"><a href='{$link7}' target='_blank'><xsl:value-of select="FileWithName3/item/Name"/></a></span><span class="infofile">(<xsl:value-of select="FileWithName3/item/LinkFile/TYPE"/>; <xsl:value-of disable-output-escaping="yes" select="FileWithName3/item/LinkFile/SIZE"/>)</span><br/></xsl:if>
                        </td>
                      </tr>
                    </xsl:if>
                  </xsl:for-each>
                </tbody>
              </table>
            </fieldset><br/>
          </xsl:if> 
          <xsl:if test="count(EditPasport/Eduinfo/FaceInformation/NormDocs/PaidEdu_Doc/FileWithName/item) > 0">
            <fieldset class='information'>
              <legend><h3>Документы об установлении размера платы, взимаемой с родителей (законных представителей)</h3></legend>
                <!-- <span itemprop='PaidEdu_DocLink'> -->
                  <table cellspacing="1" class="tablesorter unit zagol-2" style='width: 100%;'>
                    <tbody>
                    <xsl:for-each select="EditPasport/Eduinfo/FaceInformation/NormDocs/PaidEdu_Doc/FileWithName/item">
                    <xsl:variable name="link"><xsl:value-of select="LinkFile/Link"/></xsl:variable>
                      <tr>
                        <td class="line-h14s">
                        <xsl:if test="$link!=''">
                          <span style="white-space:normal;"><span class="fileicon"><a href='{$link}' target='_blank'><xsl:value-of select="Name"/></a></span><span class="infofile">(<xsl:value-of select="LinkFile/TYPE"/>; <xsl:value-of disable-output-escaping="yes" select="LinkFile/SIZE"/>)</span></span>
                        </xsl:if>
                        </td>
                      </tr>
                    </xsl:for-each>
                    </tbody>
                  </table>
                <!-- </span> -->
            </fieldset><br/>
          </xsl:if>
          <xsl:if test="count(EditPasport/Eduinfo/FaceInformation/NormDocs/Prescriptions/Prescription/item) > 0">
            <fieldset class='information'>
              <legend><h3>Предписания органов, осуществляющих контроль (надзор) в сфере образования</h3></legend>
                <table cellspacing="1" class="tablesorter table-3" style='width: 100%;'>

                  <tbody>
                  <xsl:for-each select="EditPasport/Eduinfo/FaceInformation/NormDocs/Prescriptions/Prescription/item">
                    <xsl:variable name="timestart"><xsl:value-of select="TimeStart"/></xsl:variable>
                    <xsl:variable name="timeend" select="$timestart+1"></xsl:variable>
                    <xsl:variable name="link"><xsl:value-of select="LinkFile/item/Link"/></xsl:variable>
                    <xsl:variable name="link2"><xsl:value-of select="LinkFile2/item/Link"/></xsl:variable>
                     <tr style="border-bottom:0!important;">
                      <td class="thtd line-h14s">
                        <span><b>Год: </b><xsl:value-of select="TimeStart"/>-<xsl:value-of select="$timeend"/></span>
                      </td>
                      
                    </tr>
                    <tr style="border-bottom:0!important;">
                      <td>
                      <span><b><xsl:value-of select="Name"/></b></span><br/>

                        <xsl:if test="$link!=''">
                        <span class="fileicon"><a href='{$link}' target='_blank'>Предписание</a></span><span class="infofile">(<xsl:value-of select="LinkFile/item/TYPE"/>; <xsl:value-of disable-output-escaping="yes" select="LinkFile/item/SIZE"/>)</span><br/>
                        </xsl:if>

                        <xsl:if test="$link2!=''">
                        <span class="fileicon"><a href='{$link2}' target='_blank'>Отчет об исполнении</a></span><span class="infofile">(<xsl:value-of select="LinkFile2/item/TYPE"/>; <xsl:value-of disable-output-escaping="yes" select="LinkFile2/item/SIZE"/>)</span><br/>
                        </xsl:if>
                      </td>
                    </tr>
                  </xsl:for-each>
                  </tbody>
                </table>
            </fieldset><br/>
          </xsl:if>
          <xsl:if test="count(EditPasport/Eduinfo/FaceInformation/NormDocs/DocumentsList/Document/item) > 0">
            <fieldset class='information'>
              <legend><h3>Иные документы</h3></legend>
                <table cellspacing="1" class="tablesorter table-3" style='width: 100%;'>
                  <tbody>
                  <xsl:for-each select="EditPasport/Eduinfo/FaceInformation/NormDocs/DocumentsList/Document/item">
                    <xsl:variable name="link"><xsl:value-of select="FileName/item/Link"/></xsl:variable>
                    <tr style="border-bottom:0!important;">
                      <td>
                     
            
                        <xsl:if test="$link!=''">
                        <span class="fileicon"><b><a href='{$link}' target='_blank'><xsl:value-of select="DocumentName"/></a></b></span><span class="infofile">(<xsl:value-of select="FileName/item/TYPE"/>; <xsl:value-of disable-output-escaping="yes" select="FileName/item/SIZE"/>)</span> 
                        </xsl:if><br/>

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