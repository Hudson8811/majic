<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template name="director">
        <div class="school-info-home-block home-main-block">
            <xsl:if test="count(EditPasport/Eduinfo/PersonnelHead/PersonnelLst/Person/item) > 0">
                <div class="director-info-block">
                    <xsl:variable name="link"><xsl:value-of select="EditPasport/Eduinfo/PersonnelHead/PersonnelLst/Person/item/Photo/item/Link"/></xsl:variable>
                    <xsl:if test="$link!=''">
                        <div class="director-photo">
                            <img src="{$link}" alt="" />
                        </div>
                    </xsl:if>

                    <div class="director-info">
                        <div class="info">
                            <div class="label"><xsl:value-of select="EditPasport/Eduinfo/PersonnelHead/PersonnelLst/Person/item/Position"/></div>
                            <div class="name"><xsl:value-of select="EditPasport/Eduinfo/PersonnelHead/PersonnelLst/Person/item/Name"/></div>
                        </div>
                        <div class="contacts">
                            <xsl:if test="EditPasport/Eduinfo/PersonnelHead/PersonnelLst/Person/item/Tel!=''">
                                <div class="phone">
                                    <div class="label">Телефон</div>
                                    <div class="text"><a href="tel:{EditPasport/Eduinfo/PersonnelHead/PersonnelLst/Person/item/Tel}"><xsl:value-of select="EditPasport/Eduinfo/PersonnelHead/PersonnelLst/Person/item/Tel"/></a></div>
                                </div>
                            </xsl:if>
                            <xsl:if test="EditPasport/Eduinfo/PersonnelHead/PersonnelLst/Person/item/Email!=''">
                                <div class="email">
                                    <div class="label">E-mail</div>
                                    <div class="text"><a href="mailto:{EditPasport/Eduinfo/PersonnelHead/PersonnelLst/Person/item/Email}"><xsl:value-of select="EditPasport/Eduinfo/PersonnelHead/PersonnelLst/Person/item/Email"/></a></div>
                                </div>
                            </xsl:if>
                        </div>
                    </div>
                </div>
            </xsl:if>

            <div class="school-hello-block">
                <div class="hello-block">
                    <xsl:variable name="gtitle"><xsl:value-of select="EditPasport/Eduinfo/Greeting/Title"/></xsl:variable>
                    <xsl:variable name="gtxt"><xsl:value-of select="EditPasport/Eduinfo/Greeting/Text"/></xsl:variable>
                    <xsl:choose>
                        <xsl:when test="$gtitle = ''">
                            <div class="big-title-block">Добро пожаловать!</div>
                        </xsl:when>
                        <xsl:otherwise>
                            <div class="big-title-block"><xsl:value-of select="$gtitle"/></div>
                        </xsl:otherwise>
                    </xsl:choose>
                    <xsl:choose>
                        <xsl:when test="$gtxt = ''">
                            <div class="text">
                                <p>Мы рады приветствовать вас на официальном сайте нашего учебного заведения. Сайт адресован всем, кому интересно знать, чем живет наш колледж. Он создается для Вас, уважаемые Родители, любимые Студенты и Преподаватели, а также просто Гости сайта.</p>
                            </div>
                        </xsl:when>
                        <xsl:otherwise>
                            <div class="text">
                                <p><xsl:value-of select="$gtxt"/></p>
                            </div>
                        </xsl:otherwise>
                    </xsl:choose>
                </div>

                <xsl:if test="EditPasport/Eduinfo/Appeal='1'">
                    <div class="priem-block">
                        <script type='text/JavaScript'>
                            function getInternetExplorerVersion() //функция определения ИЕ
                            {
                            var rv = -1;
                            if (navigator.appName == 'Microsoft Internet Explorer'){
                            var ua = navigator.userAgent;
                            var re  = new RegExp('MSIE ([0-9]{1,}[\.0-9]{0,})');
                            if (re.exec(ua) != null){rv = parseFloat( RegExp.$1 );};
                            }
                            else if (navigator.appName == 'Netscape'){
                            var ua = navigator.userAgent;
                            var re  = new RegExp('Trident/.*rv:([0-9]{1,}[\.0-9]{0,})');
                            if (re.exec(ua) != null){rv = parseFloat( RegExp.$1 );};
                            }
                            return rv;
                            }


                            $(function(){
                            $('a#appeallink').click(function(event) {
                            var url;
                            if(window.location.href.search('file://')>=0){
                            url='https://js.edusite.ru/appealnoinet.html';
                            }
                            else{
                            url='/_address';
                            };
                            if(getInternetExplorerVersion()==-1){

                            if (window.innerWidth>800){

                            event.preventDefault();
                            hs.htmlExpand(null, { src: url, objectType: 'iframe', outlineType: 'rounded-white', wrapperClassName: 'draggable-header', outlineWhileAnimating: true, preserveContent: false, width: 760, height: 600, headingText: 'Отправить обращение в электронную приемную'  } );
                            }
                            else{
                            window.open(url, '_blank');
                            }
                            }
                            else {
                            $('#appeallink').attr('href',url);
                            var link = $('#appeallink')[0];
                            var linkEvent = null;
                            if (document.createEvent) {
                            linkEvent = document.createEvent('MouseEvents');
                            linkEvent.initEvent('click', true, true);
                            link.dispatchEvent(linkEvent);
                            }
                            else if (document.createEventObject) {
                            linkEvent = document.createEventObject();
                            link.fireEvent('onclick', linkEvent);
                            }
                            }

                            });
                            });



                        </script>

                        <a href='/_address' target="_blank" id="appeallink" class="img"><img src="img/priem.png" alt="" /></a>
                        <div class="text-block">
                            <div class="label">Прием обращений граждан</div>
                            <xsl:variable name="link"><xsl:value-of select="EditPasport/Eduinfo/Policy/item/LinkFile/Link"/></xsl:variable>
                            <xsl:variable name="alt"><xsl:value-of select="EditPasport/Eduinfo/Policy/item/Name"/></xsl:variable>
                            <xsl:if test="$link!=''">
                                <div class="text">Прежде, чем отправить обращение, ознакомьтесь с документом, пройдя по этой <a href='{$link}' target='_blank' title='{$alt}' alt='{$alt}'>ссылке</a></div>
                            </xsl:if>
                        </div>
                    </div>
                </xsl:if>

            </div>
        </div>
    </xsl:template>

</xsl:stylesheet>