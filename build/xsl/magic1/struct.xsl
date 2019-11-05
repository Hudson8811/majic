<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="structurahtml.xsl"/>
<xsl:import href="scriptsandcss.xsl"/>


<xsl:variable name="pagename" >Структура и органы управления образовательной организацией</xsl:variable>
<xsl:template match="/">

<html>
<head>
<meta name='Keywords' content='Тестовая организация. И сайт её тестовый.
Для тестов всяких нововведений., конструктор сайтов, создание сайтов, создание сайта, сайты детских садов, сайты школ, создание сайта школы, создание сайта детского сайта' />
<meta name='geo.placename' content='Кривоколенный пер, д.4, ст.5, Москва г., Москва г., Российская Федерация101000, ' />


<title>Тестовая организация. И сайт её тестовый.
Для тестов всяких нововведений. - Структура и органы управления образовательной организацией</title>


<xsl:call-template name="ScriptsAndCSS" />
</head>

<body>


<xsl:call-template name="StructuraHTML" />
 







</body>
</html>
</xsl:template>

<xsl:template name="Content">
              <div  class="containersved" id="containersved" align="center">

<!--page 02 Структура и органы управления образовательной организацией-->
      <xsl:if test="(count(EditPasport/Eduinfo/FaceInformation/Branches2/BranchesLst/Branch2/item) > 0) or (EditPasport/Eduinfo/FaceInformation/Branches2/Desc !='')">
        <fieldset class='information'>
  			<legend><h3>Сведения об органах управления и структурных подразделениях</h3></legend>
                <table border="0" cellspacing="0" cellpadding="3" style='width: 100%;' class="unit">
                  <tbody>
                    <xsl:for-each select="EditPasport/Eduinfo/FaceInformation/Branches2">
                    <xsl:if test="Desc!=''">
                      <tr>
                        <td class="unit" style="border:1px solid #cccccc;"><xsl:value-of disable-output-escaping="yes" select="Desc"/></td>
                      </tr>
                    </xsl:if>
                  </xsl:for-each>
                  </tbody>
                </table>
          <div style="width:100%;margin:10px 0px 15px 0px;">
          <xsl:for-each select="EditPasport/Eduinfo/FaceInformation/Branches2/BranchesLst/Branch2/item">
                        <xsl:variable name="regimtxt"><xsl:value-of select="RegimTxt"/></xsl:variable>
                        <xsl:variable name="graftxt"><xsl:value-of select="GrafTxt"/></xsl:variable>
                        <xsl:variable name="regimlink"><xsl:value-of select="Regim/item/Link"/></xsl:variable>
                        <xsl:variable name="graflink"><xsl:value-of select="Graf/item/Link"/></xsl:variable>
                        <xsl:variable name="link"><xsl:value-of select="LinkFile/Link"/></xsl:variable>
                        <xsl:variable name="link2"><xsl:value-of select="LinkFile2/Link"/></xsl:variable>
                        <xsl:variable name="doplink"><xsl:value-of select="FileWithName/item/LinkFile/Link"/></xsl:variable>
                        <xsl:variable name="site"><xsl:value-of select="Site"/></xsl:variable>
                        <xsl:variable name="mail"><xsl:value-of select="Mail"/></xsl:variable>
                        <table border="0" cellspacing="0" cellpadding="0"  class="unit t_mobile" style="margin:0!important;">
                
                          <tbody>
                          <xsl:if test="Name!=''">
                            <tr>
                              <td colspan="2" style="border-bottom:2px solid #f7f7f7;width:100%!important;"><span itemprop='Name'><b style="font-size:11pt;"><xsl:value-of select="Name"/></b></span>
                              </td>
                            </tr>
                          </xsl:if>
                          <tr>
                            <xsl:if test="FioDir!=''">
                            <td valign="top" width="50%" class="col_1" >
                                <span style="vertical-align:top;"><b>Руководитель:</b></span> 
                              </td>
                            
                              <td valign="top" width="auto" class="col_2" >
                                <span style="vertical-align:top;"><xsl:value-of select="FioDir"/></span> 
                              </td>
                            </xsl:if>
                            </tr>
                            <tr>
                            <xsl:if test="DirDolgn!=''">
                            <td valign="top" width="50%" class="col_1" >
                                <span style="vertical-align:top;"><b>Должность руководителя:</b></span> 
                              </td>
                            
                              <td valign="top" width="auto">
                                <span style="vertical-align:top;" itemprop='Fio'><xsl:value-of select="DirDolgn"/></span>
                              </td>
                            </xsl:if>
                          </tr>
                          <xsl:if test="count(Phone/item) > 0">
                            <tr>
                              <td valign="top" width="50%" class="col_1"  >
                                <span style="vertical-align:top;"><b>Телефон руководителя:</b></span> 
                              </td>
                              <td valign="top" width="auto" class="col_2">
                                <span style="vertical-align:top;"><xsl:value-of select="Phone"/></span>
                              </td>
                            </tr>
                          </xsl:if>
                          <xsl:if test="$mail!=''">
                            <tr>
                              <td valign="top" width="50%" class="col_1" >
                                <span style="vertical-align:top;"><b>E-mail руководителя:</b></span> 
                              </td>
                              <td valign="top" width="auto" class="col_2">
                                <span style="vertical-align:top;"><a href='mailto:{$mail}' target='_blank'><span itemprop='E-mail'><xsl:value-of select="Mail"/></span></a></span>
                              </td>
                            </tr>
                          </xsl:if>
                          <xsl:if test="$site!=''">
                            <tr>
                              <td valign="top" width="50%" class="col_1" >
                                <span style="vertical-align:top;"><b>Сайт:</b></span> 
                              </td>
                              <td valign="top" width="auto" class="col_2">
                                <span style="vertical-align:top;"><a href='{$site}' target='_blank'><span itemprop='Site'><xsl:value-of select="Site"/></span></a></span>
                              </td>
                            </tr>
                          </xsl:if>
                          <xsl:if test="Address!=''">
                            <tr>
                              <td valign="top" width="50%" class="col_1" >
                                <span style="vertical-align:top;"><b>Адрес:</b></span> 
                              </td>
                              <td valign="top" width="auto" class="col_2">
                                <span style="vertical-align:top;" itemprop='AddressStr'><xsl:value-of select="Address"/></span>
                              </td>
                            </tr>
                          </xsl:if>
                          <xsl:if test="$link!=''">
                            <tr>
                              <td valign="top" width="50%" >
                                <span style="vertical-align:top;"><b>Положение о структурных подразделениях:</b></span> 
                              </td>
                              <td valign="top" width="auto" class="mob-clear col_2">
                                <span itemprop='DivisionClause_DocLink' class="fileicon"><a href='{$link}' target='_blank'>Файл</a></span><span class="infofile">(<xsl:value-of select="LinkFile/item/TYPE"/>; <xsl:value-of disable-output-escaping="yes" select="LinkFile/item/SIZE"/>)</span>
                              </td>
                            </tr>
                          </xsl:if>
                          <xsl:if test="$link2!=''">
                            <tr>
                              <td valign="top" width="50%" >
                                <span style="vertical-align:top;"><b>Положение об органах управления:</b></span> 
                              </td>
                              <td valign="top" width="auto" class="mob-clear col_2">
                                <span itemprop='DivisionClause_DocLink' class="fileicon"><a href='{$link2}' target='_blank'>Файл</a></span><span class="infofile">(<xsl:value-of select="LinkFile2/item/TYPE"/>; <xsl:value-of disable-output-escaping="yes" select="LinkFile2/item/SIZE"/>)</span>
                              </td>
                            </tr>
                          </xsl:if>
                           <xsl:if test="($regimlink!='') or ($regimtxt!='')">
                            <tr>
                              <td valign="top" width="50%" class="col_1" >
                                <span style="vertical-align:top;"><b>Режим работы:</b></span> 
                              </td>
                              <td valign="top" width="auto" class="mob-clear col_2">
                                <xsl:if test="$regimtxt!=''"><span style="vertical-align:top;"><xsl:value-of disable-output-escaping="yes" select="RegimTxt"/></span></xsl:if><br/>
                                <xsl:if test="$regimlink!=''"><span style="vertical-align:top;" class="fileicon"><a href='{$regimlink}' target='_blank'>Режим работы</a></span><span class="infofile">(<xsl:value-of select="Regim/item/TYPE"/>; <xsl:value-of disable-output-escaping="yes" select="Regim/item/SIZE"/>)</span></xsl:if>
                              </td>
                            </tr>
                          </xsl:if>
                          <xsl:if test="($graflink!='') or ($graftxt!='')">
                            <tr>
                              <td valign="top" width="50%" class="col_1" >
                                <span style="vertical-align:top;"><b>График работы:</b></span> 
                              </td>
                              <td valign="top" width="auto" class="mob-clear col_2">
                                <xsl:if test="$graftxt!=''"><span style="vertical-align:top;"><xsl:value-of disable-output-escaping="yes" select="GrafTxt"/></span></xsl:if><br/>
                                <xsl:if test="$graflink!=''"><span style="vertical-align:top;" class="fileicon"><a href='{$graflink}' target='_blank'>График работы</a></span><span class="infofile">(<xsl:value-of select="Graf/item/TYPE"/>; <xsl:value-of disable-output-escaping="yes" select="Graf/item/SIZE"/>)</span></xsl:if>
                              </td>
                            </tr>
                          </xsl:if>
                         
                          <xsl:if test="$doplink!=''">
                            <tr>
                              <td valign="top" width="50%" class="col_1" >
                                <span style="vertical-align:top;"><b>Документы:</b></span> 
                              </td>
                              <td valign="top" width="auto" class="mob-clear line-h14s col_2">
                                  <span style="vertical-align:top;" class="fileicon"><a href='{$doplink}' target='_blank'><xsl:value-of select="FileWithName/item/Name"/></a></span><span class="infofile">(<xsl:value-of select="FileWithName/item/LinkFile/TYPE"/>; <xsl:value-of  disable-output-escaping="yes" select="FileWithName/item/LinkFile/SIZE"/>)</span>
                              </td>
                            </tr>
                          </xsl:if>
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
        <xsl:if test="count(EditPasport/Eduinfo/FaceInformation/Branches2/PhotoGal/PhotoWithNameForTable/item) > 0">
          <fieldset class='information'>
    		      <legend><h3>Схемы структуры и органов управления</h3></legend>
                  <table cellspacing="1" class="tablesorter t_mobile unit" style='width: 100%;'>
                    <tbody>
                        <xsl:for-each select="EditPasport/Eduinfo/FaceInformation/Branches2/PhotoGal/PhotoWithNameForTable/item">
                          <xsl:variable name="photolink"><xsl:value-of select="LinkFile/Link"/></xsl:variable>
                          <xsl:variable name="alt"><xsl:value-of select="Name"/></xsl:variable>
                          <xsl:if test="$photolink!=''">
                            <tr>
                              <td data-label="Файл">
                              <a href="{$photolink}" class='highslide' target='_blank' onclick='return hs.expand(this)'><img src='{$photolink}' alt="{$alt}" title="{$alt}" class="thumbl"/></a>
                              </td>
                              <td data-label="Название">
                              <xsl:value-of select="Name"/>
                              </td>
                            </tr>
                            <tr>
                              <td style="height:15px;width:100%;background-color:#cccccc;padding:0;" colspan="2">
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