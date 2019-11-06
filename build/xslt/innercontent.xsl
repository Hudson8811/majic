<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template name="innercontent">
        <fieldset class="inner-page-block">
            <legend>Об образовательной организации</legend>
            <div class="table">
                <div class="tr">
                    <div class="td">Полное наименование организации:</div>
                    <div class="td">Государственное бюджетное профессиональное образовательное учреждение Тамбовской области «Тамбовский профессионально-педагогический колледж»</div>
                </div>
                <div class="tr">
                    <div class="td">Краткое наименование организации:</div>
                    <div class="td">ГБПОУ ТО «Тамбовский профессионально-педагогический колледж»</div>
                </div>
                <div class="tr">
                    <div class="td">Руководитель:</div>
                    <div class="td">Иванова Светлана Николаевна</div>
                </div>
                <div class="tr">
                    <div class="td">Тип образовательной организации:</div>
                    <div class="td">Дошкольного образвания</div>
                </div>
                <div class="tr">
                    <div class="td">Вид образовательной организации:</div>
                    <div class="td">Колледж</div>
                </div>
                <div class="tr">
                    <div class="td">Дата создания организации:</div>
                    <div class="td">11.08.2009</div>
                </div>
            </div>
        </fieldset>

        <fieldset class="inner-page-block">
            <legend>Учредители образовательной организации</legend>
            <div class="table-title">Министерство общего и профессионального образования Свердловской области</div>
            <div class="table">
                <div class="tr">
                    <div class="td">Руководитель:</div>
                    <div class="td">Биктуганов Юрий Иванович</div>
                </div>
                <div class="tr">
                    <div class="td">Адрес:</div>
                    <div class="td">620075, город Екатеринбург, ул. Малышева, д. 33</div>
                </div>
                <div class="tr">
                    <div class="td">Телефоны:</div>
                    <div class="td">8 (903) 005-00-01</div>
                </div>
                <div class="tr">
                    <div class="td">Сайт:</div>
                    <div class="td"><a href="http://minobraz.egov66.ru" target="_blank">http://minobraz.egov66.ru</a></div>
                </div>
                <div class="tr">
                    <div class="td">Email:</div>
                    <div class="td"><a href="mailto:info.minobraz@egov66.ru">info.minobraz@egov66.ru</a></div>
                </div>
                <div class="tr">
                    <div class="td"></div>
                    <div class="td"><a href=""  class="document"><span class="document-name">Положение</span> <span class="document-info">(PDF; 1.57 Мб)</span></a></div>
                </div>
            </div>
        </fieldset>

        <fieldset class="inner-page-block">
            <legend>Место нахождения образовательной организации</legend>
            <div class="table autoWidth">
                <div class="tr">
                    <div class="td">Адрес:</div>
                    <div class="td">393764, Российская Федерация , Центральный федеральный округ, Тамбовская обл., Мичуринский р-н, г. Мичуринск, Липецкое ш., д. 114а, кв. 24</div>
                </div>
                <div class="tr">
                    <div class="td">Карта:</div>
                    <div class="td" id="map"></div>
                </div>
            </div>
        </fieldset>

        <fieldset class="inner-page-block">
            <legend>Устав образовательной организации</legend>
            <ul>
                <li><a href=""  class="document"><span class="document-name">Устав 9.11.15</span> <span class="document-info">(PDF; 653.24 Кб)</span></a></li>
                <li><a href=""  class="document"><span class="document-name">Изменения в Устав колледжа</span> <span class="document-info">(PDF; 1.13 Мб)</span></a></li>
            </ul>
        </fieldset>

        <fieldset class="inner-page-block">
            <legend>Финансовый отчет</legend>
            <div class="group-block">
                <div class="group-title">Год: 2016</div>
                <ul>
                    <li><a href=""  class="document"><span class="document-name">Отчет о деятельности учреждения за 2016 год</span> <span class="document-info">(PDF; 351.84 Кб)</span></a></li>
                </ul>
            </div>
            <div class="group-block">
                <div class="group-title">Год: 2017</div>
                <ul>
                    <li><a href=""  class="document"><span class="document-name">Отчет о деятельности учреждения за 2017 год</span> <span class="document-info">(PDF; 531.75 Кб)</span></a></li>
                </ul>
            </div>
        </fieldset>


        <script src="https://api-maps.yandex.ru/2.1/?lang=ru_RU" type="text/javascript"></script>
        <script type="text/javascript">
            ymaps.ready(init);
            var myMap,
            myPlacemark;

            function init(){
            myMap = new ymaps.Map("map", {
            center: [52.891082, 40.458638],
            zoom: 17,
            controls: []
            });

            myPlacemark = new ymaps.Placemark([52.891082, 40.458638], {
            iconCaption : 'Липецкое шоссе, 114A',
            balloonContent: 'Липецкое шоссе, 114A',
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