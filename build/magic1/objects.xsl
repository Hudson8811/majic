<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="structurahtml.xsl"/>
<xsl:import href="scriptsandcss.xsl"/>


<xsl:variable name="pagename" >Материально-техническое обеспечение и оснащенность образовательного процесса</xsl:variable>
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

<!--page-07 Сведения о материальном обеспечении учебного процесса-->

          <xsl:if test="count(EditPasport/Eduinfo/MaterialBase/Bilds/Build/item) > 0">
            <fieldset class='information'>
                <legend><h3>Сведения о наличии у образовательной организации на праве собственности или ином законном основании зданий, строений, сооружений, территорий, необходимых для осуществления образовательной деятельности</h3></legend>
              <div style="width:100%;margin:10px 0px 15px 0px;">
                    <xsl:for-each select="EditPasport/Eduinfo/MaterialBase/Bilds/Build/item">
                      <xsl:variable name="photolink"><xsl:value-of select="PhotoGal/PhotoWithName/item/LinkFile/Link"/></xsl:variable>
                      <xsl:variable name="link"><xsl:value-of select="LinkFile/item/Link"/></xsl:variable>
                      <xsl:variable name="alt"><xsl:value-of select="PhotoGal/PhotoWithName/item/Name"/></xsl:variable>
                      <table cellspacing="1" class="tablesorter unit t_mobile" style='width: 100%;margin:0!important;'>
                        <tbody>
                          <tr>
                            <td data-label="Фотоальбом" width="20%" class="mob-clear">
                            <div id='gallery-area' style='margin: 0;'>
                              <xsl:if test="$photolink!=''"><a href="{$photolink}" target='_blank' class="highslide" onclick='return hs.expand(this)'><img src='{$photolink}' alt="{$alt}" title="{$alt}" border="0"  class="thumbl" /></a></xsl:if>
                              <div class='highslide-caption'><xsl:value-of select="PhotoGal/PhotoWithName/item/Name"/></div>
                              <!-- <div class='hidden-container'>
                                <xsl:if test="$photolink!=''"><a href="{$photolink}" class='highslide' onclick='photoclick("thumb1");'><img src='photo/sml_{$photolink}'/></a></xsl:if>
                                <div class='highslide-caption'><xsl:value-of select="PhotoGal/PhotoWithName/item/Name"/></div>
                              </div> -->
                            </div>
                            </td>
                            <td class="mob-clear" width="100%">
                              <table cellspacing="1" class="tablesorter" style='width: 100%;margin:0!important;background-color:#fff;'>
                                <xsl:if test="Name!=''">
                                  <tr>
                                    <td data-label="Наименование объекта"><b style="margin-right:5px;">Наименование объекта:</b><span><xsl:value-of select="Name"/></span></td>
                                  </tr>
                                </xsl:if>
                                <xsl:if test="Adr!=''">
                                  <tr>
                                    <td data-label="Адрес объекта"><b style="margin-right:5px;">Адрес объекта:</b><span><xsl:value-of select="Adr"/></span></td>
                                  </tr>
                                </xsl:if>
                                <xsl:if test="Nazn!=''">
                                  <tr>
                                    <td data-label="Описание объекта"><b style="margin-right:5px;">Назначение объекта:</b><span><xsl:value-of select="Nazn"/></span></td>
                                  </tr>
                                </xsl:if>
                                <xsl:if test="DescriptionIiL!=''">
                                  <tr>
                                    <td><b style="margin-right:5px;">Обеспечение доступа в здание инвалидов и лиц с ОВЗ:</b><span><xsl:value-of select="DescriptionIiL"/></span></td>
                                  </tr>
                                </xsl:if>
                                <xsl:if test="Size!=''">
                                  <tr>
                                    <td data-label="Площадь в м2"><b style="margin-right:5px;">Площадь:</b><span><xsl:value-of select="Size"/> м<sup>2</sup></span></td>
                                  </tr>
                                </xsl:if>
                                <xsl:if test="$link!=''">
                                <tr>
                                  <td data-label="Документ"><xsl:if test="$link!=''"><span class="fileicon"><a href='{$link}' target='_blank'>Документ</a></span><span class="infofile">(<xsl:value-of select="LinkFile/item/TYPE"/>; <xsl:value-of disable-output-escaping="yes" select="LinkFile/item/SIZE"/>)</span></xsl:if>
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
           <xsl:if test="count(EditPasport/Eduinfo/MaterialBase/Rooms2/Room2/item) > 0">
            <fieldset class='information'>
              <legend><h3>Сведения о наличии оборудованных учебных кабинетов, объектов для проведения практических занятий</h3></legend>
              <div style="width:100%;margin:10px 0px 15px 0px;">
                <span itemprop='PurposeKab'>
                  <xsl:for-each select="EditPasport/Eduinfo/MaterialBase/Rooms2/Room2/item">
                  <xsl:variable name="photolink"><xsl:value-of select="PhotoGal/PhotoWithName/item/LinkFile/Link"/></xsl:variable>
                  <xsl:variable name="link"><xsl:value-of select="LinkFile/Link"/></xsl:variable>
                  <xsl:variable name="alt"><xsl:value-of select="PhotoGal/PhotoWithName/item/Name"/></xsl:variable>
                  <table cellspacing="1" class="tablesorter unit t_mobile" style='width: 100%;margin:0!important;'>
                    <tbody>
                      <tr>
                        <td data-label="Фотоальбом" width="20%" class="mob-clear">
                          <div id='gallery-area' style='margin: 0;'>
                            <xsl:if test="$photolink!=''"><a href="{$photolink}" target='_blank' class="highslide" onclick='return hs.expand(this)'><img src='{$photolink}' alt="{$alt}" title="{$alt}" border="0"  class="thumbl"/></a></xsl:if>
                            <div class='highslide-caption'><xsl:value-of select="PhotoGal/PhotoWithName/item/Name"/></div>
                            <!-- <div class='hidden-container'>
                            <xsl:if test="$photolink!=''"><a href="photo/{$photolink}" class='highslide' onclick='photoclick1("thumb1");'><img src='photo/sml_{$photolink}'/></a></xsl:if>
                            <div class='highslide-caption'><xsl:value-of select="PhotoGal/PhotoWithName/Name"/></div>
                            </div> -->
                          </div>
                        </td>
                        <td class="mob-clear" width="100%">
                          <table cellspacing="1" class="tablesorter" style='width: 100%;margin:0!important;background-color:#fff;'>
                            <xsl:if test="Name!=''">
                              <tr>
                                <td><b style="margin-right:5px;">Наименование объекта:</b><span><xsl:value-of select="Name"/></span></td>
                              </tr>
                            </xsl:if>
                            <xsl:if test="Adr!=''">
                              <tr>
                                <td><b style="margin-right:5px;">Адрес:</b><span><xsl:value-of select="Adr"/></span></td>
                              </tr>
                            </xsl:if>
                            <xsl:if test="CountIiL!=''">
                              <tr>
                                <td><b style="margin-right:5px;">Количество оборудованных учебных кабинетов 1*/2**:</b><span><xsl:value-of select="Count"/> / <xsl:value-of select="CountIiL"/></span></td>
                              </tr>
                            </xsl:if>
                            <xsl:if test="Size!=''">
                              <tr>
                                <td><b style="margin-right:5px;">Общая площадь оборудованных учебных кабинетов:</b><span><xsl:value-of select="Size"/> м<sup>2</sup></span></td>
                              </tr>
                            </xsl:if>
                            <xsl:if test="Count2IiL!=''">
                              <tr>
                                <td><b style="margin-right:5px;">Количество объектов для практических занятий 1*/2**:</b><span><xsl:value-of select="Count2"/> / <xsl:value-of select="Count2IiL"/></span></td>
                              </tr>
                            </xsl:if>
                            <xsl:if test="Size2!=''">
                              <tr>
                                <td><b style="margin-right:5px;">Общая площадь в объектов для практических занятий:</b><span><xsl:value-of select="Size2"/> м<sup>2</sup></span></td>
                              </tr>
                            </xsl:if>
                          </table>
                        </td>
                      </tr>
                      <tr>
                        <td style="height:15px;width:100%;background-color:#cccccc;padding:0;" colspan="2"></td>
                      </tr>
                    </tbody>
                  </table>
                  </xsl:for-each>
				  <div width="100%"><p>* всего<br/>** в том числе приспособленных для использования инвалидами и лицами с ОВЗ</p></div>
                </span>
               </div>
            </fieldset><br/>
			     </xsl:if>
           <xsl:if test="count(EditPasport/Eduinfo/MaterialBase/Rooms3/Room3/item) > 0">
            <fieldset class='information'>
              <legend><h3>Сведения о наличии библиотек, объектов питания и охраны здоровья обучающихся (восптанников)</h3></legend>
                <div style="width:100%;margin:10px 0px 15px 0px;">
                <span itemprop='PurposeLibr'>
                  <xsl:for-each select="EditPasport/Eduinfo/MaterialBase/Rooms3/Room3/item">
                    <xsl:variable name="photolink"><xsl:value-of select="PhotoGal/PhotoWithName/item/LinkFile/Link"/></xsl:variable>
                    <xsl:variable name="link"><xsl:value-of select="LinkFile/item/FileName"/></xsl:variable>
                    <xsl:variable name="alt"><xsl:value-of select="PhotoGal/PhotoWithName/item/Name"/></xsl:variable>
                  <table cellspacing="1" class="tablesorter unit t_mobile" style='width: 100%;margin:0!important;' itemprop='Meals'>
                    <tbody>
                      <tr>
                        <td data-label="Фотоальбом" width="20%" class="mob-clear">
                          <div id='gallery-area' style='margin: 0;'>
                            <xsl:if test="$photolink!=''"><a href="{$photolink}" target='_blank' class="highslide" onclick='return hs.expand(this)'><img src='{$photolink}' alt="{$alt}" title="{$alt}" border="0"  class="thumbl"/></a></xsl:if>
                            <div class='highslide-caption'><xsl:value-of select="PhotoGal/PhotoWithName/item/Name"/></div>
                            <!-- <div class='hidden-container'>
                              <xsl:if test="$photolink!=''"><a href="photo/{$photolink}" class='highslide' onclick='photoclick2("thumb1");'><img src='photo/sml_{$photolink}'/></a></xsl:if>
                              <div class='highslide-caption'><xsl:value-of select="PhotoGal/PhotoWithName/Name"/></div>
                            </div> -->
                          </div>
                        </td>
                        <td class="mob-clear" width="100%">
                          <table cellspacing="1" class="tablesorter" style='width: 100%;margin:0!important;background-color:#fff;'>
                            <xsl:if test="Name!=''">
                              <tr>
                                <td><b style="margin-right:5px;">Наименование объекта:</b><span><xsl:value-of select="Name"/></span></td>
                              </tr>
                            </xsl:if>
                            <xsl:if test="Adr!=''">
                              <tr>
                                <td><b style="margin-right:5px;">Адрес:</b><span><xsl:value-of select="Adr"/></span></td>
                              </tr>
                            </xsl:if>
                            <xsl:if test="Size!=''">
                              <tr>
                                <td><b style="margin-right:5px;">Площадь:</b><span><xsl:value-of select="Size"/> м<sup>2</sup></span></td>
                              </tr>
                            </xsl:if>
                            <xsl:if test="CountIiL!=''">
                              <tr>
                                <td><b style="margin-right:5px;">Количество мест 1*/2**:</b><span><xsl:value-of select="Count"/> / <xsl:value-of select="CountIiL"/></span></td>
                              </tr>
                            </xsl:if>
                          </table>
                        </td>
                      </tr>
                      <tr>
                        <td style="height:15px;width:100%;background-color:#cccccc;padding:0;" colspan="2"></td>
                      </tr>
                    </tbody>
                    
                  </table>
                  </xsl:for-each>
				  <div width="100%"><p>* всего<br/>** в том числе приспособленных для использования инвалидами и лицами с ОВЗ</p></div>
                </span>
              </div>
            </fieldset><br/>
			</xsl:if>
      <xsl:if test="count(EditPasport/Eduinfo/MaterialBase/Rooms4/Room4/item) > 0">
            <fieldset class='information'>
              <legend><h3>Сведения о наличии объектов спорта</h3></legend>
               <div style="width:100%;margin:10px 0px 15px 0px;">
                <span itemprop='PurposeSport'>
                  <xsl:for-each select="EditPasport/Eduinfo/MaterialBase/Rooms4/Room4/item">
                    <xsl:variable name="photolink"><xsl:value-of select="PhotoGal/PhotoWithName/item/LinkFile/Link"/></xsl:variable>
                    <xsl:variable name="link"><xsl:value-of select="LinkFile/item/Link"/></xsl:variable>
                    <xsl:variable name="alt"><xsl:value-of select="PhotoGal/PhotoWithName/item/Name"/></xsl:variable>
                  <table cellspacing="1" class="tablesorter unit t_mobile" style='width: 100%;margin:0!important;'>
                    <tbody>
                      <tr>
                        <td data-label="Фотоальбом" width="20%" class="mob-clear">
                          <div id='gallery-area' style='margin: 0;'>
                            <xsl:if test="$photolink!=''"><a href="{$photolink}" target='_blank' class="highslide" onclick='return hs.expand(this)'><img src='{$photolink}' alt="{$alt}" title="{$alt}" border="0" class="thumbl"/></a></xsl:if>
                            <div class='highslide-caption'><xsl:value-of select="PhotoGal/PhotoWithName/item/Name"/></div>
                            <!-- <div class='hidden-container'>
                              <xsl:if test="$photolink!=''"><a href="photo/{$photolink}" class='highslide' onclick='photoclick3("thumb1");'><img src='photo/sml_{$photolink}'/></a></xsl:if>
                              <div class='highslide-caption'><xsl:value-of select="PhotoGal/PhotoWithName/item/Name"/></div>
                            </div> -->
                          </div>
                        </td>
                        <td class="mob-clear" width="100%">
                          <table cellspacing="1" class="tablesorter" style='width: 100%;margin:0!important;background-color:#fff;'>
                            <xsl:if test="Name!=''">
                              <tr>
                                <td><b style="margin-right:5px;">Вид объекта спорта (спортивного сооружения):</b><span><xsl:value-of select="Name"/></span></td>
                              </tr>
                            </xsl:if>
                            <xsl:if test="Adr!=''">
                              <tr>
                                <td><b style="margin-right:5px;">Адрес:</b><span><xsl:value-of select="Adr"/></span></td>
                              </tr>
                            </xsl:if>
                            <xsl:if test="Size!=''">
                              <tr>
                                <td><b style="margin-right:5px;">Площадь:</b><span><xsl:value-of select="Size"/> м<sup>2</sup></span></td>
                              </tr>
                            </xsl:if>
                            <xsl:if test="Description!=''">
                              <tr>
                                <td><b style="margin-right:5px;">Описание:</b><span><xsl:value-of select="Description"/></span></td>
                              </tr>
                            </xsl:if>
                          </table>
                        </td>
                      </tr>
                      <tr>
                        <td style="height:15px;width:100%;background-color:#cccccc;padding:0;" colspan="2"></td>
                      </tr>
                    </tbody>
                  </table>
                  </xsl:for-each>
				  
                </span>
              </div>
            </fieldset><br/>
        </xsl:if>
        <xsl:if test="count(EditPasport/Eduinfo/MaterialBase/Rooms/Room/item) > 0">
            <fieldset class='information'>
                <legend><h3>Сведения об оснащении оборудованных учебных кабинетов, объектов для проведения практических занятий, библиотек, объектов спорта, средств обучения и воспитания</h3></legend>
              <div style="width:100%;margin:10px 0px 15px 0px;">
                <span itemprop='PurposePrac'>
                  <xsl:for-each select="EditPasport/Eduinfo/MaterialBase/Rooms/Room/item">
                    <xsl:variable name="photolink"><xsl:value-of select="PhotoGal/PhotoWithName/item/LinkFile/Link"/></xsl:variable>
                    <xsl:variable name="link"><xsl:value-of select="LinkFile/item/Link"/></xsl:variable>
                    <xsl:variable name="link2"><xsl:value-of select="LinkFile2/item/Link"/></xsl:variable>
                    <xsl:variable name="alt"><xsl:value-of select="PhotoGal/PhotoWithName/item/Name"/></xsl:variable>
                  <table cellspacing="1" class="tablesorter unit t_mobile" style='width: 100%;margin:0!important;' itemprop='PurposeLibr'>
                    <tbody itemprop='PurposeSport'>
                      <tr>
                        <td data-label="Фотоальбом" width="20%" class="mob-clear">
                          <div id='gallery-area' style='margin: 0;'>
                            <xsl:if test="$photolink!=''"><a href="{$photolink}" target='_blank' class="highslide" onclick='return hs.expand(this)'><img src='{$photolink}' alt="{$alt}" title="{$alt}" border="0"  class="thumbl" /></a></xsl:if>
                            <div class='highslide-caption'><xsl:value-of select="PhotoGal/PhotoWithName/item/Name"/></div>
                           <!--  <div class='hidden-container'>
                              <xsl:if test="$photolink!=''"><a href="photo/{$photolink}" class='highslide' onclick='photoclick4("thumb1");'><img src='photo/sml_{$photolink}'/></a></xsl:if>
                              <div class='highslide-caption'><xsl:value-of select="PhotoGal/PhotoWithName/item/Name"/></div>
                            </div> -->
                          </div>
                        </td>
                        <td class="mob-clear" width="100%">
                          <table cellspacing="1" class="tablesorter" style='width: 100%;margin:0!important;background-color:#fff;'>
                            <xsl:if test="Name!=''">
                              <tr>
                                <td><b style="margin-right:5px;">Название:</b><span><xsl:value-of select="Name"/></span></td>
                              </tr>
                            </xsl:if>
                            <xsl:if test="Description!=''">
                              <tr>
                                <td><b style="margin-right:5px;">Описание, в том числе и приспособленности для использования инвалидами и лицами с ОВЗ:</b><span><xsl:value-of select="Description"/></span></td>
                              </tr>
                            </xsl:if>
                            <xsl:if test="$link!=''">
                              <tr>
                                  <td data-label="Документ"><xsl:if test="$link!=''"><span class="fileicon"><a href='{$link}' target='_blank'>Материально-техническое оснащение</a></span><span class="infofile">(<xsl:value-of select="LinkFile/item/TYPE"/>; <xsl:value-of disable-output-escaping="yes" select="LinkFile/item/SIZE"/>)</span></xsl:if>
                                  </td>
                              </tr>
                            </xsl:if>
                            <xsl:if test="$link!=''">
                              <tr>
                                  <td data-label="Документ"><xsl:if test="$link2!=''"><span class="fileicon"><a href='{$link2}' target='_blank'>Средства обучения и воспитания</a></span><span class="infofile">(<xsl:value-of select="LinkFile2/item/TYPE"/>; <xsl:value-of disable-output-escaping="yes" select="LinkFile2/item/SIZE"/>)</span></xsl:if>
                                  </td>
                              </tr>
                            </xsl:if>
                          </table>
                        </td>
                      </tr>
                      <tr>
                        <td style="height:15px;width:100%;background-color:#cccccc;padding:0;" colspan="2"></td>
                      </tr>
                    </tbody>
                  </table>
                  </xsl:for-each>
                </span>
              </div>
            </fieldset><br/>
			 </xsl:if>
          <xsl:if test="(EditPasport/Eduinfo/MaterialBase/Text1 !='') or (count(EditPasport/Eduinfo/MaterialBase/LinkFileLst/item)>0)">
            <fieldset class='information'>
                <legend><h3>Условия питания и охраны здоровья обучающихся (восптанников), в том числе инвалидов и лиц с ОВЗ</h3></legend>
                <span itemprop='Meals'>
                  <table border="0" cellspacing="0" cellpadding="3" style='width: 100%;'>
                    <tbody>
                    <xsl:for-each select="EditPasport/Eduinfo/MaterialBase">
                     <xsl:if test="Text1!=''">
                        <tr>
                          <td class="unit" style="border:1px solid #cccccc;"><xsl:value-of select="Text1"/></td>
                        </tr>
                      </xsl:if>
                    </xsl:for-each>
                    </tbody>
                  </table>
                  <table cellspacing="1" class="tablesorter unit zagol-2" style='width: 100%;'>
                    <tbody>
                    <xsl:for-each select="EditPasport/Eduinfo/MaterialBase/LinkFileLst/item">
                    <xsl:variable name="link"><xsl:value-of select="LinkFile/Link"/></xsl:variable>
                      <tr>
                        <td class="line-h14s">
                        <xsl:if test="$link!=''">
                          <span style="white-space:nowrap;"><span class="fileicon"><a href='{$link}' target='_blank'><xsl:value-of select="Name"/></a></span><span class="infofile">(<xsl:value-of select="LinkFile/TYPE"/>; <xsl:value-of disable-output-escaping="yes" select="LinkFile/SIZE"/>)</span></span>
                        </xsl:if>
                        </td>
                      </tr>
                    </xsl:for-each>
                    </tbody>
                  </table>
                </span>
            </fieldset><br/>
          </xsl:if>
			     <xsl:if test="(EditPasport/Eduinfo/MaterialBase/Text2 !='') or (count(EditPasport/Eduinfo/MaterialBase/LinkFile2/item)>0)">
            <fieldset class='information'>
                <legend><h3>Доступ к информационным системам и информационно-телекоммуникационным сетям, в том числе инвалидов и лиц с ОВЗ</h3></legend>
                <span itemprop='ComNet'>
                  <table border="0" cellspacing="0" cellpadding="3" style='width: 100%;'>
                    <tbody>
                    <xsl:for-each select="EditPasport/Eduinfo/MaterialBase">
                      <xsl:if test="Text2!=''">
                      <tr>
                        <td class="unit" style="border:1px solid #cccccc;"><xsl:value-of disable-output-escaping="yes" select="Text2"/></td>
                      </tr>
                    </xsl:if>
                    </xsl:for-each>
                    </tbody>
                  </table>
                  <table cellspacing="1" class="tablesorter unit zagol-2" style='width: 100%;'>
                    <tbody>
                    <xsl:for-each select="EditPasport/Eduinfo/MaterialBase/LinkFile2/item">
                    <xsl:variable name="link"><xsl:value-of select="LinkFile/Link"/></xsl:variable>
                      <tr>
                        <td class="line-h14s">
                        <xsl:if test="$link!=''">
                          <span style="white-space:nowrap;"><span class="fileicon"><a href='{$link}' target='_blank'><xsl:value-of select="Name"/></a></span><span class="infofile">(<xsl:value-of select="LinkFile/TYPE"/>; <xsl:value-of disable-output-escaping="yes" select="LinkFile/SIZE"/>)</span></span>
                        </xsl:if>
                        </td>
                      </tr>
                    </xsl:for-each>
                    </tbody>
                  </table>
                </span>
            </fieldset><br/>
			     </xsl:if>

			     <xsl:if test="(EditPasport/Eduinfo/MaterialBase/Text3 !='') or (count(EditPasport/Eduinfo/MaterialBase/LinkFileLst3/item)>0)">
            <fieldset class='information'>
                <legend><h3>Наличие спец. тех. средств обучения коллективного и индивидуального пользования для инвалидов и лиц с ОВЗ</h3></legend>
                <span itemprop=''>
                  <table border="0" cellspacing="0" cellpadding="3" style='width: 100%;'>
                    <tbody>
                    <xsl:for-each select="EditPasport/Eduinfo/MaterialBase">
                      <xsl:if test="Text3!=''">
                      <tr>
                        <td class="unit" style="border:1px solid #cccccc;"><xsl:value-of select="Text3"/></td>
                      </tr>
                    </xsl:if>
                    </xsl:for-each>
                    </tbody>
                  </table>
                  <table cellspacing="1" class="tablesorter unit zagol-2" style='width: 100%;'>
                    <tbody>
                    <xsl:for-each select="EditPasport/Eduinfo/MaterialBase/LinkFileLst3/item">
                    <xsl:variable name="link"><xsl:value-of select="LinkFile/Link"/></xsl:variable>
                      <tr>
                        <td class="line-h14s">
                        <xsl:if test="$link!=''">
                          <span style="white-space:nowrap;"><span class="fileicon"><a href='{$link}' target='_blank'><xsl:value-of select="Name"/></a></span><span class="infofile">(<xsl:value-of select="LinkFile/TYPE"/>; <xsl:value-of disable-output-escaping="yes" select="LinkFile/SIZE"/>)</span></span>
                        </xsl:if>
                        </td>
                      </tr>
                    </xsl:for-each>
                    </tbody>
                  </table>
                </span>
            </fieldset><br/>
			     </xsl:if>

			<xsl:if test="count(EditPasport/Eduinfo/MaterialBase/EORS/InternetProjectItem/item) > 0 ">
            <fieldset class='information'>
                <legend><h3>Электронные образовательные ресурсы, к которым обеспечивается доступ обучающихся (восптанников)</h3></legend>
                <div style="width:100%;margin:10px 0px 15px 0px;">
                <span itemprop='ERList'>
				        <xsl:for-each select="EditPasport/Eduinfo/MaterialBase/EORS/InternetProjectItem/item">
                    <xsl:variable name="link"><xsl:value-of select="URL"/></xsl:variable>
                    <xsl:variable name="forovz"><xsl:value-of select="ForOVZ"/></xsl:variable>
                    <table cellspacing="1" class="tablesorter unit zagol-2" style='width: 100%;margin:0!important;'>
                      <tbody>
                        <xsl:if test="ItemName!=''">
                          <tr><td class="line-h14s"><b style="margin-right:5px;">Название:</b><xsl:value-of select="ItemName"/></td></tr>
                        </xsl:if>
                        <xsl:if test="$link!=''">
                          <tr><td class="line-h14s"><b style="margin-right:5px;">Ссылка:</b><xsl:if test="$link!=''"><a href="{$link}" target="_blank"><xsl:value-of select="URL"/></a></xsl:if></td></tr>
                        </xsl:if>

                          <tr><td class="line-h14s"><b style="margin-right:5px;">Приспособлен для использования инвалидами и лицами с ОВЗ:</b><xsl:if test="$forovz='1'">Да</xsl:if>
                          <xsl:if test="$forovz=''">Нет</xsl:if></td></tr>

	                    <!--<tr><td style="height:15px;background-color:#cccccc;"></td></tr>-->
                      </tbody>
                    </table>
					<div style="height:15px;background-color:#cccccc;width:100%;"></div>
                    </xsl:for-each>
                </span>
               </div>
            </fieldset><br/>
			   </xsl:if>
            <fieldset class='information'>
                <legend><h3>Ссылки на сайты официальных организаций системы образования</h3></legend>
                <table cellspacing="1" class="tablesorter unit zagol-2" style='width: 100%;'>
                  <tbody>
                  <xsl:for-each select="EditPasport/Eduinfo/MaterialBase/DefEORS/InternetProjectItemCompact/item">
                  <xsl:variable name="link"><xsl:value-of select="URL"/></xsl:variable>
                  <tr>
                    <td class="line-h14s"><span><xsl:value-of select="ItemName"/></span>
                      <a href="{$link}" target="_blank"><span style=""><xsl:value-of select="URL"/></span></a>
                    </td>
                  </tr>
                  </xsl:for-each>
                  </tbody>
                </table>
            </fieldset><br/>

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