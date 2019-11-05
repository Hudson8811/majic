<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">


<xsl:import href="structurahtml.xsl"/>
<xsl:import href="scriptsandcss.xsl"/>


<xsl:variable name="pagename" >Основные сведения</xsl:variable>

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
            <xsl:if test="EditPasport/Eduinfo/FaceInformation/MainInformation !=''">
              <fieldset class='information'>
                  <legend><h3>Об образовательной организации</h3></legend>
                    <table border="0" cellspacing="0" cellpadding="3" style='width: 100%;float:left;' class="t_mobile unit">
                    <tbody>
                      <xsl:if test="EditPasport/Eduinfo/FaceInformation/MainInformation/OrgName !=''">
                        <tr>
                          <td  width="30%" class="col_1">
                            <b>Полное наименование организации: </b>
                          </td>
                          <td width="auto" class="col_2">
                            <xsl:value-of disable-output-escaping="yes" select="EditPasport/Eduinfo/FaceInformation/MainInformation/OrgName"/>
                          </td>
                        </tr>
                       </xsl:if>
                      <xsl:if test="EditPasport/Eduinfo/FaceInformation/MainInformation/SOrgName !=''">
                        <tr>
                          <td  width="30%" class="col_1" >
                            <b>Краткое наименование организации:</b>
                          </td>
                          <td width="auto" class="col_2">
                            <xsl:value-of disable-output-escaping="yes" select="EditPasport/Eduinfo/FaceInformation/MainInformation/SOrgName"/>
                          </td>
                        </tr>
                      </xsl:if>
                      <xsl:if test="EditPasport/Eduinfo/FaceInformation/MainInformation/DirFIO !=''">
                        <tr>
                          <td  width="30%" class="col_1" >
                            <b>Руководитель:  </b>
                          </td>
                          <td width="auto" class="col_2">
                            <xsl:value-of select="EditPasport/Eduinfo/FaceInformation/MainInformation/DirFIO"/>
                          </td>
                        </tr>
                      </xsl:if>
                      <xsl:if test="EditPasport/Eduinfo/FaceInformation/MainInformation/VidOO !=''">
                        <tr>
                          <td  width="30%" class="col_1" >
                            <b>Вид образовательной организации:  </b>
                          </td>
                          <td width="auto" class="col_2">
                            <xsl:value-of select="EditPasport/Eduinfo/FaceInformation/MainInformation/VidOO"/>
                          </td>
                        </tr>
                      </xsl:if>
                      <xsl:if test="EditPasport/Eduinfo/FaceInformation/MainInformation/CreateDate !=''">
                        <tr>
                          <td width="30%" class="col_1"><b>Дата создания организации:</b> </td>
                            <td width="auto" class="col_2">
                              <span itemprop='RegDate'>
                                <xsl:value-of select="EditPasport/Eduinfo/FaceInformation/MainInformation/CreateDate"/>
                              </span>
                            </td>
                        </tr>
                      </xsl:if>
                    </tbody>
                  </table>
              </fieldset>
              <br/>
            </xsl:if>
            <xsl:if test="count(EditPasport/Eduinfo/FaceInformation/MainInformation/UchDocs/item) > 0">
              <fieldset class='information'>
                <legend><h3>Учредители образовательной организации</h3></legend>
                  <div style="width:100%;margin:10px 0px 15px 0px;">
                      <span itemscope='' itemtype='UchredLaw'>
                        <xsl:for-each select="EditPasport/Eduinfo/FaceInformation/MainInformation/UchDocs/item">
                        <xsl:variable name="link"><xsl:value-of select="LinkFile/item/Link"/></xsl:variable>
                        <xsl:variable name="site"><xsl:value-of select="Site"/></xsl:variable>
                        <xsl:variable name="mail"><xsl:value-of select="Mail"/></xsl:variable>
                        <table border="0" cellspacing="0" cellpadding="0" class="unit t_mobile" style="margin:0!important;">
                          <tbody>
                            <xsl:if test="Name !=''">
                              <tr>
                                <td colspan="2" style="border-bottom:2px solid #f7f7f7;width:100%!important;"><b style="font-size:11pt;"><xsl:value-of select="Name"/></b></td>
                              </tr>
                            </xsl:if>
                            <xsl:if test="FioDir !=''">
                              <tr>
                                <td valign="top" width="30%"  class="col_1_1">
                                  <span style="vertical-align:top;"><b>Руководитель:</b></span> 
                                </td>
                                <td valign="top" width="auto" class="col_2_1">
                                  <span style="vertical-align:top;"><xsl:value-of select="FioDir"/></span>
                                </td>
                              </tr>
                            </xsl:if>
                            <xsl:if test="Address !=''">
                              <tr>
                                <td valign="top" width="30%"  class="col_1_1">
                                  <span style="vertical-align:top;"><b>Адрес:</b></span> 
                                </td>
                                <td valign="top" width="auto" class="col_2_1">
                                  <span style="vertical-align:top;"><xsl:value-of select="Address"/></span>
                                </td>
                              </tr>
                            </xsl:if>
                            <xsl:if test="count(Phone/item) > 0">
                              <tr>
                                <td valign="top" width="30%"  class="col_1_1">
                                  <span style="vertical-align:top;"><b>Телефоны:</b></span> 
                                </td>
                                <td valign="top" width="auto" class="col_2_1">
                                  <span style="vertical-align:top;"><xsl:value-of select="Phone"/></span>
                                </td>
                              </tr>
                            </xsl:if>
                            <xsl:if test="$site!=''">
                              <tr>
                                <td valign="top" width="30%"  class="col_1_1">
                                  <span style="vertical-align:top;"><b>Сайт:</b></span> 
                                </td>
                                <td valign="top" width="auto" class="col_2_1">
                                  <span style="vertical-align:top;"><a href='{$site}' target='_blank'><xsl:value-of select="Site"/></a></span>
                                </td>
                              </tr>
                            </xsl:if>
                            <xsl:if test="$mail!=''">
                              <tr>
                                <td valign="top" width="30%"  class="col_1_1">
                                  <span style="vertical-align:top;"><b>E-Mail:</b></span> 
                                </td>
                                <td valign="top" width="auto" class="col_2_1">
                                  <span style="vertical-align:top;"><a href='mailto:{$mail}' target='_blank'><xsl:value-of select="Mail"/></a></span>
                                </td>
                              </tr>
                            </xsl:if>
                            <xsl:if test="$link!=''">
                              <tr>
                                <td class="col_1_1"></td>
                                <td valign="top" width="auto" class="col_2_1">
                                  <span style="vertical-align:top;" class="fileicon"><a href='{$link}' target='_blank'>Положение</a></span><span class="infofile">(<xsl:value-of select="LinkFile/item/TYPE"/>; <xsl:value-of disable-output-escaping="yes" select="LinkFile/item/SIZE"/>)</span>
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
                      </span>
                  </div>
              </fieldset>
            </xsl:if>
            <br/>
            <xsl:if test = "EditPasport/Eduinfo/FaceInformation/MainContacts/OrgAdrCollect/Adress !=''">
              <fieldset class='information'>
                <legend><h3>Место нахождения образовательной организации</h3></legend>
                <table border="0" cellspacing="0" cellpadding="3" style='width: 100%;' class="t_mobile unit">
                <xsl:for-each select="EditPasport/Eduinfo/FaceInformation/MainContacts/OrgAdrCollect/Adress">
                  <tbody>
                    <tr>
                      <td width="100" ><b>Адрес:</b></td>
                      <td><span itemprop='Address'><xsl:value-of select="Index"/>, <xsl:value-of select="Country_str"/>, <xsl:value-of select="FO_str"/> федеральный округ, <xsl:value-of select="Region_str"/>, <xsl:value-of select="Area_str"/>, <xsl:value-of select="Place_str"/>, <xsl:value-of select="Street_str"/>, д. <xsl:value-of select="HouseNom"/><xsl:if test="HouseIndex!=''">, корпус <xsl:value-of select="HouseIndex"/></xsl:if><xsl:if test="HouseStruct!=''">, ст. <xsl:value-of select="HouseStruct"/></xsl:if><xsl:if test="Room!=''">, кв. <xsl:value-of select="Room"/></xsl:if><br/></span></td>
                    </tr>
                    <tr>
                      <td width="100" ><b>Карта:</b> </td>
                      <td><br/><div id="map" style="width: 494px; height: 340px; background-color:#d0e8b7;"></div></td>
                    </tr>
                  </tbody>
                </xsl:for-each>
                </table>       
              </fieldset><br/>
            </xsl:if>
            <xsl:if test="(EditPasport/Eduinfo/FaceInformation/MainInformation/RegimTxt !='') or (EditPasport/Eduinfo/FaceInformation/MainInformation/Regim !='') or (EditPasport/Eduinfo/FaceInformation/MainInformation/GrafTxt !='') or (EditPasport/Eduinfo/FaceInformation/MainInformation/Graf !='')">
              <fieldset class='information'>
                <legend><h3>Режим и график работы</h3></legend>
                  <span itemprop='WorkTime'>
                    <table border="0" cellspacing="0" cellpadding="3" style='width: 100%;' class="unit">
                      <tbody>
                        <xsl:if test="(EditPasport/Eduinfo/FaceInformation/MainInformation/RegimTxt !='') or (EditPasport/Eduinfo/FaceInformation/MainInformation/Regim !='')">
                          <tr>
                            <td >
                            <xsl:variable name="link"><xsl:value-of select="EditPasport/Eduinfo/FaceInformation/MainInformation/Regim/item/Link"/></xsl:variable>
                              <table border="0" cellspacing="0" cellpadding="0"  class="t_mobile_2" style="float:left;width:100%;">
                                <tr >
                                  <xsl:if test="EditPasport/Eduinfo/FaceInformation/MainInformation/RegimTxt !=''">
                                    <td valign="top" width="70%" class="col_1_2">
                                      <span style="vertical-align:top;"><xsl:value-of select="EditPasport/Eduinfo/FaceInformation/MainInformation/RegimTxt"/> </span> 
                                    </td>
                                  </xsl:if>
                                  <td valign="top" width="auto" class="col_2_2">
                                    <xsl:if test="$link!=''">
                                      <span style="vertical-align:top;" class="fileicon"><a href='{$link}' target='_blank'>Режим работы</a></span>
                                      <span class="infofile">(<xsl:value-of select="EditPasport/Eduinfo/FaceInformation/MainInformation/Regim/item/TYPE"/>; <xsl:value-of disable-output-escaping="yes" select="EditPasport/Eduinfo/FaceInformation/MainInformation/Regim/item/SIZE"/>)</span>
                                    </xsl:if>
                                  </td>
                                </tr>
                              </table>
                            </td>
                          </tr>
                        </xsl:if>
                      </tbody>
                    </table>
                    <table border="0" cellspacing="0" cellpadding="3" style='width: 100%;' class="unit">
                      <tbody>
                        <xsl:if test="(EditPasport/Eduinfo/FaceInformation/MainInformation/GrafTxt !='') or (EditPasport/Eduinfo/FaceInformation/MainInformation/Graf !='')">
                          <tr>

                          
                            <td width="50%">
                            <xsl:variable name="link"><xsl:value-of select="EditPasport/Eduinfo/FaceInformation/MainInformation/Graf/item/Link"/></xsl:variable>
                              <table border="0" cellspacing="0" cellpadding="0"  class="t_mobile_2" style="float:left;width:100%;">
                                <tr >
                                  <xsl:if test="EditPasport/Eduinfo/FaceInformation/MainInformation/GrafTxt !=''">
                                    <td valign="top" width="70%" class="col_1_2">
                                      <span style="vertical-align:top;"><xsl:value-of select="EditPasport/Eduinfo/FaceInformation/MainInformation/GrafTxt"/> </span> 
                                    </td>
                                  </xsl:if>
                                  <td valign="top" width="auto" class="col_2_2">
                                  <xsl:if test="$link!=''">
                                    <span style="vertical-align:top;" class="fileicon"><a href='{$link}' target='_blank'>График работы</a></span>
                                    <span class="infofile">(<xsl:value-of disable-output-escaping="yes" select="EditPasport/Eduinfo/FaceInformation/MainInformation/Graf/item/TYPE"/>; <xsl:value-of disable-output-escaping="yes" select="EditPasport/Eduinfo/FaceInformation/MainInformation/Graf/item/SIZE"/>)</span>
                                  </xsl:if>
                                  </td>
                                </tr>
                              </table>
                            </td>
                          </tr>
                        </xsl:if>
                      </tbody>
                    </table>
                  </span>
              </fieldset><br/>
            </xsl:if>
            <xsl:if test="EditPasport/Eduinfo/FaceInformation/MainContacts/Contacts !=''">
              <fieldset class='information'>
                <legend><h3>Контакты</h3></legend>
                <table border="0" cellspacing="0" cellpadding="0"  class="unit" style="float:left;">
                  <xsl:if test="count(EditPasport/Eduinfo/FaceInformation/MainContacts/Contacts/Phone/item) > 0">
                    <tr>
                      <td colspan="2" width="30%" style="display:table-cell!important;" class="col_1"><b>Телефон:</b>
                      </td>
                    
                      <td valign="top" colspan="2" class="col_2">
                        <span style="vertical-align:top;" itemprop='Telephone'>
                        <xsl:for-each select="EditPasport/Eduinfo/FaceInformation/MainContacts/Contacts/Phone">
                        <xsl:value-of select="item"/><br/>
                        </xsl:for-each>
                        </span> 
                      </td>
                    </tr>
                  </xsl:if>
                  <xsl:if test="count(EditPasport/Eduinfo/FaceInformation/MainContacts/Contacts/Fax/item) > 0">
                    <tr>
                      <td colspan="2" width="30%" style="display:table-cell!important;" class="col_1"><b>Факс:</b>
                      </td>
                    
                      <td valign="top" colspan="2" class="col_2">
                        <span style="vertical-align:top;">
                        <xsl:for-each select="EditPasport/Eduinfo/FaceInformation/MainContacts/Contacts/Fax">
                        <xsl:value-of select="item"/><br/>
                        </xsl:for-each></span> 
                      </td>
                    </tr>
                  </xsl:if>
                  <xsl:if test="count(EditPasport/Eduinfo/FaceInformation/MainContacts/Contacts/Mail/item) > 0">
                    <tr>
                      <td colspan="2" width="30%" style="display:table-cell!important;" class="col_1"><b>E-Mail:</b>
                      </td>
                    
                      <td valign="top" colspan="2" class="col_2">
                        <span style="vertical-align:top;" itemprop='E-mail'>
                            <xsl:for-each select="EditPasport/Eduinfo/FaceInformation/MainContacts/Contacts/Mail">
                            <xsl:variable name="mail"><xsl:value-of select="item"/></xsl:variable>
                            <xsl:if test="$mail!=''"><a href='mailto:{$mail}' target='_blank'><xsl:value-of select="item"/></a><br/></xsl:if>
                            </xsl:for-each>
                        </span> 
                      </td>
                    </tr>
                  </xsl:if>
                  <xsl:if test="EditPasport/Eduinfo/FaceInformation/MainContacts/Site !=''">
                    <tr>
                      <td colspan="2" width="30%" style="display:table-cell!important;" class="col_1"><b>Официальный сайт:</b>
                      </td>
                    
                      <td valign="top" colspan="2" class="col_2">
                        <span style="vertical-align:top;">
                            <xsl:for-each select="EditPasport/Eduinfo/FaceInformation/MainContacts">
                            <xsl:variable name="site"><xsl:value-of select="Site"/></xsl:variable>
                            <xsl:if test="$site!=''"><a href='mailto:{$site}' target='_blank'><xsl:value-of select="Site"/></a><br/></xsl:if>
                            </xsl:for-each>
                        </span> 
                      </td>
                    </tr>
                  </xsl:if>
                </table>
              </fieldset><br/>
            </xsl:if>
            <xsl:if test="count(EditPasport/Eduinfo/FaceInformation/Branches/BranchesLst/Branch2/item) > 0">
              <fieldset class='information'>
                <legend><h3>Филиалы</h3></legend>
                  <div style="width:100%;margin:10px 0px 15px 0px;">
                    <span itemprop='AddressFil'>
                      <xsl:for-each select="EditPasport/Eduinfo/FaceInformation/Branches/BranchesLst/Branch2/item">
                        <xsl:variable name="regimlink"><xsl:value-of select="Regim/item/Link"/></xsl:variable>
                        <xsl:variable name="regimtxt"><xsl:value-of select="RegimTxt"/></xsl:variable>
                        <xsl:variable name="graftxt"><xsl:value-of select="GrafTxt"/></xsl:variable>
                        <xsl:variable name="graflink"><xsl:value-of select="Graf/item/Link"/></xsl:variable>
                        <xsl:variable name="link"><xsl:value-of select="LinkFile/Link"/></xsl:variable>
                        <xsl:variable name="doplink"><xsl:value-of select="FileWithName/item/LinkFile/Link"/></xsl:variable>
                        <xsl:variable name="doplink2"><xsl:value-of select="FileWithName2/item/LinkFile/Link"/></xsl:variable>
                        <xsl:variable name="site"><xsl:value-of select="Site"/></xsl:variable>
                        <xsl:variable name="mail"><xsl:value-of select="Mail"/></xsl:variable>
                        <xsl:variable name="name"><xsl:value-of select="Name"/></xsl:variable>
                        
                        <table border="0" cellspacing="0" cellpadding="0"  class="unit t_mobile" style="margin:0;">
                             <tbody>
                              <xsl:if test="$name!=''">
                                <tr>
                                  <td valign="top" width="30%" class="col_1">
                                    <span style="vertical-align:top;"><b>Наимнование:</b></span> 
                                  </td>
                                  <td colspan="2" style="border-bottom:2px solid #f7f7f7;" width="auto"><span itemprop='Name' class="col_2"><b style="font-size:11pt;"><xsl:value-of select="Name"/></b></span>
                                  </td>
                                </tr>
                              </xsl:if> 
                              <xsl:if test="FioDir !=''">
                                <tr>
                                  <td valign="top"   width="30%" class="col_1">
                                    <span style="vertical-align:top;"><b>Руководитель:</b></span> 
                                  </td>
                                  <td valign="top" width="auto" class="col_2">
                                    <span style="vertical-align:top;" itemprop='Fio'><xsl:value-of select="FioDir"/></span>
                                  </td>
                                </tr>
                              </xsl:if> 
                              <xsl:if test="DirDolgn !=''">
                                <tr>
                                  <td valign="top"   width="30%" class="col_1">
                                    <span style="vertical-align:top;"><b>Должность руководителя:</b></span> 
                                  </td>
                                  <td valign="top"  width="auto" class="col_2">
                                    <span style="vertical-align:top;"><xsl:value-of select="DirDolgn"/></span> 
                                  </td>
                                </tr>
                              </xsl:if>
                              <xsl:if test="Address !=''">
                                <tr>
                                  <td valign="top"   width="30%" class="col_1">
                                    <span style="vertical-align:top;"><b>Адрес:</b></span> 
                                  </td>
                                  <td valign="top" width="auto" class="col_2">
                                    <span style="vertical-align:top;" itemprop='AddressStr'><xsl:value-of select="Address"/></span>
                                  </td>
                                </tr>
                              </xsl:if>
                              <xsl:if test="count(Phone/item) > 0">
                                <tr>
                                  <td valign="top"   width="30%" class="col_1">
                                    <span style="vertical-align:top;"><b>Тел.:</b></span> 
                                  </td>
                                  <td valign="top" width="auto" class="col_2">
                                    <span style="vertical-align:top;"><xsl:value-of select="Phone"/></span>
                                  </td>
                                </tr>
                              </xsl:if>
                              <xsl:if test="$mail!=''">
                                <tr>
                                  <td valign="top"   width="30%" class="col_1">
                                    <span style="vertical-align:top;"><b>E-Mail:</b></span> 
                                  </td>
                                  <td valign="top" width="auto" class="col_2">
                                    <span style="vertical-align:top;"><a href='mailto:{$mail}' target='_blank'><span itemprop='E-mail'><xsl:value-of select="Mail"/></span></a></span>
                                  </td>
                                </tr>
                              </xsl:if>
                              <xsl:if test="$site!=''">
                                <tr>
                                  <td valign="top"   width="30%" class="col_1">
                                    <span style="vertical-align:top;"><b>Сайт:</b></span> 
                                  </td>
                                  <td valign="top" width="auto" class="col_2">
                                    <span style="vertical-align:top;"><a href='{$site}' target='_blank'><span itemprop='Site'><xsl:value-of select="Site"/></span></a></span>
                                  </td>
                                </tr>
                              </xsl:if>
                              <xsl:if test="($regimtxt!='') or ($regimlink!='')">
                                <tr>
                                  <td valign="top"   width="30%" class="col_1">
                                    <span style="vertical-align:top;"><b>Режим работы:</b></span> 
                                  </td>
                                  <td valign="top" width="auto" class="mob-clear col_2">
                                    <xsl:if test="$regimtxt!=''"><span style="vertical-align:top;"><xsl:value-of select="RegimTxt"/></span></xsl:if><br/>
                                    <xsl:if test="$regimlink!=''"><span style="vertical-align:top;" class="fileicon"><a href='{$regimlink}' target='_blank'>Режим работы</a></span><span class="infofile">(<xsl:value-of select="Regim/item/TYPE"/>; <xsl:value-of disable-output-escaping="yes" select="Regim/item/SIZE"/>)</span></xsl:if>
                                  </td>
                                </tr>
                              </xsl:if>
                              <xsl:if test="($graftxt!='') or ($graflink!='')">
                                <tr>
                                  <td valign="top"   width="30%" class="col_1">
                                    <span style="vertical-align:top;"><b>График работы:</b></span> 
                                  </td>
                                  <td valign="top" width="auto" class="mob-clear col_2">
                                    <xsl:if test="$graftxt!=''"><span style="vertical-align:top;"><xsl:value-of select="GrafTxt"/></span></xsl:if><br/>
                                    <xsl:if test="$graflink!=''"><span style="vertical-align:top;" class="fileicon"><a href='{$graflink}' target='_blank'>График работы</a></span><span class="infofile">(<xsl:value-of select="Graf/item/TYPE"/>; <xsl:value-of disable-output-escaping="yes" select="Graf/item/SIZE"/>)</span></xsl:if>
                                  </td>
                                </tr>
                              </xsl:if>
                              <xsl:if test="$link!=''">
                                <tr>
                                  <td></td>
                                  <td valign="top" width="auto" class="mob-clear col_2">
                                      <span style="vertical-align:top;" class="fileicon" itemprop='DivisionClause_DocLink'><a href='{$link}' target='_blank'>Положение</a></span><span class="infofile">(<xsl:value-of select="LinkFile/item/TYPE"/>; <xsl:value-of disable-output-escaping="yes" select="LinkFile/item/SIZE"/>)</span>
                                  </td>
                                </tr>
                              </xsl:if>
                              <xsl:if test="($doplink!='') or ($doplink2!='')">
                                <tr>
                                  <td valign="top"   width="30%" class="col_1">
                                    <span style="vertical-align:top;"><b>Документы:</b></span> 
                                  </td>
                                  <td valign="top" width="auto" class="mob-clear line-h14s col_2">
                                    <xsl:if test="$doplink!=''">
                                      <span style="vertical-align:top;" class="fileicon"><a href='{$doplink}' target='_blank'><xsl:value-of select="FileWithName/item/Name"/></a></span><span class="infofile">(<xsl:value-of select="FileWithName/item/LinkFile/TYPE"/>; <xsl:value-of disable-output-escaping="yes" select="FileWithName/item/LinkFile/SIZE"/>)</span>
                                    </xsl:if>
                                    <br/>
                                    <xsl:if test="$doplink2!=''">
                                      <span style="vertical-align:top;" class="fileicon"><a href='{$doplink2}' target='_blank'><xsl:value-of select="FileWithName2/item/Name"/></a></span><span class="infofile">(<xsl:value-of select="FileWithName2/item/LinkFile/TYPE"/>; <xsl:value-of disable-output-escaping="yes" select="FileWithName2/item/LinkFile/SIZE"/>)</span>
                                    </xsl:if>
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
                    </span>
                  </div>
              </fieldset><br/>
            </xsl:if> 



          </div>
