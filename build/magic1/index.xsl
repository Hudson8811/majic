<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:import href="structurahtml.xsl"/>
    <xsl:import href="scriptsandcss.xsl"/>


    <xsl:variable name="pagename" >Главная страница</xsl:variable>

    <xsl:template match="/">

        <html>
            <head>
                <meta name='Keywords' content='Тестовая организация. И сайт её тестовый. Для тестов всяких нововведений., конструктор сайтов, создание сайтов, создание сайта, сайты детских садов, сайты школ, создание сайта школы, создание сайта детского сайта' />
                <meta name='geo.placename' content='Кривоколенный пер, д.4, ст.5, Москва г., Москва г., Российская Федерация101000, ' />
                <title>Тестовая организация. И сайт её тестовый. Для тестов всяких нововведений. - Основные сведения</title>


                <xsl:call-template name="ScriptsAndCSS" />

            </head>

            <body>

                <xsl:call-template name="StructuraHTML" />

            </body>
        </html>
    </xsl:template>

    <xsl:template name="Content">

        <xsl:choose>
            <xsl:when test="not(EditPasport/Eduinfo/Slider)">
            </xsl:when>
            <xsl:otherwise>

                <div class="home-slider">
                    <div class="swiper-container">
                        <div class="swiper-wrapper">
                            <xsl:for-each select="EditPasport/Eduinfo/Slider/Slide/item">
                                <xsl:variable name="link"><xsl:value-of select="LinkFile/Link"/></xsl:variable>
                                <xsl:variable name="alt"><xsl:value-of select="Name"/></xsl:variable>
                                <xsl:if test="$link!=''">
                                    <div class="swiper-slide"><img src="{$link}" alt="{$alt}" title="{$alt}" /></div>
                                </xsl:if>
                            </xsl:for-each>
                        </div>
                        <div class="slider-control">
                            <div class="slider-pagination"></div>
                            <div class="slider-btns">
                                <div class="slider-button-prev"></div>
                                <div class="slider-button-next"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </xsl:otherwise>
        </xsl:choose>

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

        <xsl:if test="count(EditPasport/Eduinfo/Anons/item) > 0">
            <div class="home-main-block alert-block">
                <div class="big-title-block">Объявления</div>
                <div class="flex-block">
                    <xsl:for-each select="EditPasport/Eduinfo/Anons/item">
                        <div class="item home-block">
                            <div class="title-block"><xsl:value-of select="Name"/></div>
                            <div class="text-style">
                                <p><xsl:value-of select="ItemName"/></p>
                            </div>
                        </div>
                    </xsl:for-each>
                </div>
            </div>
        </xsl:if>

        <xsl:if test="count(EditPasport/Eduinfo/Poll/item) > 0">
            <div class="home-main-block opros-block">
                <div class="big-title-block">Голосования</div>
                <div class="flex-block">
                    <xsl:for-each select="EditPasport/Eduinfo/Poll/item">
                        <xsl:variable name="url" disable-output-escaping="yes"><xsl:value-of select="URL"/><![CDATA[&]]>skin=<xsl:value-of select="$design"/></xsl:variable>
                        <iframe marginheight="0" src="{$url}" marginwidth="0" scrolling="auto" height="200" frameborder="0" class="golosfrm"></iframe>
                    </xsl:for-each>
                </div>
            </div>
        </xsl:if>

        <xsl:if test="EditPasport/Eduinfo/Comments='1'">
            <div class="home-main-block comments-block">
                <div class="big-title-block">Комментарии</div>
                <div class="comments-form">
                    <form action="/" method="POST" name="comment_form" id="comment_form" class="form-style">
                        <input type="hidden" name="pid" value="1" />
                        <input type="hidden" name="title" value="Главная" />
                        <input type="hidden" name="notify" value="yes" />
                        <div class="flex-block">
                            <label class="item input-block">Фамилия, имя, отчество
                                <input type="text" name="poster_name" placeholder="например, Иванов Андрей Сергеевич" />
                            </label>
                            <label class="item input-block">Ваш Email
                                <input type="text" name="poster_email" placeholder="email@mail.ru" />
                            </label>
                            <label class="item input-block">Ваш статус
                                <select name="poster_status">
                                    <option value="-1">Выберите</option>
                                    <option value="1">Педагог</option>
                                    <option value="2">Ученик</option>
                                    <option value="3">Родитель</option>
                                    <option value="4">Преподаватель ВУЗа</option>
                                    <option value="5">Администратор</option>
                                    <option value="6">Иное</option>
                                </select>
                            </label>
                        </div>
                        <label class="input-block">Ваш комментарий
                            <textarea name="comment"></textarea>
                        </label>
                        <div class="capcha-block">
                            <div class="capcha-title">Введите код с картинки</div>
                            <label class="input-block">
                                <input type="text" maxlength="5" name="code" id="code" />
                            </label>
                            <div class="chapcha-img"><img name="capcha" id="capcha" src="/_ext/picutf.php" alt="" /></div>
                            <div class="btn-row">
                                <button type="submit" id="comment-button" name="send" class="btn-blue">Отправить</button>
                            </div>
                        </div>
                    </form>
                </div>

                <div class="comments">
                    <iframe id="comm" onload="autoIframe('comm');" height="1" marginHeight="0" src="/_ext/comment.php?1" frameBorder="0" width="100%" name="comm" marginWidth="0"></iframe>
                </div>
                <script type="text/javascript" src="/_ext/comment.js"></script>
            </div>
        </xsl:if>

    </xsl:template>
</xsl:stylesheet>