<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="structurahtml.xsl"/>
<xsl:import href="scriptsandcss.xsl"/>


<xsl:variable name="pagename" >Платные образовательные услуги</xsl:variable>

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

<!--page 09-->
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

          <xsl:if test="count(EditPasport/Eduinfo/FaceInformation/NormDocs/PaydListDop/PeriodFile/item) > 0">     
            <fieldset class='information'>
                <legend><h3>Дополнительные документы</h3></legend>
                <table cellspacing="1" class="tablesorter table-3" style='width: 100%;'>
                    <tbody>
                    <xsl:for-each select="EditPasport/Eduinfo/FaceInformation/NormDocs/PaydListDop/PeriodFile/item">
                    <xsl:variable name="link"><xsl:value-of select="LinkFile/item/Link"/></xsl:variable>
                    <xsl:variable name="timestart"><xsl:value-of select="TimeStart"/></xsl:variable>
                    <xsl:variable name="periodtype"><xsl:value-of select="PeriodType"/></xsl:variable>
                    <xsl:variable name="timeend" select="$timestart+1"></xsl:variable>
                      <tr style="border-bottom:0!important;">
                        <td class="thtd line-h14s">
                          <span><b>Год: </b><xsl:if test="$periodtype='2'"><xsl:value-of select="TimeStart"/>-<xsl:value-of select="$timeend"/></xsl:if>
                          <xsl:if test="$periodtype='1'"><xsl:value-of select="TimeStart"/></xsl:if></span>
                        </td>
                      </tr>
                      <tr style="border-bottom:0!important;">
                        <td>
                          <xsl:if test="$link!=''">
                            <span class="fileicon"><a href='{$link}' target='_blank'><xsl:value-of select="Name"/></a></span><span class="infofile">(<xsl:value-of select="LinkFile/item/TYPE"/>; <xsl:value-of disable-output-escaping="yes" select="LinkFile/item/SIZE"/>)</span>
                        </xsl:if>
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