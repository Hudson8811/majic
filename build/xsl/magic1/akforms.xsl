<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">


<xsl:import href="structurahtml.xsl"/>
<xsl:import href="scriptsandcss.xsl"/>


<xsl:variable name="pagename" >Формы документов, связанных с противодействием коррупции, для заполнения</xsl:variable>

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


            <xsl:if test="EditPasport/Anticorruption/Forms !=''">
              <fieldset class='information'>
                <legend><h3>Формы документов, связанных с противодействием коррупции, для заполнения</h3></legend>
                <span itemprop=''>
                  <table cellspacing="1" class="tablesorter unit zagol-2 line-h14" style='width: 100%;'>
                    <tbody>
                    <xsl:for-each select="EditPasport/Anticorruption/Forms">
                      <xsl:variable name="link"><xsl:value-of select="FormaObrasheniyaPoFaktam/FileWithName/item/LinkFile/Link"/></xsl:variable>
            				  <xsl:variable name="link2"><xsl:value-of select="FormaObrasheniyaZameshavshego/FileWithName/item/LinkFile/Link"/></xsl:variable>
            				  <xsl:variable name="link3"><xsl:value-of select="FormaUvedomleniyaInayaRabota/FileWithName/item/LinkFile/Link"/></xsl:variable>
            				  <xsl:variable name="link4"><xsl:value-of select="FormaUvedomleniyaSkloninie/FileWithName/item/LinkFile/Link"/></xsl:variable>
            				  <xsl:variable name="link5"><xsl:value-of select="FormaUvedomleniyaKonfliktInteresov/FileWithName/item/LinkFile/Link"/></xsl:variable>
            				  <xsl:variable name="link6"><xsl:value-of select="FormaZayavleniyaONevozmognostiSvedeniyODoxodax/FileWithName/item/LinkFile/Link"/></xsl:variable>
            				  <xsl:variable name="link7"><xsl:value-of select="FormaSpravkaODoxodax/FileWithName/item/LinkFile/Link"/></xsl:variable>
            				  <xsl:variable name="link8"><xsl:value-of select="FormaUvedomleniyaOPodarkax/FileWithName/item/LinkFile/Link"/></xsl:variable>
            				  <xsl:variable name="link9"><xsl:value-of select="FormaSpravkaORasxodax/FileWithName/item/LinkFile/Link"/></xsl:variable>
            				  <xsl:variable name="link10"><xsl:value-of select="FormaZayavliniyaOVikupePodarka/FileWithName/item/LinkFile/Link"/></xsl:variable>
                      <xsl:if test="$link!=''">
                        <tr>
                          <td>
                            <span style="white-space:normal;"><span class="fileicon"><a href='{$link}' target='_blank'>Обращение гражданина, юридического лица по фактам коррупционных правонарушений</a></span><span class="infofile">(<xsl:value-of select="FormaObrasheniyaPoFaktam/FileWithName/item/LinkFile/TYPE"/>; <xsl:value-of disable-output-escaping="yes" select="FormaObrasheniyaPoFaktam/FileWithName/item/LinkFile/SIZE"/>)</span></span>
                          </td>
                        </tr>
                      </xsl:if>
  					          <xsl:if test="$link2!=''">
                        <tr>
                          <td class="line-h14s">
                            <span style="white-space:normal;"><span class="fileicon"><a href='{$link}' target='_blank'>Обращение гражданина, замещавшего в государственном органе должность государственной службы, включенную в перечень должностей</a></span><span class="infofile">(<xsl:value-of select="FormaObrasheniyaZameshavshego/FileWithName/item/LinkFile/TYPE"/>; <xsl:value-of disable-output-escaping="yes" select="FormaObrasheniyaZameshavshego/FileWithName/item/LinkFile/SIZE"/>)</span></span>
                          </td>
                        </tr>
                      </xsl:if>
  					          <xsl:if test="$link3!=''">
                        <tr>
                          <td class="line-h14s">
                            <span style="white-space:normal;"><span class="fileicon"><a href='{$link}' target='_blank'>Уведомление представителя нанимателя (работодателя) о намерении выполнять иную оплачиваемую работу</a></span><span class="infofile">(<xsl:value-of select="FormaUvedomleniyaInayaRabota/FileWithName/item/LinkFile/TYPE"/>; <xsl:value-of disable-output-escaping="yes"  select="FormaUvedomleniyaInayaRabota/FileWithName/item/LinkFile/SIZE"/>)</span></span>
                          </td>
                        </tr>
                      </xsl:if>
  					          <xsl:if test="$link4!=''">
                        <tr>
                          <td class="line-h14s">
                            <span style="white-space:normal;"><span class="fileicon"><a href='{$link}' target='_blank'>Уведомление представителя нанимателя (работодателя) о фактах обращения в целях склонения служащего (работника) к совершению коррупционных правонарушений</a></span><span class="infofile">(<xsl:value-of select="FormaUvedomleniyaSkloninie/FileWithName/item/LinkFile/TYPE"/>; <xsl:value-of disable-output-escaping="yes" select="FormaUvedomleniyaSkloninie/FileWithName/item/LinkFile/SIZE"/>)</span></span>
                          </td>
                        </tr>
                      </xsl:if>
  					          <xsl:if test="$link5!=''">
                        <tr>
                          <td class="line-h14s">
                            <span style="white-space:normal;"><span class="fileicon"><a href='{$link}' target='_blank'>Уведомление представителя нанимателя (работодателя) и своего непосредственного начальника о возникшем конфликте интересов или о возможности его возникновения</a></span><span class="infofile">(<xsl:value-of select="FormaUvedomleniyaKonfliktInteresov/FileWithName/item/LinkFile/TYPE"/>; <xsl:value-of disable-output-escaping="yes" select="FormaUvedomleniyaKonfliktInteresov/FileWithName/item/LinkFile/SIZE"/>)</span></span>
                          </td>
                        </tr>
                      </xsl:if>
  					          <xsl:if test="$link6!=''">
                        <tr>
                          <td class="line-h14s">
                            <span style="white-space:normal;"><span class="fileicon"><a href='{$link}' target='_blank'>Заявление служащего (работника) о невозможности по объективным причинам представить сведения о доходах, об имуществе и обязательствах имущественного характера своих супруги (супруга) и несовершеннолетних детей</a></span><span class="infofile">(<xsl:value-of select="FormaZayavleniyaONevozmognostiSvedeniyODoxodax/FileWithName/item/LinkFile/TYPE"/>; <xsl:value-of disable-output-escaping="yes" select="FormaZayavleniyaONevozmognostiSvedeniyODoxodax/FileWithName/item/LinkFile/SIZE"/>)</span></span>
                          </td>
                        </tr>
                      </xsl:if>
  					          <xsl:if test="$link7!=''">
                        <tr>
                          <td class="line-h14s">
                            <span style="white-space:normal;"><span class="fileicon"><a href='{$link}' target='_blank'>Справка о доходах, расходах, об имуществе и обязательствах имущественного характера</a></span><span class="infofile">(<xsl:value-of select="FormaSpravkaODoxodax/FileWithName/item/LinkFile/TYPE"/>; <xsl:value-of disable-output-escaping="yes" select="FormaSpravkaODoxodax/FileWithName/item/LinkFile/SIZE"/>)</span></span>
                          </td>
                        </tr>
                      </xsl:if>
  					          <xsl:if test="$link8!=''">
                        <tr>
                          <td class="line-h14s">
                            <span style="white-space:normal;"><span class="fileicon"><a href='{$link}' target='_blank'>Уведомление о получении подарка</a></span><span class="infofile">(<xsl:value-of select="FormaUvedomleniyaOPodarkax/FileWithName/item/LinkFile/TYPE"/>; <xsl:value-of disable-output-escaping="yes" select="FormaUvedomleniyaOPodarkax/FileWithName/item/LinkFile/SIZE"/>)</span></span>
                          </td>
                        </tr>
                      </xsl:if>
  					          <xsl:if test="$link9!=''">
                        <tr>
                          <td class="line-h14s">
                            <span style="white-space:normal;"><span class="fileicon"><a href='{$link}' target='_blank'>Заявление о выкупе подарка</a></span><span class="infofile">(<xsl:value-of select="FormaSpravkaORasxodax/FileWithName/item/LinkFile/TYPE"/>; <xsl:value-of disable-output-escaping="yes" select="FormaSpravkaORasxodax/FileWithName/item/LinkFile/SIZE"/>)</span></span>
                          </td>
                        </tr>
                      </xsl:if>
  					          <xsl:if test="$link10!=''">
                        <tr>
                          <td class="line-h14s">
                            <span style="white-space:normal;"><span class="fileicon"><a href='{$link}' target='_blank'>Cправка о расходах лица</a></span><span class="infofile">(<xsl:value-of select="FormaZayavliniyaOVikupePodarka/FileWithName/item/LinkFile/TYPE"/>; <xsl:value-of disable-output-escaping="yes" select="FormaZayavliniyaOVikupePodarka/FileWithName/item/LinkFile/SIZE"/>)</span></span>
                          </td>
                        </tr>
                      </xsl:if>
                    </xsl:for-each>
                    </tbody>
                  </table>
                </span>
              </fieldset><br/>
            </xsl:if>
            <fieldset class='information'>
              <xsl:if test="count(EditPasport/Anticorruption/Forms/LinkFile/FileWithName/item)>0">
                <legend><h3>Иные формы документов, связанные с противодействием коррупции, для заполнения, размещение которых будет признано целесообразным</h3></legend>
                <span itemprop=''>
                  <table cellspacing="1" class="tablesorter unit zagol-2" style='width: 100%;'>
                    <tbody>
                    <xsl:for-each select="EditPasport/Anticorruption/Forms/LinkFile/FileWithName/item">
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
              </xsl:if>
              <span itemprop=''>
                <table cellspacing="1" class="tablesorter unit" style='width: 100%;'>
                  <tbody>
                    <tr>
                      <td class="line-h14s">
                       <!--  <div style="margin:10px 0px 5px 0px;">:</div> -->
                        <a href="https://rosmintrud.ru/ministry/programms/anticorruption" style="cursor:pointer;" target="_blank">Специальное программное обеспечение «Справки БК»</a>
                      </td>
                    </tr>
                  </tbody>
                </table>
              </span><br/>
            </fieldset><br/>


        </div>
</xsl:template>
</xsl:stylesheet>