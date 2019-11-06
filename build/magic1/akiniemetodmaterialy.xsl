<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">


<xsl:import href="structurahtml.xsl"/>
<xsl:import href="scriptsandcss.xsl"/>


<xsl:variable name="pagename" >Методические материалы</xsl:variable>

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
			      <fieldset class='information'>
              <legend><h3>Методические материалы по вопросам противодействия коррупции</h3></legend>
              <span itemprop=''>
                <table cellspacing="1" class="tablesorter unit" style='width: 100%;'>
                  <tbody>
                    <tr>
                      <td>
                        <p class="list" style="margin:10px 0px 5px 0px;">
                        <a href="https://rosmintrud.ru/ministry/programms/anticorruption" style="cursor:pointer;" target="_blank"><b>Методические рекомендации, обзоры, разъяснения и иные документы, подготовленные Минтрудом России, размещенным на сайте Минтруда России</b></a></p>
                        <p class="list" style="margin:10px 0px 5px 0px;">
                        <a href="https://gossluzhba.gov.ru/anticorruption" style="cursor:pointer;" target="_blank"><b>Специализированный информационно-методический ресурс по вопросам противодействия коррупции на базе федеральной государственной информационной системы «Единая информационная система управления кадровым составом государственной гражданской службы Российской Федерации»</b></a></p>
                      </td>
                    </tr>
                  </tbody>
                </table>
              </span><br/>
            </fieldset>
            <xsl:if test="count(EditPasport/Anticorruption/InieMetodMaterialy/FileWithName/item)>0">
              <fieldset class='information'>
                <legend><h3>Иные методические материалы и обзоры по вопросам противодействия коррупции</h3></legend>
                <span itemprop=''>
                  <table cellspacing="1" class="tablesorter unit zagol-2" style='width: 100%;'>
                    <tbody>
                      <xsl:for-each select="EditPasport/Anticorruption/InieMetodMaterialy/FileWithName/item">
                        <xsl:variable name="link"><xsl:value-of select="LinkFile/Link"/></xsl:variable>
                        <xsl:if test="$link!=''">
                          <tr>
                            <td>
                              <p class="list"><span class="fileicon"><a href='{$link}' target='_blank'><xsl:value-of select="Name"/></a></span><span class="infofile">(<xsl:value-of select="LinkFile/TYPE"/>; <xsl:value-of disable-output-escaping="yes" select="LinkFile/SIZE"/>)</span></p>
                            </td>
                          </tr>
                        </xsl:if>
                      </xsl:for-each>
                      </tbody>
                    </table>
                  </span> 
              </fieldset><br/>
            </xsl:if>
        </div>
</xsl:template>
</xsl:stylesheet>