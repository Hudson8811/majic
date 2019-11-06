<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">


<xsl:include href="structurahtml.xsl"/>
<xsl:include href="scriptsandcss.xsl"/>


<xsl:variable name="pagename" >Локальные нормативные акты в сфере обеспечения информационной безопасности обучающихся</xsl:variable>

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
		  
<!--infosec-->

		      <xsl:if test="count(EditPasport/Infosec/LocalActs_DocumentsList/item) > 0">
            <fieldset class='information'>
              <legend><h3>Локальные нормативные акты в сфере обеспечения информационной безопасности обучающихся</h3></legend>
                <table border="0" cellspacing="0" cellpadding="3" style='width: 100%;'>
                  <tbody>
                  <xsl:for-each select="EditPasport">
                  <xsl:variable name="text"><xsl:value-of disable-output-escaping="yes" select="LocalActs_Text"/></xsl:variable>
                  <xsl:if test="$text!=''">
                    <tr>
                      <td class="unit" style="border:1px solid #cccccc;"><xsl:value-of select="LocalActs_Text"/></td>
                    </tr>
                  </xsl:if>
                  </xsl:for-each>
                  </tbody>
                </table>
                <table cellspacing="1" class="tablesorter table-3" style='width: 100%;'>
                  <tbody>
                  <xsl:for-each select="EditPasport/Infosec/LocalActs_DocumentsList/item">
                  <xsl:variable name="link"><xsl:value-of select="LinkFile/item/Link"/></xsl:variable>
                    <tr>
                      <td>
                      
                        <xsl:if test="$link!=''"><span class="fileicon"><a href='{$link}' target='_blank'><xsl:value-of select="DocumentName"/></a></span><span class="infofile">(<xsl:value-of select="LinkFile/item/TYPE"/>; <xsl:value-of disable-output-escaping="yes" select="LinkFile/item/SIZE"/>)</span></xsl:if><br/>
      
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