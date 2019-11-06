<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="structurahtml.xsl"/>
<xsl:import href="scriptsandcss.xsl"/>


<xsl:variable name="pagename" >Ссылки на сайты официальных организаций системы образования</xsl:variable>

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
  <fieldset class='information' style=" border: 0px!important;">
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

