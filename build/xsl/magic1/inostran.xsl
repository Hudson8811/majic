<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="structurahtml.xsl"/>
<xsl:import href="scriptsandcss.xsl"/>


<xsl:variable name="pagename" >Сведения об интеграции российского образования с мировым образовательным пространством</xsl:variable>
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

<!--page 12-->
          <xsl:if test="(EditPasport/Eduinfo/Inostran/StudCount!='') or (EditPasport/Eduinfo/Inostran/TeachCount!='')">
            <fieldset class='information'>
                <legend><h3>Сведения о наличии иностранных обучающихся и работников</h3></legend>
                <table border="0" cellspacing="0" cellpadding="3" style='width: 100%;' class="unit zagol-2">
                  <tbody>
                  <xsl:for-each select="EditPasport/Eduinfo/Inostran">
                    <xsl:if test="StudCount!='0'">
                      <tr>
                        <td class="line-h14s"><b style="margin-right:5px;">Численность иностранных обучающихся по основным и дополнительным образовательным программам:</b><span><xsl:value-of select="StudCount"/></span>человек</td>
                      </tr>
                    </xsl:if>
                    <xsl:if test="TeachCount!='0'">
                      <tr>
                        <td class="line-h14s"><b style="margin-right:5px;">Численность иностранных педагогических и научных работников:</b><span><xsl:value-of select="TeachCount"/></span>человек</td>
                      </tr>
                    </xsl:if>
                  </xsl:for-each>
                  </tbody>
                </table>
            </fieldset><br/>
          </xsl:if>
          <xsl:if test="(EditPasport/Eduinfo/Inostran/OrgsInfoTxt!='') or (count(EditPasport/Eduinfo/Inostran/OrgsInfoDocs/FileWithName/item)>0)">
            <fieldset class='information'>
                <legend><h3>Информация об иностранных и (или) международных организациях, с которыми российскими образовательными организациями заключены договоры по вопросам образования и науки</h3></legend>
                  <table border="0" cellspacing="0" cellpadding="3" style='width: 100%;' class="unit">
                    <tbody>
                    <xsl:for-each select="EditPasport/Eduinfo/Inostran">
                      <xsl:if test="OrgsInfoTxt!=''">
                        <tr>
                          <td><xsl:value-of select="OrgsInfoTxt"/></td>
                          <td></td>
                        </tr>
                    </xsl:if>
                    </xsl:for-each>
                    </tbody>
                  </table>
                  <table cellspacing="1" class="tablesorter unit zagol-2" style='width: 100%;'>
                    <tbody>
                    <xsl:for-each select="EditPasport/Eduinfo/Inostran/OrgsInfoDocs/FileWithName/item">
                    <xsl:variable name="link"><xsl:value-of select="LinkFile/Link"/></xsl:variable>
                      <xsl:if test="$link!=''">
                        <tr>
                          <td class="line-h14s">
                            <span style="white-space:nowrap;"><span class="fileicon"><a href='{$link}' target='_blank'><xsl:value-of select="Name"/></a></span><span class="infofile">(<xsl:value-of select="LinkFile/TYPE"/>; <xsl:value-of disable-output-escaping="yes" select="LinkFile/SIZE"/>)</span></span>
                          </td>
                        </tr>
					           </xsl:if>
                    </xsl:for-each>
                    </tbody>
                  </table>
            </fieldset><br/>
          </xsl:if>
          <xsl:if test="(EditPasport/Eduinfo/Inostran/DogovoryTxt!='') or (count(EditPasport/Eduinfo/Inostran/DogovoryDocs/FileWithName/item)>0)">
             <fieldset class='information'>
                <legend><h3>Информация о заключенных и планируемых к заключению договорах с иностранными и (или) международными организациями по вопросам образования и науки</h3></legend>
                <table border="0" cellspacing="0" cellpadding="3" style='width: 100%;' class="unit">
                  <tbody>
                  <xsl:for-each select="EditPasport/Eduinfo/Inostran">
                    <xsl:if test="DogovoryTxt!=''">
                      <tr>
                        <td><xsl:value-of select="DogovoryTxt"/></td>
                        <td></td>
                      </tr>
                  </xsl:if>
                  </xsl:for-each>
                  </tbody>
                </table>
                <table cellspacing="1" class="tablesorter unit zagol-2" style='width: 100%;'>
                  <tbody>
                  <xsl:for-each select="EditPasport/Eduinfo/Inostran/DogovoryDocs/FileWithName/item">
                  <xsl:variable name="link"><xsl:value-of select="LinkFile/Link"/></xsl:variable>
                    <xsl:if test="$link!=''">
                      <tr>
                        <td class="line-h14s">
                          <span style="white-space:nowrap;"><span class="fileicon"><a href='{$link}' target='_blank'><xsl:value-of select="Name"/></a></span><span class="infofile">(<xsl:value-of select="LinkFile/TYPE"/>; <xsl:value-of  disable-output-escaping="yes" select="LinkFile/SIZE"/>)</span></span>
                        </td>
                      </tr>
					         </xsl:if>
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