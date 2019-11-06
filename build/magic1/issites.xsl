<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">


<xsl:import href="structurahtml.xsl"/>
<xsl:import href="scriptsandcss.xsl"/>


<xsl:variable name="pagename" >Детские безопасные сайты</xsl:variable>

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
		  
          <xsl:if test="count(EditPasport/Infosec/Sites/LinksList/item) > 0">
            <fieldset class='information'>
			<legend><h3>Информация о детских безопасных сайтах</h3></legend>
                <table border="0" cellspacing="0" cellpadding="3" style='width: 100%;'>
                  <tbody>
                  <xsl:for-each select="EditPasport/Infosec/Sites">
				  <xsl:if test="Comment!=''">
                    <tr>
                      <td class="unit" style="border:1px solid #cccccc;"><xsl:value-of disable-output-escaping="yes" select="Comment"/></td>
                    </tr>
					</xsl:if>
                  </xsl:for-each>
                  </tbody>
                </table>
                <table cellspacing="1" class="tablesorter table-3" style='width: 100%;'>
                  <tbody>
                  <xsl:for-each select="EditPasport/Infosec/Sites/LinksList/item">
                  <xsl:variable name="link"><xsl:value-of select="URL"/></xsl:variable>
                    <tr>
                      <td >
                        <xsl:if test="$link!=''"><span><a href='{$link}' target='_new'><xsl:value-of select="Name"/></a></span></xsl:if><br/>
              
                      <xsl:if test="Info!=''"><span><b>Описание: </b><xsl:value-of disable-output-escaping="yes" select="Info"/></span> </xsl:if>
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