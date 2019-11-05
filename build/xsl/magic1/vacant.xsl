<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="structurahtml.xsl"/>
<xsl:import href="scriptsandcss.xsl"/>


<xsl:variable name="pagename" >Вакантные места для приема (перевода)</xsl:variable>

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

<!--page 11-->


          <xsl:if test="count(EditPasport/Eduinfo/Vacancies/FileWithName/item) > 0 ">
            <fieldset class='information'>
			         <legend><h3>Основные документы</h3></legend>
                <table border="0" cellspacing="0" cellpadding="3" style='width: 100%;'>
                  <tbody>
                    <xsl:if test="EditPasport/Eduinfo/Vacancies/Text!=''">
                      <tr>
                        <td class="unit"><xsl:value-of select="EditPasport/Eduinfo/Vacancies/Text"/></td>
                      </tr>
                    </xsl:if>
                  <xsl:for-each select="EditPasport/Eduinfo/Vacancies/FileWithName/item">
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
          <xsl:if test="count(EditPasport/Eduinfo/Vacancies/Queues/ElQueue/item) > 0 ">
            <fieldset class='information'>
                <legend><h3>Электронная очередь</h3></legend>
                <table cellspacing="1" class="tablesorter unit zagol-2" style='width: 100%;'>
                  <tbody>
                  <xsl:for-each select="EditPasport/Eduinfo/Vacancies/Queues/ElQueue/item">
                  <xsl:variable name="link"><xsl:value-of select="Lnk"/></xsl:variable>
                    <xsl:if test="$link!=''">
                      <tr>
                        <td class="line-h14s" width="30%"><span><xsl:value-of select="ItemName"/></span><br/></td>
                        <td class="line-h14s" width="auto">
                        <span><a href='{$link}' target='_blank'><xsl:value-of select="Lnk"/></a></span>
                        </td>
                      </tr>
					          </xsl:if>
                    
                  </xsl:for-each>
                  </tbody>
                </table>
            </fieldset><br/>
          </xsl:if>
			

          
            <fieldset class='information'>
                <legend><h3>Количество вакантных мест для приема (перевода)</h3></legend>
                <span itemprop='Vacant'>
                  <table cellspacing="1" class="" style='width: 100%;'>
                    <tbody>
                      <xsl:if test="count(EditPasport/Eduinfo/Vacancies/FileWithName2/item) > 0 ">
                        <xsl:for-each select="EditPasport/Eduinfo/Vacancies/FileWithName2/item">
                        <xsl:variable name="link"><xsl:value-of select="LinkFile/Link"/></xsl:variable>
                        <xsl:if test="$link!=''">
                          <tr>
                            <td>
                              <span class="fileicon"><a href='{$link}' target='_blank'><xsl:value-of select="Name"/></a></span><span class="infofile">(<xsl:value-of select="LinkFile/TYPE"/>; <xsl:value-of disable-output-escaping="yes" select="LinkFile/SIZE"/>)</span>
                            </td>
                          </tr>
                        </xsl:if>
                        </xsl:for-each>
                      </xsl:if>
                    </tbody>
                  </table><br/>

                <xsl:if test="count(EditPasport/Eduinfo/Vacancies/EduCountsList5/EduCountsItem5/item) > 0 ">
                  <legend><h3>По классам и возрастам</h3></legend>
                  <table cellspacing="1" class="tablesorter table-3" style='width: 100%;'>
                    <thead>
                      <tr>
                        <th width="auto">Возрастной диапазон</th>
                        <th width="170">Количество мест</th>
                      </tr>
                    </thead>
                    <tbody>
                    <xsl:for-each select="EditPasport/Eduinfo/Vacancies/EduCountsList5/EduCountsItem5/item">
                      <tr>
                        <td data-label="Возрастной диапазон:">
                          <xsl:choose>
                            <xsl:when test ="EndAge!=''">
                              От <xsl:value-of select="StartAge"/> до <xsl:value-of select="EndAge"/> лет
                            </xsl:when>
                            <xsl:otherwise>
                              <xsl:value-of select="StartAge"/>
                            </xsl:otherwise>
                          </xsl:choose>
                        </td>
                        <td data-label="Количество мест:"><xsl:value-of select="Count1"/></td>
                      </tr>
                    </xsl:for-each>
                    </tbody>
                  </table><br/>
                </xsl:if>
                <xsl:if test="count(EditPasport/Eduinfo/Vacancies/EduCountsList1/EduCountsItem/item) > 0 ">
                  <legend><h3>По каждой образовательной программе</h3></legend>
                  <div style="width:100%;margin:10px 0px 15px 0px;">
                  <xsl:for-each select="EditPasport/Eduinfo/Vacancies/EduCountsList1/EduCountsItem/item">
                  <table cellspacing="0" class="tablesorter unit zagol-2" style='width: 100%;margin:0!important;'>
                    <tbody>
                      <xsl:if test="Programm!=''">
                        <tr>
                          <td class="line-h14s"><b style="margin-right:5px;">Образовательная программа:</b><xsl:value-of select="Programm"/></td>
                        </tr>
                      </xsl:if>
                      <xsl:if test="Count1!='0'">
                        <tr>
                          <td class="line-h14s"><b style="margin-right:5px;">За счет ассигнований федерального бюджета:</b><xsl:value-of select="Count1"/></td>
                        </tr>
                      </xsl:if>
                      <xsl:if test="Count2!='0'">
                        <tr>
                          <td class="line-h14s"><b style="margin-right:5px;">За счет бюджета субъектов РФ:</b><xsl:value-of select="Count2"/></td>
                        </tr>
                      </xsl:if>
                      <xsl:if test="Count3!='0'">
                        <tr>
                          <td class="line-h14s"><b style="margin-right:5px;">За счет местных бюджетов:</b><xsl:value-of select="Count3"/></td>
                        </tr>
                      </xsl:if>
                      <xsl:if test="Count4!='0'">
                        <tr>
                          <td class="line-h14s"><b style="margin-right:5px;">По договорам об образовании за счет средств физических и (или) юридических лиц:</b><xsl:value-of select="Count4"/></td>
                        </tr>
                      </xsl:if>
                    </tbody>
                  </table>
                  <div style="width:100%;height:15px;background-color:#cccccc;"></div>
                  </xsl:for-each>
                </div>
				        </xsl:if>
                <xsl:if test="count(EditPasport/Eduinfo/Vacancies/EduCountsList2/EduCountsItem2/item) > 0 ">
                <legend><h3>По каждой профессии</h3></legend>
                <div style="width:100%;margin:10px 0px 15px 0px;">
                  <xsl:for-each select="EditPasport/Eduinfo/Vacancies/EduCountsList2/EduCountsItem2/item">
                  <table cellspacing="0" class="tablesorter unit zagol-2" style='width: 100%;margin:0!important;'>
                    <tbody>
                      <xsl:if test="Programm!=''">
                        <tr>
                          <td class="line-h14s"><b style="margin-right:5px;">Профессия:</b><xsl:value-of select="Programm"/></td>
                        </tr>
                      </xsl:if>
                      <xsl:if test="Count1!='0'">
                        <tr>
                          <td class="line-h14s"><b style="margin-right:5px;">За счет ассигнований федерального бюджета:</b><xsl:value-of select="Count1"/></td>
                        </tr>
                      </xsl:if>
                      <xsl:if test="Count2!='0'">
                        <tr>
                          <td class="line-h14s"><b style="margin-right:5px;">За счет бюджета субъектов РФ:</b><xsl:value-of select="Count2"/></td>
                        </tr>
                      </xsl:if>
                      <xsl:if test="Count3!='0'">
                        <tr>
                          <td class="line-h14s"><b style="margin-right:5px;">За счет местных бюджетов:</b><xsl:value-of select="Count3"/></td>
                        </tr>
                      </xsl:if>
                      <xsl:if test="Count4!='0'">
                        <tr>
                          <td class="line-h14s"><b style="margin-right:5px;">По договорам об образовании за счет средств физических и (или) юридических лиц:</b><xsl:value-of select="Count4"/></td>
                        </tr>
                      </xsl:if>
                    </tbody>
                  </table>
                  <div style="width:100%;height:15px;background-color:#cccccc;"></div>
                  </xsl:for-each>
                </div>
                </xsl:if>
                <xsl:if test="count(EditPasport/Eduinfo/Vacancies/EduCountsList3/EduCountsItem3/item) > 0 ">
                <legend><h3>По каждой специальности</h3></legend>
                <div style="width:100%;margin:10px 0px 15px 0px;">
                  <xsl:for-each select="EditPasport/Eduinfo/Vacancies/EduCountsList3/EduCountsItem3/item">
                  <table cellspacing="0" class="tablesorter unit zagol-2" style='width: 100%;margin:0!important;'>
                    <tbody>
                      <xsl:if test="Programm!=''">
                        <tr>
                          <td class="line-h14s"><b style="margin-right:5px;">Специальность:</b><xsl:value-of select="Programm"/></td>
                        </tr>
                      </xsl:if>
                      <xsl:if test="Count1!='0'">
                        <tr>
                          <td class="line-h14s"><b style="margin-right:5px;">За счет ассигнований федерального бюджета:</b><xsl:value-of select="Count1"/></td>
                        </tr>
                      </xsl:if>
                      <xsl:if test="Count2!='0'">
                        <tr>
                          <td class="line-h14s"><b style="margin-right:5px;">За счет бюджета субъектов РФ:</b><xsl:value-of select="Count2"/></td>
                        </tr>
                      </xsl:if>
                      <xsl:if test="Count3!='0'">
                        <tr>
                          <td class="line-h14s"><b style="margin-right:5px;">За счет местных бюджетов:</b><xsl:value-of select="Count3"/></td>
                        </tr>
                      </xsl:if>
                      <xsl:if test="Count4!='0'">
                        <tr>
                          <td class="line-h14s"><b style="margin-right:5px;">По договорам об образовании за счет средств физических и (или) юридических лиц:</b><xsl:value-of select="Count4"/></td>
                        </tr>
                      </xsl:if>
                    </tbody>
                  </table>
                  <div style="width:100%;height:15px;background-color:#cccccc;"></div>
                  </xsl:for-each>
                </div>
              </xsl:if>
              <xsl:if test="count(EditPasport/Eduinfo/Vacancies/EduCountsList4/EduCountsItem4/item) > 0 ">
                <legend><h3>По каждому направлению подготовки</h3></legend>
                <div style="width:100%;margin:10px 0px 15px 0px;">
                  <xsl:for-each select="EditPasport/Eduinfo/Vacancies/EduCountsList4/EduCountsItem4/item">
                  <table cellspacing="0" class="tablesorter unit zagol-2" style='width: 100%;margin:0!important;'>
                    <tbody>
                      <xsl:if test="Programm!=''">
                        <tr>
                          <td class="line-h14s"><b style="margin-right:5px;">Направление подготовки:</b><xsl:value-of select="Programm"/></td>
                        </tr>
                      </xsl:if>
                      <xsl:if test="Count1!='0'">
                        <tr>
                          <td class="line-h14s"><b style="margin-right:5px;">За счет ассигнований федерального бюджета:</b><xsl:value-of select="Count1"/></td>
                        </tr>
                      </xsl:if>
                      <xsl:if test="Count2!='0'">
                        <tr>
                          <td class="line-h14s"><b style="margin-right:5px;">За счет бюджета субъектов РФ:</b><xsl:value-of select="Count2"/></td>
                        </tr>
                      </xsl:if>
                      <xsl:if test="Count3!='0'">
                        <tr>
                          <td class="line-h14s"><b style="margin-right:5px;">За счет местных бюджетов:</b><xsl:value-of select="Count3"/></td>
                        </tr>
                      </xsl:if>
                      <xsl:if test="Count4!='0'">
                        <tr>
                          <td class="line-h14s"><b style="margin-right:5px;">По договорам об образовании за счет средств физических и (или) юридических лиц:</b><xsl:value-of select="Count4"/></td>
                        </tr>
                      </xsl:if>
                    </tbody>
                  </table>
                  <div style="width:100%;height:15px;background-color:#cccccc;"></div>
                  </xsl:for-each>
                </div>
              </xsl:if>
                </span>
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