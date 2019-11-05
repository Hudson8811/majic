<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">


<xsl:import href="structurahtml.xsl"/>
<xsl:import href="scriptsandcss.xsl"/>


<xsl:variable name="pagename" >Антикоррупционная экспертиза</xsl:variable>

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

            <xsl:if test="count(EditPasport/Anticorruption/Expertise/PlanFile/FileWithName/item)>0">
              <fieldset class='information'>
                <legend><h3>План по противодействию коррупции</h3></legend>
                <span itemprop=''>
                  <table cellspacing="1" class="tablesorter unit zagol-2" style='width: 100%;'>
                    <tbody>
                    <xsl:for-each select="EditPasport/Anticorruption/Expertise/PlanFile/FileWithName/item">
                    <xsl:variable name="link"><xsl:value-of select="LinkFile/Link"/></xsl:variable>
                      <xsl:if test="$link!=''">
                      <tr>
                        <td class="line-h14s">
                          <span class="fileicon"><a href='{$link}' target='_blank'>План по противодействию коррупции</a></span><span class="infofile">(<xsl:value-of select="LinkFile/TYPE"/>; <xsl:value-of disable-output-escaping="yes" select="LinkFile/SIZE"/>)</span>
                        </td>
                      </tr>
                      </xsl:if>
                    </xsl:for-each>
                    </tbody>
                  </table>
                </span>
              </fieldset><br/>
            </xsl:if>
            <xsl:if test="count(EditPasport/Anticorruption/Expertise/PlanFile/DoljnostDopProf/item)>0">
              <fieldset class='information'>
                <legend><h3>Список должностей в организации, обязанные представлять сведения о своих доходах </h3></legend>
                <span itemprop=''>
                  <table cellspacing="1" class="tablesorter unit zagol-2" style='width: 100%;'>
                    <tbody>
                      <tr>
                        <td>
                          <xsl:for-each select="EditPasport/Anticorruption/Expertise/DoljnostDopProf/item">
                            <span><xsl:value-of select="EditPasport/Anticorruption/Expertise/DoljnostDopProf/item"/></span>
  						            </xsl:for-each>
                        </td>
                      </tr>
                    </tbody>
                  </table>
                </span>
              </fieldset><br/>
            </xsl:if>
            <xsl:if test="count(EditPasport/Anticorruption/Expertise/PoryadokPredostavleniyaSvedeniyFile/FileWithName/item)>0">
              <fieldset class='information'>
                <legend><h3>Порядок представления сведений о доходах, расходах, об имуществе и обязательствах имущественного характера</h3></legend>
                <span itemprop=''>
                  <table cellspacing="1" class="tablesorter unit zagol-2" style='width: 100%;'>
                    <tbody>
                    <xsl:for-each select="EditPasport/Anticorruption/Expertise/PoryadokPredostavleniyaSvedeniyFile/FileWithName/item">
                    <xsl:variable name="link"><xsl:value-of select="LinkFile/Link"/></xsl:variable>
                      <xsl:if test="$link!=''">
                      <tr>
                        <td class="line-h14s">
                          <span class="fileicon"><a href='{$link}' target='_blank'>Порядок представления сведений о доходах, расходах, об имуществе и обязательствах имущественного характера</a></span><span class="infofile">(<xsl:value-of select="LinkFile/TYPE"/>; <xsl:value-of disable-output-escaping="yes" select="LinkFile/SIZE"/>)</span>
                        </td>
                      </tr>
                      </xsl:if>
                    </xsl:for-each>
                    </tbody>
                  </table>
                </span>
              </fieldset><br/>
            </xsl:if>
            <xsl:if test="count(EditPasport/Anticorruption/Expertise/PoryadokUvedomleniyaOSkloneniiFile/FileWithName/item)>0">
              <fieldset class='information'>
                <legend><h3>Порядок уведомления представителя нанимателя (работодателя) о фактах обращения в целях склонения служащего (работника) к совершению коррупционных правонарушений</h3></legend>
                <span itemprop=''>
                  <table cellspacing="1" class="tablesorter unit zagol-2" style='width: 100%;'>
                    <tbody>
                    <xsl:for-each select="EditPasport/Anticorruption/Expertise/PoryadokUvedomleniyaOSkloneniiFile/FileWithName/item">
                    <xsl:variable name="link"><xsl:value-of select="LinkFile/Link"/></xsl:variable>
                      <xsl:if test="$link!=''">
                      <tr>
                        <td class="line-h14s">
                          <span class="fileicon"><a href='{$link}' target='_blank'>Порядок уведомления представителя нанимателя (работодателя) о фактах обращения в целях склонения служащего (работника) к совершению коррупционных правонарушений</a></span><span class="infofile">(<xsl:value-of select="LinkFile/TYPE"/>; <xsl:value-of disable-output-escaping="yes" select="LinkFile/SIZE"/>)</span>
                        </td>
                      </tr>
                      </xsl:if>
                    </xsl:for-each>
                    </tbody>
                  </table>
                </span>
              </fieldset><br/>
            </xsl:if>
            <xsl:if test="count(EditPasport/Anticorruption/Expertise/PodrazdeleniePoProfilaktikeFile/FileWithName/item)>0">
              <fieldset class='information'>
                <legend><h3>Положение о подразделении по профилактике коррупционных или иных правонарушений</h3></legend>
                <span itemprop=''>
                  <table cellspacing="1" class="tablesorter unit zagol-2" style='width: 100%;'>
                    <tbody>
                    <xsl:for-each select="EditPasport/Anticorruption/Expertise/PodrazdeleniePoProfilaktikeFile/FileWithName/item">
                    <xsl:variable name="link"><xsl:value-of select="LinkFile/Link"/></xsl:variable>
                      <xsl:if test="$link!=''">
                      <tr>
                        <td class="line-h14s">
                          <span class="fileicon"><a href='{$link}' target='_blank'>Положение о подразделении по профилактике коррупционных или иных правонарушений</a></span><span class="infofile">(<xsl:value-of select="LinkFile/TYPE"/>; <xsl:value-of disable-output-escaping="yes" select="LinkFile/SIZE"/>)</span>
                        </td>
                      </tr>
                      </xsl:if>
                    </xsl:for-each>
                    </tbody>
                  </table>
                </span>
              </fieldset><br/>
            </xsl:if>
            <xsl:if test="count(EditPasport/Anticorruption/Expertise/SoobshenieOPodarkeFile/FileWithName/item)>0">
              <fieldset class='information'>
                <legend><h3>Порядок сообщения о получении подарка в связи с протокольными мероприятиями</h3></legend>
                <span itemprop=''>
                  <table cellspacing="1" class="tablesorter unit zagol-2" style='width: 100%;'>
                    <tbody>
                    <xsl:for-each select="EditPasport/Anticorruption/Expertise/SoobshenieOPodarkeFile/FileWithName/item">
                    <xsl:variable name="link"><xsl:value-of select="LinkFile/Link"/></xsl:variable>
                      <xsl:if test="$link!=''">
                      <tr>
                        <td class="line-h14s">
                          <span class="fileicon"><a href='{$link}' target='_blank'>Порядок сообщения о получении подарка в связи с протокольными мероприятиями</a></span><span class="infofile">(<xsl:value-of select="LinkFile/TYPE"/>; <xsl:value-of disable-output-escaping="yes" select="LinkFile/SIZE"/>)</span>
                        </td>
                      </tr>
                      </xsl:if>
                    </xsl:for-each>
                    </tbody>
                  </table>
                </span>
              </fieldset><br/>
            </xsl:if>
            <xsl:if test="count(EditPasport/Anticorruption/Expertise/NeMogutImetZarubegniySchet/item)>0">
              <fieldset class='information'>
                <legend><h3>Перечень должностей, при замещении которых запрещается иметь счета в иностранных банках за пределами Российской Федерации</h3></legend>
                <span itemprop=''>
                  <table cellspacing="1" class="tablesorter unit zagol-2" style='width: 100%;'>
                    <tbody>
                      <tr>
                        <td>
                          <xsl:for-each select="EditPasport/Anticorruption/Expertise/NeMogutImetZarubegniySchet/item">
                            <span><xsl:value-of select="NeMogutImetZarubegniySchet"/></span>
                          </xsl:for-each>
                        </td>
                      </tr>
                    </tbody>
                  </table>
                </span>
              </fieldset><br/>
            </xsl:if>
            <xsl:if test="count(EditPasport/Anticorruption/Expertise/KodeksEtikiFile/FileWithName/item)>0">
              <fieldset class='information'>
                <legend><h3>Кодекс этики и служебного поведения</h3></legend>
                <span itemprop=''>
                  <table cellspacing="1" class="tablesorter unit zagol-2" style='width: 100%;'>
                    <tbody>
                    <xsl:for-each select="EditPasport/Anticorruption/Expertise/KodeksEtikiFile/FileWithName/item">
                    <xsl:variable name="link"><xsl:value-of select="LinkFile/Link"/></xsl:variable>
                      <xsl:if test="$link!=''">
                      <tr>
                        <td class="line-h14s">
                          <span class="fileicon"><a href='{$link}' target='_blank'>Кодекс этики и служебного поведения</a></span><span class="infofile">(<xsl:value-of select="LinkFile/TYPE"/>; <xsl:value-of disable-output-escaping="yes" select="LinkFile/SIZE"/>)</span>
                        </td>
                      </tr>
                      </xsl:if>
                    </xsl:for-each>
                    </tbody>
                  </table>
                </span>
              </fieldset><br/>
            </xsl:if>
            <xsl:if test="count(EditPasport/Anticorruption/Expertise/LinkFile/FileWithName/item)>0">
              <fieldset class='information'>
                <legend><h3>Иные локальные нормативные акты</h3></legend>
                <span itemprop=''>
                  <table cellspacing="1" class="tablesorter unit zagol-2" style='width: 100%;'>
                    <tbody>
                    <xsl:for-each select="EditPasport/Anticorruption/Expertise/LinkFile/FileWithName/item">
                    <xsl:variable name="link"><xsl:value-of select="LinkFile/Link"/></xsl:variable>
                      <xsl:if test="$link!=''">
                      <tr>
                        <td class="line-h14s">
                          <span style="white-space:normal;"><span class="fileicon"><a href='{$link}' target='_blank'><xsl:value-of select="Name"/></a></span><span class="infofile">(<xsl:value-of select="LinkFile/TYPE"/>; <xsl:value-of disable-output-escaping="yes" select="LinkFile/SIZE"/>)</span></span>
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