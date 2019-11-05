<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:import href="structurahtml.xsl"/>
<xsl:import href="scriptsandcss.xsl"/>


<xsl:variable name="pagename" >Стипендии и иные виды материальной поддержки</xsl:variable>

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

<!--page 08-->


          <xsl:if test="count(EditPasport/Eduinfo/Grands/Grand/item) > 0">
            <fieldset class='information'>
              <legend><h3>Сведения о наличии стипендии и иных мер материальной поддержки</h3></legend>
                <table cellspacing="1" class="tablesorter table-3" style='width: 100%;'>
                  <tbody>
                  <xsl:for-each select="EditPasport/Eduinfo/Grands/Grand/item">
                  <xsl:variable name="link"><xsl:value-of select="File1/item/Link"/></xsl:variable>
                  <xsl:variable name="link2"><xsl:value-of select="File2/item/Link"/></xsl:variable>
                  <xsl:variable name="timestart"><xsl:value-of select="TimeStart"/></xsl:variable>
                  <xsl:variable name="timeend" select="$timestart+1"></xsl:variable>
                  <xsl:variable name="hostel3"><xsl:value-of select="Hostel3"/></xsl:variable>
                  <xsl:variable name="hostel2"><xsl:value-of select="Hostel2"/></xsl:variable>
                  <xsl:variable name="hostel"><xsl:value-of select="Hostel"/></xsl:variable>
                  <xsl:variable name="about"><xsl:value-of select="About"/></xsl:variable>
                  <xsl:variable name="boarding"><xsl:value-of select="Boarding"/></xsl:variable>
                    <tr style="border-bottom:0!important;">
                      <td class="thtd line-h14s">
                        <span><b>Год: </b><xsl:value-of select="TimeStart"/>-<xsl:value-of select="$timeend"/></span>
                      </td>
                      
                    </tr>
                    <tr style="border-bottom:0!important;">
                      <td>

                          <xsl:if test="$about!=''">
                            <span><xsl:if test="$about!=''"><b style="margin-right:5px;">Наличие и условия предоставления обучающимся (восптанникам) стипендий:</b><span itemprop='Grant'><xsl:value-of select="About"/><br/></span></xsl:if></span>
                          </xsl:if>
                          <xsl:if test="$about=''"><span><span itemprop='Grant'>Стипендии и иные виды материальной поддержки не оказываются</span><br/></span></xsl:if>

                          <xsl:if test="$hostel!=''"><span><xsl:if test="$hostel!='0'"><b style="margin-right:5px;">Общежитие, количество жилых помещений:</b><span itemprop='HostelInfo'><span itemprop='HostelNum'><xsl:value-of select="Hostel"/></span></span><br/></xsl:if></span></xsl:if>

                          <xsl:if test="$hostel3!=''"><span><xsl:if test="$hostel3!='0'"><b style="margin-right:5px;">в том числе приспособленных для использования инвалидами и лицами с ОВЗ:</b><span itemprop='HostelInfo' ><xsl:value-of select="Hostel3"/></span><br/></xsl:if></span></xsl:if>

                          <xsl:if test="$hostel2!=''"><span><b style="margin-right:5px;">Общежитие, плата за проживание:</b><span itemprop='LocalActObSt' ><xsl:value-of select="Hostel2"/></span></span><br/></xsl:if>

                          <xsl:if test="$boarding='1'"><span><b style="margin-right:5px;">Интернат:</b><span itemprop='HostelInfo' >есть</span></span><br/></xsl:if>

                          <xsl:if test="$boarding=''"><span><b style="margin-right:5px;">Интернат:</b><span itemprop='HostelInfo' >нет</span></span><br/></xsl:if>

                          <xsl:if test="$link!=''"><span><span itemprop='GraduateJob' ><span class="fileicon"><a href='{$link}' target='_blank'>Информация о трудоустройстве выпускников</a></span><span class="infofile">(<xsl:value-of select="File1/item/TYPE"/>; <xsl:value-of disable-output-escaping="yes" select="File1/item/SIZE"/>)</span></span></span><br/></xsl:if>
                          <xsl:if test="$link2!=''"><span><span itemprop='Support' ><span class="fileicon"><a href='{$link2}' target='_blank'>Виды материальной поддержки обучающихся (воспитанников)</a></span><span class="infofile">(<xsl:value-of select="File2/item/TYPE"/>; <xsl:value-of disable-output-escaping="yes" select="File2/item/SIZE"/>)</span></span></span><br/></xsl:if>
                      </td>
                    </tr>
                  </xsl:for-each>
                  </tbody>
                </table>
              </fieldset><br/>
             
                <xsl:if test="count(EditPasport/Eduinfo/DocsGrands1/PeriodFile/item) > 0">
                  <fieldset class='information'>
                 <legend><h3>Дополнительные документы</h3></legend>
                <table cellspacing="1" class="tablesorter table-3" style='width: 100%;'>
                  <tbody>
                  <xsl:for-each select="EditPasport/Eduinfo/DocsGrands1/PeriodFile/item">
                  <xsl:variable name="link"><xsl:value-of select="LinkFile/item/Link"/></xsl:variable>
                  <xsl:variable name="periodtype"><xsl:value-of select="PeriodType"/></xsl:variable>
                  <xsl:variable name="timestart"><xsl:value-of select="TimeStart"/></xsl:variable>
                  <xsl:variable name="timeend" select="$timestart+1"></xsl:variable>
                    <tr style="border-bottom:0!important;">
                      <td class="thtd line-h14s">
                        <span><b>Год: </b><xsl:if test="PeriodType='2'"><xsl:value-of select="TimeStart"/>-<xsl:value-of select="$timeend"/></xsl:if>
                            <xsl:if test="PeriodType='1'"><xsl:value-of select="TimeStart"/></xsl:if></span>
                      </td>
                      
                    </tr>
                    <tr style="border-bottom:0!important;">

                      <td >
                        <xsl:if test="$link!=''">
                          <span class="fileicon"><a href='{$link}' target='_blank'><xsl:value-of select="Name"/></a></span><span class="infofile">(<xsl:value-of select="LinkFile/item/TYPE"/>; <xsl:value-of disable-output-escaping="yes" select="LinkFile/item/SIZE"/>)</span>
                        </xsl:if>
                      </td>
                    </tr>

                  
                  </xsl:for-each>
                  </tbody>
                </table>
                
                <table border="0" cellspacing="0" cellpadding="3" style='width: 100%;' class="unit">
                  <tbody>
                  <xsl:for-each select="EditPasport">
                  <xsl:variable name="textgrands1"><xsl:value-of select="TextGrands1"/></xsl:variable>
				          <xsl:if test="$textgrands1!=''">
                    <tr>
                      <td><xsl:value-of select="TextGrands1"/></td>
                    </tr>
                  </xsl:if>
                  </xsl:for-each>
                  </tbody>
                </table>
              </fieldset><br/>  
              </xsl:if>
            
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