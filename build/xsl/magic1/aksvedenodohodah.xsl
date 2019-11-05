<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">


<xsl:import href="structurahtml.xsl"/>
<xsl:import href="scriptsandcss.xsl"/>


<xsl:variable name="pagename" >Сведения о доходах, расходах, об имуществе и обязательствах имущественного характера</xsl:variable>

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



            <xsl:if test="count(EditPasport/Anticorruption/SvedenODohodah/item)>0">
              <fieldset class='information'>
                <legend><h3>Сведения о доходах, расходах, об имуществе и обязательствах имущественного характера</h3></legend>
                  <span itemprop=''>
                    <table border="0" cellspacing="0" cellpadding="0" style='width: 100%;' class="unit zagol-2 t_open">
                      <tbody>
    				            <xsl:for-each select="EditPasport/Anticorruption/SvedenODohodah/item">
                          <tr>
                            <td style="padding:0;">
                              
                                <h4 class="tog2t" style="color:#555;font-size:10pt;padding-top:10px;padding-bottom:10px;"><span><xsl:if test="Person/Name!=''"><xsl:value-of select="Person/Name"/></xsl:if></span><span><xsl:if test="Person/Person/Position!=''"><xsl:value-of select="Person/Person/Position"/></xsl:if></span></h4>
                       
                                <div class="art2t" style="width:100%!important;padding:0;">
                                  <p class="lists">
                                    <div class="lnk" style="padding-left:5px;">Сведения о доходах, расходах, об имуществе должностного лица</div>
      							                  <div class="artt">
      								                  <!-- <xsl:for-each select="">-->
                                          <table cellspacing="1" class="tablesorter table-3 zagol-2" style='width: 100%;display:table;'>
                                        <!--<thead><tr><th width="auto">Объекты недвижимости, находящиеся в собственности</th><th width="auto">Объекты недвижимости, находящиеся в пользовании</th><th width="auto">Транспортные средства</th><th width="auto">Сведения об источниках получения средств, за счет которых совершена сделка</th></tr></thead>-->
                                            <tbody>
                                              <xsl:if test="TimeStart!=''">
                                                <tr >
                                                  <td width="90" style='width:90px'  class="thtd" colspan="2"><b style="margin-right:5px;">Год:</b><xsl:value-of select="TimeStart"/></td>
          										                  </tr>
                                              </xsl:if>
                                              <xsl:if test="count(Person/VidObject/item)>0">
        										                    <tr >
                              										<td width="50%">Объекты недвижимости, находящиеся в собственности:</td>
                                                    <td width="auto">
                                                  <xsl:for-each select="Person/VidObject/item">

                              					              <b style="margin-right:5px;">Вид объекта:</b><span><xsl:value-of select="VidObject"/></span><br/><b style="margin-right:5px;">Вид собственности:</b><span><xsl:value-of select="VidSobctv"/></span><br/><b style="margin-right:5px;">Площадь:</b><span><xsl:value-of select="Size"/></span><span>м<sup>2</sup></span><br/><b style="margin-right:5px;">Страна расположения:</b><span><xsl:value-of select="Country"/></span><br/><br/>
                                                  </xsl:for-each>
                                                    </td> 
                              									</tr>
                                              </xsl:if>
                                              <xsl:if test="count(Person/VidObjectUsed/item)>0">
                            										<tr >
                            										  <td width="50%">Объекты недвижимости, находящиеся в пользовании:</td>
                            										    <td width="auto">
                                                  <xsl:for-each select="Person/VidObjectUsed/item">
                            					                <b style="margin-right:5px;">Вид объекта:</b><span><xsl:value-of select="VidObject"/></span><br/><b style="margin-right:5px;">Площадь:</b><span><xsl:value-of select="Size"/></span><span>м<sup>2</sup></span><br/><b style="margin-right:5px;">Страна расположения:</b><span><xsl:value-of select="Country"/></span><br/><br/>
                                                  </xsl:for-each>
                                                    </td>
                            										</tr>
                                              </xsl:if>
                                              <xsl:if test="count(Person/Trans/item)>0">
                            										<tr >
                              										<td width="50%">Транспортные средства:</td>
                                										<td width="auto">
                                                  <xsl:for-each select="Person/Trans/item">
                                										  <b style="margin-right:5px;">Вид транспорта:</b><span><xsl:value-of select="VidTrans"/></span><br/><b style="margin-right:5px;">Марка:</b><span><xsl:value-of select="Marka"/></span><br/><br/>
                                                  </xsl:for-each>
                                                    </td>
                            										</tr>
                                              </xsl:if>
                                              <xsl:if test="count(Person/Istochnik/item)>0">
                            										<tr >
                            										  <td width="50%">Сведения об источниках получения средств, за счет которых совершена сделка:</td>
                            										    <td width="auto">
                                                  <xsl:for-each select="Person/Istochnik/item">
                            					                <b style="margin-right:5px;">Вид приобретенного имущества:</b><span><xsl:value-of select="VidImushestva"/></span><br/><b style="margin-right:5px;">Источник получения средств:</b><span><xsl:value-of select="VidIstochnika"/></span><br/><br/>
                                                  </xsl:for-each>
                                                    </td>
                                                </tr>
                                              </xsl:if>
                                              <xsl:if test="Person/GodovDohod!=''">
                            									  <tr>
                            										  <td width="50%">Декларированный годовой доход:</td>
                            										    <td width="auto">
                            					                <span><xsl:value-of select="Person/GodovDohod"/></span><span>рублей</span><br/>
                                                    </td>
                                                </tr>
                                              </xsl:if>
                                            </tbody>
                                          </table>
    								                   <!-- </xsl:for-each> -->
    							                    </div>
    							                    <b class="togt" style="cursor:pointer;padding-left:5px;">показать >></b>
                                  </p>
    							                <xsl:if test="Suprug/Suprug='1'">
      							                <p class="lists">
                                      <div class="lnk" style="padding-left:5px;">Сведения о доходах, расходах, об имуществе супруги (супруга) должностного лица</div>
      							                    <div class="artt">
      								                    <!--<xsl:for-each select="">--> 
                                            <table cellspacing="1" class="tablesorter table-3 zagol-2" style='width: 100%;display:table;'>
                                          <!--<thead><tr><th width="auto">Объекты недвижимости, находящиеся в собственности</th><th width="auto">Объекты недвижимости, находящиеся в пользовании</th><th width="auto">Транспортные средства</th><th width="auto">Сведения об источниках получения средств, за счет которых совершена сделка</th></tr></thead>-->
                                              <tbody>
                                                <xsl:if test="count(Suprug/VidObject/item)>0">
                                                  <tr >
                                                    <td width="50%">Объекты недвижимости, находящиеся в собственности:</td>
                                                      <td width="auto">
                                                    <xsl:for-each select="Suprug/VidObject/item">

                                                        <b style="margin-right:5px;">Вид объекта:</b><span><xsl:value-of select="VidObject"/></span><br/><b style="margin-right:5px;">Вид собственности:</b><span><xsl:value-of select="VidSobctv"/></span><br/><b style="margin-right:5px;">Площадь:</b><span><xsl:value-of select="Size"/></span><span>м<sup>2</sup></span><br/><b style="margin-right:5px;">Страна расположения:</b><span><xsl:value-of select="Country"/></span><br/><br/>
                                                    </xsl:for-each>
                                                      </td> 
                                                  </tr>
                                                </xsl:if>
                                                <xsl:if test="count(Suprug/VidObjectUsed/item)>0">
                                                  <tr >
                                                    <td width="50%">Объекты недвижимости, находящиеся в пользовании:</td>
                                                      <td width="auto">
                                                    <xsl:for-each select="Suprug/VidObjectUsed/item">
                                                        <b style="margin-right:5px;">Вид объекта:</b><span><xsl:value-of select="VidObject"/></span><br/><b style="margin-right:5px;">Площадь:</b><span><xsl:value-of select="Size"/></span><span>м<sup>2</sup></span><br/><b style="margin-right:5px;">Страна расположения:</b><span><xsl:value-of select="Country"/></span><br/><br/>
                                                    </xsl:for-each>
                                                      </td>
                                                  </tr>
                                                </xsl:if>
                                                <xsl:if test="count(Suprug/Trans/item)>0">
                                                  <tr >
                                                    <td width="50%">Транспортные средства:</td>
                                                      <td width="auto">
                                                    <xsl:for-each select="Suprug/Trans/item">
                                                        <b style="margin-right:5px;">Вид транспорта:</b><span><xsl:value-of select="VidTrans"/></span><br/><b style="margin-right:5px;">Марка:</b><span><xsl:value-of select="Marka"/></span><br/><br/>
                                                    </xsl:for-each>
                                                      </td>
                                                  </tr>
                                                </xsl:if>
                                                <xsl:if test="count(Suprug/Istochnik/item)>0">
                                                  <tr >
                                                    <td width="50%">Сведения об источниках получения средств, за счет которых совершена сделка:</td>
                                                      <td width="auto">
                                                    <xsl:for-each select="Suprug/Istochnik/item">
                                                        <b style="margin-right:5px;">Вид приобретенного имущества:</b><span><xsl:value-of select="VidImushestva"/></span><br/><b style="margin-right:5px;">Источник получения средств:</b><span><xsl:value-of select="VidIstochnika"/></span><br/><br/>
                                                    </xsl:for-each>
                                                      </td>
                                                  </tr>
                                                </xsl:if>
                                                <xsl:if test="Suprug/GodovDohod!=''">
                                                  <tr>
                                                    <td width="50%">Декларированный годовой доход:</td>
                                                      <td width="auto">
                                                        <span><xsl:value-of select="Suprug/GodovDohod"/></span><span>рублей</span><br/>
                                                      </td>
                                                  </tr>
                                                </xsl:if>
                                              </tbody>
                                            </table>
                                         <!-- </xsl:for-each> -->
      							                    </div>
      							                    <b class="togt" style="cursor:pointer;padding-left:5px;">показать >></b>
                                    </p>
                                  </xsl:if>
                                  <xsl:if test="(Children/Children='1') or (count(Children/item)>0)">
      							                <p class="lists">
                                      <div class="lnk" style="padding-left:5px;">Сведения о доходах, расходах, об имуществе несовершеннолетнего ребенка должностного лица</div>
      							                    <div class="artt">
      								                    <xsl:for-each select="Children/item">
                                            <table cellspacing="1" class="tablesorter table-3 zagol-2" style='width: 100%;display:table;'>
                                          <!--<thead><tr><th width="auto">Объекты недвижимости, находящиеся в собственности</th><th width="auto">Объекты недвижимости, находящиеся в пользовании</th><th width="auto">Транспортные средства</th><th width="auto">Сведения об источниках получения средств, за счет которых совершена сделка</th></tr></thead>-->
                                              <tbody>
                                                <xsl:if test="count(VidObject/item)>0">
                                                  <tr >
                                                    <td width="50%">Объекты недвижимости, находящиеся в собственности:</td>
                                                      <td width="auto">
                                                    <xsl:for-each select="VidObject/item">

                                                        <b style="margin-right:5px;">Вид объекта:</b><span><xsl:value-of select="VidObject"/></span><br/><b style="margin-right:5px;">Вид собственности:</b><span><xsl:value-of select="VidSobctv"/></span><br/><b style="margin-right:5px;">Площадь:</b><span><xsl:value-of select="Size"/></span><span>м<sup>2</sup></span><br/><b style="margin-right:5px;">Страна расположения:</b><span><xsl:value-of select="Country"/></span><br/><br/>
                                                    </xsl:for-each>
                                                      </td> 
                                                  </tr>
                                                </xsl:if>
                                                <xsl:if test="count(VidObjectUsed/item)>0">
                                                  <tr >
                                                    <td width="50%">Объекты недвижимости, находящиеся в пользовании:</td>
                                                      <td width="auto">
                                                    <xsl:for-each select="VidObjectUsed/item">
                                                        <b style="margin-right:5px;">Вид объекта:</b><span><xsl:value-of select="VidObject"/></span><br/><b style="margin-right:5px;">Площадь:</b><span><xsl:value-of select="Size"/></span><span>м<sup>2</sup></span><br/><b style="margin-right:5px;">Страна расположения:</b><span><xsl:value-of select="Country"/></span><br/><br/>
                                                    </xsl:for-each>
                                                      </td>
                                                  </tr>
                                                </xsl:if>
                                                <xsl:if test="count(Trans/item)>0">
                                                  <tr >
                                                    <td width="50%">Транспортные средства:</td>
                                                      <td width="auto">
                                                    <xsl:for-each select="Trans/item">
                                                        <b style="margin-right:5px;">Вид транспорта:</b><span><xsl:value-of select="VidTrans"/></span><br/><b style="margin-right:5px;">Марка:</b><span><xsl:value-of select="Marka"/></span><br/><br/>
                                                    </xsl:for-each>
                                                      </td>
                                                  </tr>
                                                </xsl:if>
                                                <xsl:if test="count(Istochnik/item)>0">
                                                  <tr >
                                                    <td width="50%">Сведения об источниках получения средств, за счет которых совершена сделка:</td>
                                                      <td width="auto">
                                                    <xsl:for-each select="Istochnik/item">
                                                        <b style="margin-right:5px;">Вид приобретенного имущества:</b><span><xsl:value-of select="VidImushestva"/></span><br/><b style="margin-right:5px;">Источник получения средств:</b><span><xsl:value-of select="VidIstochnika"/></span><br/><br/>
                                                    </xsl:for-each>
                                                      </td>
                                                  </tr>
                                                </xsl:if>
                                                <xsl:if test="GodovDohod!=''">
                                                  <tr>
                                                    <td width="50%">Декларированный годовой доход:</td>
                                                      <td width="auto">
                                                        <span><xsl:value-of select="GodovDohod"/></span><span>рублей</span><br/>
                                                      </td>
                                                  </tr>
                                                </xsl:if>
                                              </tbody>
                                            </table>
                                          </xsl:for-each>
      							                    </div>
      							                    <b class="togt" style="cursor:pointer;padding-left:5px;">показать >></b>
                                    </p>
                                  </xsl:if>
                                </div><br/>
                            </td>
                          </tr>
                        </xsl:for-each>
                      </tbody>
                    </table>
                  </span>
              </fieldset><br/>
            </xsl:if>


        </div>
</xsl:template>
</xsl:stylesheet>