<!-- Карта местоположения организации -->
<script  src = "//api-maps.yandex.ru/2.1/?lang=ru_RU" type= "text/javascript"></script>

                    <script type= "text/javascript" >    
                    ymaps.ready(init);    
                    var myMap, myPlacemark;    
                    function init(){ 
                      myMap = new ymaps.Map("map", {        center: [<xsl:value-of select="EditPasport/Eduinfo/FaceInformation/MainContacts/MyMap/lat"/>,<xsl:value-of select="EditPasport/Eduinfo/FaceInformation/MainContacts/MyMap/lon"/>],        zoom: 16,        controls: ["zoomControl", "typeSelector"]      });      myPlacemark = new ymaps.Placemark([<xsl:value-of select="EditPasport/Eduinfo/FaceInformation/MainContacts/MyMap/lat"/>,<xsl:value-of select="EditPasport/Eduinfo/FaceInformation/MainContacts/MyMap/lon"/>], {balloonContentBody: "undefined"},{preset: "islands#blueDotIcon"});      myMap.geoObjects.add(myPlacemark);
                    }  
                    </script>          

</xsl:template>
</xsl:stylesheet>
<!--

<xsl:for-each select=""></xsl:for-each>
<xsl:value-of select=""/> 
<xsl:variable name="[имя переменной]"><xsl:value-of select=""/></xsl:variable>
{$[имя переменной]}
<xsl:if test="$link!=''"></xsl:if>
-->