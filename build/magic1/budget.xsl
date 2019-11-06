<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:import href="structurahtml.xsl"/>
<xsl:import href="scriptsandcss.xsl"/>


<xsl:variable name="pagename" >Финансово-хозяйственная деятельность</xsl:variable>

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

<!--page-10-->
          <xsl:if test="count(EditPasport/Eduinfo/Reports/FinCountsItem/FinCountsItem/item) > 0 ">
            <fieldset class='information'>
              <legend><h3>Объем образовательной деятельности</h3></legend>
              <div style="width:100%;margin:10px 0px 15px 0px;">
                <span itemprop='Volume'>
                <xsl:for-each select="EditPasport/Eduinfo/Reports/FinCountsItem/FinCountsItem/item">
                  <table cellspacing="0" class="tablesorter unit zagol-2" style='width: 100%;overflow:hidden;margin:0!important;'>
                  <tbody>
                    <xsl:if test="TimeStart!=''">
                      <tr>
                        <td class="thtd line-h14s">
                          <b style="margin-right:5px;">Год:</b>
                          <span><xsl:value-of select="TimeStart"/></span>
                        </td>
                      </tr>
                    </xsl:if>
                    <xsl:if test="Count1!='0'">
                      <tr>
                        <td class="line-h14s">
                          <b style="margin-right:5px;">За счет ассигнований федерального бюджета:</b>
                          <span style="white-space:nowrap;"><span><xsl:value-of select="Count1"/></span><span>р.</span></span>(освоен на <xsl:value-of select="CountRes1"/>%)
                        </td>
                      </tr>
                    </xsl:if>
                    <xsl:if test="Count2!='0'">
                      <tr>
                        <td class="line-h14s">
                          <b style="margin-right:5px;">За счет бюджета субъектов РФ:</b>
                          <span style="white-space:nowrap;"><span><xsl:value-of select="Count2"/></span><span>р.</span></span>(освоен на <xsl:value-of select="CountRes2"/>%)
                        </td>
                      </tr>
                    </xsl:if>
                    <xsl:if test="Count3!='0'">
                      <tr>
                        <td class="line-h14s">
                          <b style="margin-right:5px;">За счет местных бюджетов:</b>
                          <span style="white-space:nowrap;"><span><xsl:value-of select="Count3"/></span><span>р.</span></span>(освоен на <xsl:value-of select="CountRes3"/>%)
                        </td>
                      </tr>
                      </xsl:if>
                      <xsl:if test="Count4!='0'">
                        <tr>
                          <td class="line-h14s">
                            <b style="margin-right:5px;">По договорам об образовании за счет средств физических и (или) юридических лиц:</b>
                            <span style="white-space:nowrap;"><span><xsl:value-of select="Count4"/></span><span>р.</span></span>(освоен на <xsl:value-of select="CountRes4"/>%)
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

          <xsl:if test="count(EditPasport/Eduinfo/Reports/Munic/item) > 0 ">
            <fieldset class='information'>
                <legend><h3>Государственные (муниципальные) задания</h3></legend>
                <table cellspacing="1" class="tablesorter table-3" style='width: 100%;'>
                  <tbody>
                  <xsl:for-each select="EditPasport/Eduinfo/Reports/Munic/item">
                  <xsl:variable name="link"><xsl:value-of select="LinkFile/item/LinkFile/Link"/></xsl:variable>
                  <xsl:variable name="link2"><xsl:value-of select="LinkFile2/item/LinkFile/Link"/></xsl:variable>
                    <tr style="border-bottom:0!important;">
                      
                        <td class="thtd line-h14s">
                      <span ><b><xsl:value-of select="Name"/> (<xsl:value-of select="TimeStart"/> год)</b></span><br/>
                    </td>
                  </tr>
                    <tr style="border-bottom:0!important;" >
                      <td >
                        <xsl:if test="$link!=''"><span class="fileicon"><a href='{$link}' target='_blank'>Задание</a></span><span class="infofile">(<xsl:value-of select="LinkFile/item/LinkFile/TYPE"/>; <xsl:value-of disable-output-escaping="yes" select="LinkFile/item/LinkFile/SIZE"/>)</span></xsl:if><br/>

                        <xsl:if test="$link2!=''"><span class="fileicon"><a href='{$link2}' target='_blank'>Отчёт об исполнении</a></span><span class="infofile">(<xsl:value-of select="LinkFile2/item/LinkFile/TYPE"/>; <xsl:value-of disable-output-escaping="yes" select="LinkFile2/item/LinkFile/SIZE"/>)</span></xsl:if><br/>
                      </td>
                    </tr>
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