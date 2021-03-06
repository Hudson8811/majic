<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">


<xsl:import href="structurahtml.xsl"/>
<xsl:import href="scriptsandcss.xsl"/>


<xsl:variable name="pagename" >Родителям</xsl:variable>

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
	
          <xsl:if test="(EditPasport/Infosec/Parents/Prilogenie1 ='1') or (EditPasport/Infosec/Parents/Text!='')" >
            <xsl:for-each select="EditPasport/Infosec/Parents">
            <xsl:if test="Prilogenie1='1'">
            <fieldset class='information podpis'>
                <legend><h3>Памятка для родителей об информационной безопасности детей</h3></legend>
                <table border="0" cellspacing="0" cellpadding="3" style='width: 100%;background-color:#fff;'>
                  <tbody>
                    <tr>
                      <td>  
                        <P>Определение термина "информационная безопасность детей" содержится в Федеральном законе N 436-ФЗ "О защите детей от информации, причиняющей вред их здоровью и развитию", регулирующим отношения, связанные с защитой детей от информации, причиняющей вред их здоровью и (или) развитию. Согласно данному закону "информационная безопасность детей" - это состояние защищенности, при котором отсутствует риск, связанный с причинением информацией вреда их здоровью и (или) физическому, психическому, духовному, нравственному развитию.</P>
                        <P>В силу Федерального закона N 436-ФЗ информацией, причиняющей вред здоровью и (или) развитию детей, является:</P>
                        <OL>
                          <LI>информация, запрещенная для распространения среди детей; </LI>
                          <LI>информация, распространение которой ограничено среди детей определенных возрастных категорий. </LI>
                          <LI>К информации, запрещенной для распространения среди детей, относится: </LI>
                          <LI>информация, побуждающая детей к совершению действий, представляющих угрозу их жизни и (или) здоровью, в т.ч. причинению вреда своему здоровью, самоубийству; </LI>
                          <LI>способность вызвать у детей желание употребить наркотические средства, психотропные и (или) одурманивающие вещества, табачные изделия, алкогольную и спиртосодержащую продукцию, пиво и напитки, изготавливаемые на его основе; принять участие в азартных играх, заниматься проституцией, бродяжничеством или попрошайничеством; </LI>
                          <LI>обосновывающая или оправдывающая допустимость насилия и (или) жестокости либо побуждающая осуществлять насильственные действия по отношению к людям и животным; </LI>
                          <LI>отрицающая семейные ценности и формирующая неуважение к родителям и (или) другим членам семьи; </LI>
                          <LI>оправдывающая противоправное поведение; </LI>
                          <LI>содержащая нецензурную брань; </LI>
                          <LI>содержащая информацию порнографического характера. </LI>
                        </OL>
                        <P> </P>
                        <P>К информации, распространение которой ограничено среди детей определенного возраста, относится:</P>
                        <OL>
                          <LI>информация, представляемая в виде изображения или описания жестокости, физического и (или) психического насилия, преступления или иного антиобщественного действия; </LI>
                          <LI>вызывающая у детей страх, ужас или панику, в т.ч. представляемая в виде изображения или описания в унижающей человеческое достоинство форме ненасильственной смерти, заболевания, самоубийства, несчастного случая, аварии или катастрофы и (или) их последствий; </LI>
                          <LI>представляемая в виде изображения или описания половых отношений между мужчиной и женщиной; </LI>
                          <LI> содержащая бранные слова и выражения, не относящиеся к нецензурной брани. </LI>
                        </OL>
                        <P>С учетом этого Вам предлагаются правила работы в сети Интернет для различных возрастных категорий, соблюдение которых позволит обеспечить информационную безопасность ваших детей.</P>
                        <H3>Общие правила для родителей</H3>
                        <OL>
                          <LI>Независимо от возраста ребенка используйте программное обеспечение, помогающее фильтровать и контролировать информацию, но не полагайтесь полностью на него. Ваше внимание к ребенку - главный метод защиты. </LI>
                          <LI>Если Ваш ребенок имеет аккаунт на одном из социальных сервисов (LiveJournal, blogs.mail.ru, vkontakte.ru и т.п.), внимательно изучите, какую информацию помещают его участники в своих профилях и блогах, включая фотографии и видео. </LI>
                          <LI>Проверьте, с какими другими сайтами связан социальный сервис Вашего ребенка. Странички Вашего ребенка могут быть безопасными, но могут и содержать ссылки на нежелательные и опасные сайты (например, порносайт, или сайт, на котором друг упоминает номер сотового телефона Вашего ребенка или Ваш домашний адрес) </LI>
                          <LI>Поощряйте Ваших детей сообщать обо всем странном или отталкивающем и не слишком остро реагируйте, когда они это делают (из-за опасения потерять доступ к Интернету дети не говорят родителям о проблемах, а также могут начать использовать Интернет вне дома и школы). </LI>
                          <LI>Будьте в курсе сетевой жизни Вашего ребенка. Интересуйтесь, кто их друзья в Интернет так же, как интересуетесь реальными друзьями. </LI>
                        </OL>
                        <H3>Возраст от 7 до 8 лет</H3>
                        <P>В Интернете ребенок старается посетить те или иные сайты, а возможно и чаты, разрешение на посещение которых он не получил бы от родителей. Поэтому родителям особенно полезны будут те отчеты, которые предоставляются программами по ограничению использования Интернета, т.е. Родительский контроль или то, что вы сможете увидеть во временных файлах. В результате, у ребенка не будет ощущения, что за ним ведется постоянный контроль, однако, родители будут по-прежнему знать, какие сайты посещает их ребенок. Дети в данном возрасте обладают сильным чувством семьи, они доверчивы и не сомневаются в авторитетах. Они любят играть в сетевые игры и путешествовать по Интернету, используя электронную почту, заходить на сайты и чаты, не рекомендованные родителями.</P>
                        <P>Советы по безопасности в сети Интернет для детей 7 - 8 лет</P>
                        <OL>
                          <LI>Создайте список домашних правил посещения Интернета при участии детей и требуйте его выполнения. </LI>
                          <LI>Требуйте от Вашего ребенка соблюдения временных норм нахождения за компьютером. Покажите ребенку, что Вы наблюдаете за ним не потому что Вам это хочется, а потому что Вы беспокоитесь о его безопасности и всегда готовы ему помочь. </LI>
                          <LI>Компьютер с подключением к Интернету должен находиться в общей комнате под присмотром родителей. </LI>
                          <LI>Используйте специальные детские поисковые машины. </LI>
                          <LI>Используйте средства блокирования нежелательного контента как дополнение к стандартному Родительскому контролю. </LI>
                          <LI>Создайте семейный электронный ящик, чтобы не позволить детям иметь собственные адреса. </LI>
                          <LI>Блокируйте доступ к сайтам с бесплатными почтовыми ящиками с помощью соответствующего программного обеспечения. </LI>
                          <LI>Приучите детей советоваться с Вами перед опубликованием какой-либо информации средствами электронной почты, чатов, регистрационных форм и профилей. </LI>
                          <LI>Научите детей не загружать файлы, программы или музыку без вашего согласия. </LI>
                          <LI> Не разрешайте детям использовать службы мгновенного обмена сообщениями. </LI>
                          <LI>В "белый" список сайтов, разрешенных для посещения, вносите только сайты с хорошей репутацией. </LI>
                          <LI>Не забывайте беседовать с детьми об их друзьях в Интернете, как если бы речь шла о друзьях в реальной жизни. </LI>
                          <LI>Не делайте "табу" из вопросов половой жизни, так как в Интернете дети могут легко наткнуться на порнографию или сайты "для взрослых". </LI>
                          <LI>Приучите Вашего ребенка сообщать вам о любых угрозах или тревогах, связанных с Интернетом. Оставайтесь спокойными и напомните детям, что они в безопасности, если сами рассказали вам о своих тревогах. Похвалите их и посоветуйте подойти еще раз в подобных случаях. </LI>
                        </OL>
                        <H3>Возраст детей от 9 до 12 лет</H3>
                        <P>В данном возрасте дети, как правило, уже наслышаны о том, какая информация существует в Интернете. Совершенно нормально, что они хотят это увидеть, прочесть, услышать. При этом нужно помнить, что доступ к нежелательным материалам можно легко заблокировать при помощи средств Родительского контроля.</P>
                        <P>Советы по безопасности для детей от 9 до 12 лет</P>
                        <OL>
                          <LI>Создайте список домашних правил посещения Интернет при участии детей и требуйте его выполнения. </LI>
                          <LI>Требуйте от Вашего ребенка соблюдения норм нахождения за компьютером. </LI>
                          <LI>Наблюдайте за ребенком при работе за компьютером, покажите ему, что Вы беспокоитесь о его безопасности и всегда готовы оказать ему помощь. </LI>
                          <LI>Компьютер с подключением в Интернет должен находиться в общей комнате под присмотром родителей. </LI>
                          <LI> Используйте средства блокирования нежелательного контента как дополнение к стандартному Родительскому контролю. </LI>
                          <LI>Не забывайте принимать непосредственное участие в жизни ребенка, беседовать с детьми об их друзьях в Интернете. </LI>
                          <LI> Настаивайте, чтобы дети никогда не соглашались на личные встречи с друзьями по Интернету. </LI>
                          <LI> Позволяйте детям заходить только на сайты из "белого" списка, который создайте вместе с ними. </LI>
                          <LI>Приучите детей никогда не выдавать личную информацию средствами электронной почты, чатов, систем мгновенного обмена сообщениями, регистрационных форм, личных профилей и при регистрации на конкурсы в Интернете. </LI>
                          <LI>Приучите детей не загружать программы без Вашего разрешения. Объясните им, что они могут случайно загрузить вирусы или другое нежелательное программное обеспечение. </LI>
                          <LI> Создайте Вашему ребенку ограниченную учетную запись для работы на компьютере. </LI>
                          <LI>Приучите Вашего ребенка сообщать вам о любых угрозах или тревогах, связанных с Интернетом. Напомните детям, что они в безопасности, если сами рассказали вам о своих тревогах и опасениях. </LI>
                          <LI>Расскажите детям о порнографии в Интернете. </LI>
                          <LI>Настаивайте на том, чтобы дети предоставляли вам доступ к своей электронной почте, чтобы вы убедились, что они не общаются с незнакомцами. </LI>
                          <LI>Объясните детям, что нельзя использовать сеть для хулиганства, распространения сплетен или угроз. </LI>
                        </OL>
                        <H3>Возраст детей от 13 до 17 лет</H3>
                        <P>В этом возрасте подростки активно используют поисковые машины, пользуются электронной почтой, службами мгновенного обмена сообщениями, скачивают музыку и фильмы. Мальчикам в этом возрасте больше по нраву сметать все ограничения, они жаждут грубого юмора, азартных игр, картинок "для взрослых". Девочки предпочитают общаться в чатах, при этом они гораздо более чувствительны к сексуальным домогательствам в Интернете.</P>
                        <P>Зачастую в данном возрасте родителям уже весьма сложно контролировать своих детей, так как об Интернете они уже знают значительно больше своих родителей. Тем не менее, не отпускайте детей в "свободное плавание" по Интернету. Старайтесь активно участвовать в общении ребенка в Интернете.</P>
                        <P>Важно по-прежнему строго соблюдать правила Интернет-безопасности - соглашение между родителями и детьми. Кроме того, необходимо как можно чаще просматривать отчеты о деятельности детей в Интернете. Следует обратить внимание на необходимость содержания родительских паролей (паролей администраторов) в строгом секрете и обратить внимание на строгость этих паролей.</P>
                        <P>Советы по безопасности в этом возрасте от 13 до 17 лет</P>
                        <OL>
                          <LI>Создайте список домашних правил посещения Интернета при участии подростков и требуйте безусловного его выполнения. Обговорите с ребенком список запрещенных сайтов ("черный список"), часы работы в Интернете, руководство по общению в Интернете (в том числе в чатах). </LI>
                          <LI>Компьютер с подключением к сети Интернет должен находиться в общей комнате. </LI>
                          <LI>Не забывайте беседовать с детьми об их друзьях в Интернете, о том, чем они заняты таким образом, будто речь идет о друзьях в реальной жизни. Спрашивайте о людях, с которыми дети общаются посредством служб мгновенного обмена сообщениями, чтобы убедиться, что эти люди им знакомы. </LI>
                          <LI>Используйте средства блокирования нежелательного контента как дополнение к стандартному Родительскому контролю. </LI>
                          <LI>Необходимо знать, какими чатами пользуются Ваши дети. Поощряйте использование модерируемых чатов и настаивайте, чтобы дети не общались в приватном режиме. </LI>
                          <LI>Настаивайте на том, чтобы дети никогда не встречались лично с друзьями из сети Интернет. </LI>
                          <LI>Приучите детей не выдавать свою личную информацию средствами электронной почты, чатов, систем мгновенного обмена сообщениями, регистрационных форм, личных профилей и при регистрации на конкурсы в Интернете. </LI>
                          <LI> Приучите детей не загружать программы без Вашего разрешения. Объясните им, что они могут случайно загрузить вирусы или другое нежелательное программное обеспечение. </LI>
                          <LI>Приучите Вашего ребенка сообщать вам о любых угрозах или тревогах, связанных с Интернетом. Напомните детям, что они в безопасности, если сами рассказали вам, о своих угрозах или тревогах. Похвалите их и посоветуйте подойти еще раз в подобных случаях. </LI>
                          <LI>Расскажите детям о порнографии в Интернете. Помогите им защититься от спама. Научите подростков не выдавать в Интернете своего реального электронного адреса, не отвечать на нежелательные письма и использовать специальные почтовые фильтры. </LI>
                          <LI>Приучите себя знакомиться с сайтами, которые посещают подростки. </LI>
                          <LI>Научите детей уважать других в интернете. Убедитесь, что они знают о том, что правила хорошего поведения действуют везде - даже в виртуальном мире. </LI>
                          <LI>Объясните детям, что ни в коем случае нельзя использовать Сеть для хулиганства, распространения сплетен или угроз другим людям. </LI>
                          <LI>Обсудите с подростками проблемы сетевых азартных игр и их возможный риск. Напомните, что дети не могут играть в эти игры согласно закону. </LI>
                        </OL>
                        <P>Постоянно контролируйте использование Интернета Вашим ребенком! Это не нарушение его личного пространства, а мера предосторожности и проявление Вашей родительской ответственности и заботы.</P><br/><br/>
                      </td>
                    </tr>
                  </tbody>
                </table>
            </fieldset><br/>
            </xsl:if>
            <xsl:if test="Text!=''">
            <fieldset class='information podpis'>
			       <legend><h3>Дополнительная информация</h3></legend>
                <table border="0" cellspacing="0" cellpadding="3" style='width: 100%;'>
                  <tbody>
                    <tr>
                      <td class="unit" style="border:1px solid #cccccc;">
                        <xsl:value-of disable-output-escaping="yes" select="Text"/>
                      </td>
                    </tr>
                  </tbody>
                </table>
            </fieldset><br/>
            </xsl:if>
            </xsl:for-each>
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