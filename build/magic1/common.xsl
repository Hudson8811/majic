<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">


<xsl:import href="structurahtml.xsl"/>
<xsl:import href="scriptsandcss.xsl"/>


<xsl:variable name="pagename" >Основные сведения</xsl:variable>

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

  <xsl:if test="EditPasport/Eduinfo/FaceInformation/MainInformation !=''">
    <fieldset class='inner-page-block'>
      <legend>Об образовательной организации</legend>
      <div class="table">
        <xsl:if test="EditPasport/Eduinfo/FaceInformation/MainInformation/OrgName !=''">
          <div class="tr">
            <div class="td">Полное наименование организации:</div>
            <div class="td"> <xsl:value-of disable-output-escaping="yes" select="EditPasport/Eduinfo/FaceInformation/MainInformation/OrgName"/></div>
          </div>
        </xsl:if>
        <xsl:if test="EditPasport/Eduinfo/FaceInformation/MainInformation/SOrgName !=''">
          <div class="tr">
            <div class="td">Краткое наименование организации:</div>
            <div class="td"><xsl:value-of disable-output-escaping="yes" select="EditPasport/Eduinfo/FaceInformation/MainInformation/SOrgName"/></div>
          </div>
        </xsl:if>
        <xsl:if test="EditPasport/Eduinfo/FaceInformation/MainInformation/DirFIO !=''">
          <div class="tr">
            <div class="td">Руководитель:</div>
            <div class="td"><xsl:value-of select="EditPasport/Eduinfo/FaceInformation/MainInformation/DirFIO"/></div>
          </div>
        </xsl:if>
        <xsl:if test="EditPasport/Eduinfo/FaceInformation/MainInformation/TypeOO !=''">
          <div class="tr">
            <div class="td">Тип образовательной организации:</div>
            <div class="td"><xsl:value-of select="EditPasport/Eduinfo/FaceInformation/MainInformation/TypeOO"/></div>
          </div>
        </xsl:if>
        <xsl:if test="EditPasport/Eduinfo/FaceInformation/MainInformation/VidOO !=''">
          <div class="tr">
            <div class="td">Вид образовательной организации:</div>
            <div class="td"><xsl:value-of select="EditPasport/Eduinfo/FaceInformation/MainInformation/VidOO"/></div>
          </div>
        </xsl:if>
        <xsl:if test="EditPasport/Eduinfo/FaceInformation/MainInformation/CreateDate !=''">
          <div class="tr">
            <div class="td">Дата создания организации:</div>
            <div class="td"> <xsl:value-of select="EditPasport/Eduinfo/FaceInformation/MainInformation/CreateDate"/></div>
          </div>
        </xsl:if>
      </div>
    </fieldset>
  </xsl:if>

  <xsl:if test="count(EditPasport/Eduinfo/FaceInformation/MainInformation/UchDocs/item) > 0">
    <fieldset class="inner-page-block">
      <legend>Учредители образовательной организации</legend>

      <xsl:for-each select="EditPasport/Eduinfo/FaceInformation/MainInformation/UchDocs/item">
        <xsl:variable name="link"><xsl:value-of select="LinkFile/item/Link"/></xsl:variable>
        <xsl:variable name="site"><xsl:value-of select="Site"/></xsl:variable>
        <xsl:variable name="mail"><xsl:value-of select="Mail"/></xsl:variable>
        <xsl:if test="Name !=''">
          <div class="table-title"><xsl:value-of select="Name"/></div>
        </xsl:if>
        <div class="table">
          <xsl:if test="FioDir !=''">
            <div class="tr">
              <div class="td">Руководитель:</div>
              <div class="td"><xsl:value-of select="FioDir"/></div>
            </div>
          </xsl:if>
          <xsl:if test="Address !=''">
            <div class="tr">
              <div class="td">Адрес:</div>
              <div class="td"><xsl:value-of select="Address"/></div>
            </div>
          </xsl:if>
          <xsl:if test="count(Phone/item) > 0">
            <div class="tr">
              <div class="td">Телефоны:</div>
              <div class="td"><xsl:value-of select="Phone"/></div>
            </div>
          </xsl:if>
          <xsl:if test="$site!=''">
            <div class="tr">
              <div class="td">Сайт:</div>
              <div class="td"><a class="outer-link" href='{$site}' target='_blank'><xsl:value-of select="Site"/></a></div>
            </div>
          </xsl:if>
          <xsl:if test="$mail!=''">
            <div class="tr">
              <div class="td">Email:</div>
              <div class="td"><a class="email-link" href="{$mail}"><xsl:value-of select="Mail"/></a></div>
            </div>
          </xsl:if>
          <xsl:if test="$link!=''">
            <div class="tr">
              <div class="td"></div>
              <div class="td"><a href="{$link}"  class="document"  target='_blank'><span class="document-name">Положение</span> <span class="document-info">(<xsl:value-of select="LinkFile/item/TYPE"/>; <xsl:value-of disable-output-escaping="yes" select="LinkFile/item/SIZE"/>)</span></a></div>
            </div>
          </xsl:if>
        </div>
      </xsl:for-each>

    </fieldset>
  </xsl:if>

  <xsl:if test = "EditPasport/Eduinfo/FaceInformation/MainContacts/OrgAdrCollect/Adress !=''">
    <fieldset class="inner-page-block">
      <legend>Место нахождения образовательной организации</legend>

      <xsl:for-each select="EditPasport/Eduinfo/FaceInformation/MainContacts/OrgAdrCollect/Adress">
        <div class="table autoWidth">
          <div class="tr">
            <div class="td">Адрес:</div>
            <div class="td"><xsl:value-of select="Index"/>, <xsl:value-of select="Country_str"/>, <xsl:value-of select="FO_str"/> федеральный округ, <xsl:value-of select="Region_str"/>, <xsl:value-of select="Area_str"/>, <xsl:value-of select="Place_str"/>, <xsl:value-of select="Street_str"/>, д. <xsl:value-of select="HouseNom"/><xsl:if test="HouseIndex!=''">, корпус <xsl:value-of select="HouseIndex"/></xsl:if><xsl:if test="HouseStruct!=''">, ст. <xsl:value-of select="HouseStruct"/></xsl:if><xsl:if test="Room!=''">, кв. <xsl:value-of select="Room"/></xsl:if></div>
          </div>
          <div class="tr">
            <div class="td">Карта:</div>
            <div class="td" id="map"></div>
          </div>
        </div>
      </xsl:for-each>
    </fieldset>
  </xsl:if>


  <xsl:if test="EditPasport/Eduinfo/FaceInformation/MainContacts/Contacts !=''">
    <fieldset class='inner-page-block'>
      <legend>Контакты</legend>
      <div class="table">
        <xsl:if test="count(EditPasport/Eduinfo/FaceInformation/MainContacts/Contacts/Phone/item) > 0">
          <div class="tr">
            <div class="td">Телефон:</div>
            <div class="td">
              <xsl:for-each select="EditPasport/Eduinfo/FaceInformation/MainContacts/Contacts/Phone">
                <xsl:value-of select="item"/><br/>
              </xsl:for-each>
            </div>
          </div>
        </xsl:if>
        <xsl:if test="count(EditPasport/Eduinfo/FaceInformation/MainContacts/Contacts/Fax/item) > 0">
          <div class="tr">
            <div class="td">Факс:</div>
            <div class="td">
              <xsl:for-each select="EditPasport/Eduinfo/FaceInformation/MainContacts/Contacts/Fax">
                <xsl:value-of select="item"/><br/>
              </xsl:for-each>
            </div>
          </div>
        </xsl:if>
        <xsl:if test="count(EditPasport/Eduinfo/FaceInformation/MainContacts/Contacts/Mail/item) > 0">
          <div class="tr">
            <div class="td">E-Mail:</div>
            <div class="td">
              <xsl:for-each select="EditPasport/Eduinfo/FaceInformation/MainContacts/Contacts/Mail">
                <xsl:variable name="mail"><xsl:value-of select="item"/></xsl:variable>
                <xsl:if test="$mail!=''"><a class="email-link" href='mailto:{$mail}' target='_blank'><xsl:value-of select="item"/></a><br/></xsl:if>
              </xsl:for-each>
            </div>
          </div>
        </xsl:if>
        <xsl:if test="EditPasport/Eduinfo/FaceInformation/MainContacts/Site !=''">
          <div class="tr">
            <div class="td">Официальный сайт:</div>
            <div class="td">
              <xsl:for-each select="EditPasport/Eduinfo/FaceInformation/MainContacts">
                <xsl:variable name="site"><xsl:value-of select="Site"/></xsl:variable>
                <xsl:if test="$site!=''"><a href='mailto:{$site}' target='_blank'><xsl:value-of select="Site"/></a><br/></xsl:if>
              </xsl:for-each>
            </div>
          </div>
        </xsl:if>
      </div>
    </fieldset>
  </xsl:if>

  <xsl:if test="count(EditPasport/Eduinfo/FaceInformation/NormDocs/Ustav_Doc/FileWithName/item) > 0">
    <fieldset class="inner-page-block">
      <legend>Устав образовательной организации</legend>
      <ul>
        <xsl:for-each select="EditPasport/Eduinfo/FaceInformation/NormDocs/Ustav_Doc/FileWithName/item">
          <xsl:variable name="link"><xsl:value-of select="LinkFile/Link"/></xsl:variable>
          <li><a href="{$link}"  class="document"  target='_blank'><span class="document-name"><xsl:value-of select="Name"/></span> <span class="document-info">(<xsl:value-of select="LinkFile/TYPE"/>; <xsl:value-of disable-output-escaping="yes" select="LinkFile/SIZE"/>)</span></a></li>
        </xsl:for-each>
      </ul>
    </fieldset>
  </xsl:if>


  <xsl:if test="count(EditPasport/Eduinfo/FaceInformation/NormDocs/License_Doc/FileWithName/item) > 0">
    <fieldset class="inner-page-block">
      <legend>Лицензия образовательной организации</legend>
      <ul>
        <xsl:for-each select="EditPasport/Eduinfo/FaceInformation/NormDocs/License_Doc/FileWithName/item">
          <xsl:variable name="link"><xsl:value-of select="LinkFile/Link"/></xsl:variable>
          <li><a href="{$link}"  class="document"  target='_blank'><span class="document-name"><xsl:value-of select="Name"/></span> <span class="document-info">(<xsl:value-of select="LinkFile/TYPE"/>; <xsl:value-of disable-output-escaping="yes" select="LinkFile/SIZE"/>)</span></a></li>
        </xsl:for-each>
      </ul>
    </fieldset>
  </xsl:if>


  <xsl:if test="count(EditPasport/Eduinfo/FaceInformation/NormDocs/FinRec/YearFile/item) > 0">
    <fieldset class="inner-page-block">
      <legend>Финансовый отчет</legend>
      <xsl:for-each select="EditPasport/Eduinfo/FaceInformation/NormDocs/FinRec/YearFile/item">
        <xsl:variable name="name"><xsl:value-of select="Name"/></xsl:variable>
        <div class="group-block">
          <div class="group-title">Год: <xsl:value-of select="TimeStart"/></div>
          <ul>
            <xsl:if test="count(LinkFile/item) > 0">
              <xsl:for-each select="LinkFile/item">
                <xsl:variable name="link"><xsl:value-of select="Link"/></xsl:variable>
                <li><a href="{$link}" class="document"  target='_blank'><span class="document-name"><xsl:value-of select="$name"/></span> <span class="document-info">(<xsl:value-of select="TYPE"/>; <xsl:value-of disable-output-escaping="yes" select="SIZE"/>)</span></a></li>
              </xsl:for-each>
            </xsl:if>
          </ul>
        </div>
      </xsl:for-each>
    </fieldset>
  </xsl:if>




  <xsl:if test="count(EditPasport/Eduinfo/Reports/Munic/item) > 0">
    <fieldset class="inner-page-block">
      <legend>Муниципальное задание</legend>
      <ul>
        <xsl:for-each select="EditPasport/Eduinfo/Reports/Munic/item">
          <div class="group-block">
            <div class="group-title">Год: <xsl:value-of select="TimeStart"/></div>
            <ul>
              <xsl:if test="count(LinkFile/item) > 0">
                <xsl:for-each select="LinkFile/item">
                  <xsl:variable name="link"><xsl:value-of select="LinkFile/Link"/></xsl:variable>
                  <li><a href="{$link}"  class="document"  target='_blank'><span class="document-name"><xsl:value-of select="Name"/></span> <span class="document-info">(<xsl:value-of select="LinkFile/TYPE"/>; <xsl:value-of disable-output-escaping="yes" select="LinkFile/SIZE"/>)</span></a></li>
                </xsl:for-each>
              </xsl:if>
              <xsl:if test="count(LinkFile2/item) > 0">
                <xsl:for-each select="LinkFile2/item">
                  <xsl:variable name="link"><xsl:value-of select="LinkFile/Link"/></xsl:variable>
                  <li><a href="{$link}"  class="document"  target='_blank'><span class="document-name"><xsl:value-of select="Name"/></span> <span class="document-info">(<xsl:value-of select="LinkFile/TYPE"/>; <xsl:value-of disable-output-escaping="yes" select="LinkFile/SIZE"/>)</span></a></li>
                </xsl:for-each>
              </xsl:if>
            </ul>
          </div>

        </xsl:for-each>
      </ul>
    </fieldset>
  </xsl:if>




  <script src="https://api-maps.yandex.ru/2.1/?lang=ru_RU" type="text/javascript"></script>



  <script type="text/javascript">
    ymaps.ready(init);
    var myMap,
    myPlacemark;

    function init(){
    myMap = new ymaps.Map("map", {
    center: [<xsl:value-of select="EditPasport/Eduinfo/FaceInformation/MainContacts/MyMap/lat"/>,<xsl:value-of select="EditPasport/Eduinfo/FaceInformation/MainContacts/MyMap/lon"/>],
    zoom: 17,
    controls: []
    });

    myPlacemark = new ymaps.Placemark([<xsl:value-of select="EditPasport/Eduinfo/FaceInformation/MainContacts/MyMap/lat"/>,<xsl:value-of select="EditPasport/Eduinfo/FaceInformation/MainContacts/MyMap/lon"/>], {
    iconCaption : '<xsl:value-of select="EditPasport/Eduinfo/FaceInformation/MainContacts/OrgAdrCollect/Adress/Street_str"/>, д. <xsl:value-of select="EditPasport/Eduinfo/FaceInformation/MainContacts/OrgAdrCollect/Adress/HouseNom"/>',
    balloonContent: '<xsl:value-of select="EditPasport/Eduinfo/FaceInformation/MainContacts/OrgAdrCollect/Adress/Street_str"/>, д. <xsl:value-of select="EditPasport/Eduinfo/FaceInformation/MainContacts/OrgAdrCollect/Adress/HouseNom"/>',
    });

    myMap.geoObjects.add(myPlacemark);
    }

    $(window).resize(function () {
    if ($(window).width() &lt; 1500) {
    $('#map &gt; ymaps').css('width','0');
    myMap.container.fitToViewport();
    }
    });
  </script>

</xsl:template>
</xsl:stylesheet>
<!--

<xsl:for-each select=""></xsl:for-each>
<xsl:value-of select=""/> 
<xsl:variable name="[имя переменной]"><xsl:value-of select=""/></xsl:variable>
{$[имя переменной]}
<xsl:if test="$link!=''"></xsl:if>
-->