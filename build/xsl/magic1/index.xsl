<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:import href="scriptsandcss.xsl"/>
<xsl:import href="topline.xsl"/>
<xsl:import href="head.xsl"/>
<xsl:import href="leftmenu.xsl"/>

<xsl:template match="/">
<xsl:variable name="design">
      <xsl:value-of select="EditPasport/Eduinfo/Design"/>
      <!-- magic1 -->
</xsl:variable>
<xsl:variable name="AnonsCount"><xsl:value-of select="count(EditPasport/Eduinfo/Anons/item)"/></xsl:variable>
<!--xsl:variable name="AnonsWidth"><xsl:value-of select="((100 - (100 mod $AnonsCount) ) div $AnonsCount)-2"/></xsl:variable-->
<xsl:variable name="GolosCount"><xsl:value-of select="count(EditPasport/Eduinfo/Poll/item)"/></xsl:variable>

<html>
<head>

<META name='viewport' content='width=device-width, initial-scale=1.0'/>
<meta name='generator' content='Конструктор школьных сайтов - www.edusite.ru'/>
<meta http-equiv='Content-Type' content='text/html; charset=UTF-8'/>
<META Http-Equiv='Cache-Control' Content='no-cache'/>
<META Http-Equiv='Pragma' Content='no-cache'/>
<META Http-Equiv='Expires' Content='0'/>

<meta name='Keywords' content=''/><xml id='myxml' src='search.xml'></xml><TITLE>Главная</TITLE>
<xsl:call-template name="ScriptsAndCSS" />
<link rel='stylesheet' type='text/css' href='https://skin.edusite.ru/{$design}/scin/eduinfo.css' />

<script>
  $(document).ready(function() { 
    $('#navs a').each(function () { 
        var location = window.location.href; 
        var link = this.href;  
        if(location == link) { 
            $(this).addClass('left-current');
//			$('#navs .left-current').parents('li').removeClass('closed_l');
//			$('#navs .left-current').parents('li').addClass('open_l');
        }
    });
});

function CalcAnonsWidth(){
var content=document.getElementById('content').clientWidth;
var ContCalcWidth=content*0.95-40;
var myCount=<xsl:value-of select="$AnonsCount"/>;
var AnonsWidth= ContCalcWidth / myCount - 15;
blocksinline=myCount;
var MinWidth = 200;
if (MinWidth >= AnonsWidth){
  AnonsWidth = ContCalcWidth / 3 - 15;
blocksinline=3;
}
if(MinWidth >=AnonsWidth){
  AnonsWidth = ContCalcWidth / 2 - 15;
blocksinline=2;
}
if(3>= AnonsWidth){
  AnonsWidth = ContCalcWidth-15;
blocksinline=1;
}

$('.anons_li').css('width', AnonsWidth + 'px');
}

function CalcGolosWidth(){
var content=document.getElementById('content').clientWidth;
var ContCalcWidth=content*0.95-40;

var myCount=<xsl:value-of select="$GolosCount"/>;
var GolosWidth= ContCalcWidth / myCount - 15;
var MinWidth = 200;
if (MinWidth >= GolosWidth){
  GolosWidth = ContCalcWidth / 3 - 15;
}
if(MinWidth >=GolosWidth){
  GolosWidth = ContCalcWidth / 2 - 15;
}
if(3>= GolosWidth){
  GolosWidth = ContCalcWidth-15;
}
$('.golosfrm').css('width', GolosWidth + 'px');
}


</script>
</head>
<BODY>


<CENTER>
<TABLE id="main" class="main" style="WIDTH: 85%" cellSpacing="0" cellPadding="0" border="0">
  <TBODY>
    <TR>
      <TD height="100%" vAlign="top" width="100%">
        <DIV id="nonFooter" class="cleardiv">
          <DIV id="container" class="cleardiv">
            <DIV id="page" class="cleardiv">

<xsl:call-template name="TopLine" />

              <DIV class="cleardiv">
                <DIV class="head" style="">
                  <TABLE id="head" cellSpacing="0" cellPadding="0" width="100%" border="0">
                    <TBODY>
                      <TR>
                        <TD height="100px" vAlign="top"></TD>
                        <TD vAlign="top" width="100%">

<xsl:call-template name="Head" />

                        </TD>
                      </TR>
					  <TR>
					    <TD colspan="2" width="100%" valign="bottom" style="padding-right:20px;text-align:right;background-color: #80cab7;">
						<div id="pagename">
						  <H1 class="pagename_div" style="">Главная</H1>
						  </div>  
                      
						</TD>
					  </TR>
                    </TBODY>
                  </TABLE>
                </DIV>
              </DIV>
              <DIV id="menu_middle_color" class="cleardiv">
                <DIV id="menu_middle"></DIV>
              </DIV>
              <DIV id="content-bg" class="content" style="WIDTH: 100%; CLEAR: both;">
                <DIV id="content_stripe" class="cleardiv"></DIV>
                  <DIV class="cleardiv">
                    <TABLE cellSpacing="0" cellPadding="0" width="100%" border="0">
                      <TBODY>
                        <TR>
                          <TD id="cont-height" height="700px" vAlign="top"></TD>
                          <TD vAlign="top" width="100%">
                            <DIV id="pannel_1">
                              <DIV id="left">
                                <DIV id="menu_left">
                                  <xsl:call-template name="LeftMenu" />
                                </DIV>

                <script type='text/javascript'>
$(document).ready(function(){
$('.accordion h3:first').addClass('active');
$('.accordion p:not(:first)').hide();
$('.accordion h3').click(function(){
$(this).next('p').slideToggle('slow')
.siblings('p:visible').slideUp('slow');
$(this).toggleClass('active');
$(this).siblings('h3').removeClass('active');
});
});
</script>


            
							<xsl:if test="count(EditPasport/Eduinfo/NewsTheme/item)>0">
                <DIV id="rss_left" style="padding-top:20px;float:left;">
                <div id="rss" style="">
                      <h3>RSS новости</h3><br/>
                      <div style="overflow-y:scroll;" marginheight="0" marginwidth="0" width="246" height="500" frameborder="0">
                  
                      <!-- <iframe  marginheight="0" src='http://arina-ne-meshaet.edusite.ru/news_40.html'  marginwidth="0" width="246" height="500" frameborder="0"></iframe> -->
                      <xsl:for-each select="EditPasport/Eduinfo/NewsTheme/item">
                        <xsl:variable name="link"><xsl:value-of select="Photo/item/Link"/></xsl:variable>
                        <xsl:variable name="url"><xsl:value-of select="URL"/></xsl:variable>
                      <div class='accordion'>
                        <h3><span class='newsname'><xsl:value-of select="Name"/> </span><span class='data'><xsl:value-of select="NewsDate"/></span></h3>
                        <p><table border='0' width="98%" cellpadding="0" cellspacing="0"><tr valign='top'><td><xsl:if test="$link!=''"><img align="left" src='{$link}' style='margin: 5px;'/></xsl:if> <xsl:value-of select="ItemName"/><a class='link' href='{$url}'>  Подробнее &gt;&gt;&gt;</a></td></tr></table></p>
                        </div>
                      
                      </xsl:for-each>
                    </div>
                    </div>
                </DIV>
              </xsl:if>
                                <DIV id="anons_1">
								
                                  <DIV class="anons_text" height="100%">
                                    
                                  </DIV>
                                </DIV><!-- end #left -->
                              </DIV>
                            </DIV>
							<!--content-->
                            <DIV id="content" class="content" style="">
                              <DIV id="pastblock" style="WIDTH: 100%;" class="pastblock">
                              <TABLE  style="WIDTH: 100%" cellSpacing="0" cellPadding="0" border="0"  id="tablepast">
                                <TBODY>
                                  <TR>
                                    <td colspan="2" class="slider">
								   <ul style="margin:0;padding:0;width:100%;height:280px;">
                                    <li vAlign="top"  style="list-style:none;float:left;width:72%;" id="slider_li">
                                      <div id="slider" style="height:280px;overflow:hidden;width:100%;"> 
                                        <ul id="demo1" class="slides">
                                          <xsl:choose>
                                            <xsl:when test="not(EditPasport/Eduinfo/Slider)">
                                                <li>
                                                  <img src="https://skin.edusite.ru/{$design}/scin/slides/1.jpg"  id="s_img"/>
                                                </li>
                                                <li>
                                                  <img src="https://skin.edusite.ru/{$design}/scin/slides/2.jpg"  id="s_img"/>
                                                </li>
                                                <li>
                                                  <img src="https://skin.edusite.ru/{$design}/scin/slides/3.jpg"  id="s_img"/>
                                                </li>
                                            </xsl:when>
                                            <xsl:otherwise>
                                              <xsl:for-each select="EditPasport/Eduinfo/Slider/Slide/item">
                                                <xsl:variable name="link"><xsl:value-of select="LinkFile/Link"/></xsl:variable>
                                                <xsl:variable name="alt"><xsl:value-of select="Name"/></xsl:variable>
                                                <xsl:if test="$link!=''">
                                                  <li><img src='{$link}' alt="{$alt}" title="{$alt}" border="0" id="s_img"/></li>
                                                </xsl:if>
                                              </xsl:for-each>
                                            </xsl:otherwise>
                                          </xsl:choose>
                                        </ul>
                                      </div>
									</li>



<xsl:if test="EditPasport/Eduinfo/Appeal='1'">
									<li vAlign="top"  style="list-style:none;float:right;width:25%;" id="obr_li">
									<DIV id="obr" style="vertical-align:bottom;text-align:center;">
									  
									  <!--     ========== Прием обращений граждан форма ==========    -->
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
<ul class="">
<li >

<a href='/_address' target="_blank" id="appeallink" style="" class="znachok"><IMG border="0" alt="Отправить обращение в электронную приемную" src='https://js.edusite.ru/appeal2.png' id='appealimg' style='cursor: pointer;margin-right:10px;padding:5px;' /></a> 
<h4> Прием обращений граждан</h4>
                            <xsl:variable name="link"><xsl:value-of select="EditPasport/Eduinfo/Policy/item/LinkFile/Link"/></xsl:variable>
                            <xsl:variable name="alt"><xsl:value-of select="EditPasport/Eduinfo/Policy/item/Name"/></xsl:variable>
                           <xsl:if test="$link!=''">
                                      <p>Прежде, чем отправить обращение, ознакомьтесь с документом, пройдя по этой <a href='{$link}' target='_blank' title='{$alt}' alt='{$alt}'>ссылке</a></p>
                            </xsl:if>
</li>
</ul>
<!-- ========== Конец Прием обращений граждан форма ========== -->

									  </DIV>
                                    
							       </li>

</xsl:if>



							     </ul>
								</td>
							</TR>
									
								    <TR>
									  <TD vAlign="top" style="" class="infopast_l infopast_t" colspan="2">
									  
									  
										
									
										
										
										<DIV style="" class="string">
									<xsl:if test="count(EditPasport/Eduinfo/PersonnelHead/PersonnelLst/Person/item) > 0">
										
										<div class="fotodir block_50" style="float:left;margin-right:20px;margin-left: 12px;">
										<ul class="fotodir_ul">
										<li>
										<xsl:variable name="link"><xsl:value-of select="EditPasport/Eduinfo/PersonnelHead/PersonnelLst/Person/item/Photo/item/Link"/></xsl:variable>
                      <xsl:if test="$link!=''"><img src="{$link}" height="" width="" border="0"/></xsl:if>
										</li>
										<li>
										<DIV id="fiodir" style="">
									     <h5 style="margin-right:5px;"><div style="display:inline-block;width:auto;"><xsl:value-of select="EditPasport/Eduinfo/PersonnelHead/PersonnelLst/Person/item/Position"/>: </div><br/><div style="display:inline-block;width:auto;"><xsl:value-of select="EditPasport/Eduinfo/PersonnelHead/PersonnelLst/Person/item/Name"/></div></h5>
									  </DIV>
									  <DIV id="dircont" class="dircontacts">
										 <table cellpadding="0" cellspacing="0" border="0" width="200" class="dircont">
										 <tr class="">
										 <td valign="top">
										 <ul class="viz">
										 <xsl:if test="EditPasport/Eduinfo/PersonnelHead/PersonnelLst/Person/item/Tel!=''">
										 <li>
										 <span><b>телефон:</b></span>
										 </li>
										 </xsl:if>
										 <li>
										 <span style="white-space:nowrap;"><xsl:value-of select="EditPasport/Eduinfo/PersonnelHead/PersonnelLst/Person/item/Tel"/>;</span>
										 </li>
										 <xsl:if test="EditPasport/Eduinfo/PersonnelHead/PersonnelLst/Person/item/Email!=''">
										 <li>
										 
										 <span style="white-space:nowrap;"><b>e-mail:</b></span>
										 </li>
										 </xsl:if>
										 <li>
										 <span><xsl:value-of select="EditPasport/Eduinfo/PersonnelHead/PersonnelLst/Person/item/Email"/></span>
										 </li>
										 </ul>
										 </td>
										 </tr>
										 </table>
										 
										 </DIV>
										 </li>
										 </ul>
									  </div>
										</xsl:if>
									    <DIV id="slovo" align="" style="width:auto;" class="block_50">
<xsl:variable name="gtitle"><xsl:value-of select="EditPasport/Eduinfo/Greeting/Title"/></xsl:variable>
<xsl:variable name="gtxt"><xsl:value-of select="EditPasport/Eduinfo/Greeting/Text"/></xsl:variable>
  <xsl:choose>
     <xsl:when test="$gtitle = ''">
        <h3>Дорогие друзья!</h3><br/>
     </xsl:when>
     <xsl:otherwise>
        <h3><xsl:value-of select="$gtitle"/></h3><br/>
     </xsl:otherwise>
   </xsl:choose>
  <xsl:choose>
     <xsl:when test="$gtxt = ''">
        <p style="">Мы рады приветствовать вас на сайте нашей школы!</p>
     </xsl:when>
     <xsl:otherwise>
        <p style=""><xsl:value-of select="$gtxt"/></p>
     </xsl:otherwise>
   </xsl:choose>


										  
                                        </DIV>
										
										</DIV>
										</TD>
										</TR>
										<TR>
									  <TD vAlign="top" style="" class="infopast_l infopast_t" colspan="2">
                    <xsl:if test="count(EditPasport/Eduinfo/Anons/item) > 0">
										<div id="infotab" class="string">
    									<h4> Объявления</h4><br/>
    									<center>
									<ul style="width:100%;" align="center">
									





                          <xsl:for-each select="EditPasport/Eduinfo/Anons/item">
      									<!--размножать li-->
          									<li class="infotab anons_li" valign="top" style="">					
          									  <H1><xsl:value-of select="Name"/></H1><br/>
                              <p><xsl:value-of select="ItemName"/></p>
          									</li>
                          </xsl:for-each>
                        <!-- конец li-->
      									</ul>
									</center>
									  </div>
                    </xsl:if>
										</TD>
										</TR>
                    <xsl:if test="count(EditPasport/Eduinfo/Poll/item) > 0">
										<TR>
  										<td colspan="2" valign="top" class="infopast_l">
  							        <DIV id="golos" style="" align="center">
        									<h4> Голосование</h4><br/>
											<center>
                          <xsl:for-each select="EditPasport/Eduinfo/Poll/item">
                            <xsl:variable name="url" disable-output-escaping="yes"><xsl:value-of select="URL"/><![CDATA[&]]>skin=<xsl:value-of select="$design"/></xsl:variable>
                            <iframe marginheight="0" src="{$url}" marginwidth="0" scrolling="auto" height="200" frameborder="0" class="golosfrm"></iframe>
        										  <!--для просмотра раскомментировать-->
        										  <!--<iframe marginheight="0" src="golosovanie.html" marginwidth="0" scrolling="auto" width="470" height="200" frameborder="0"></iframe>
        										  <iframe marginheight="0" src="golosovanie.html" marginwidth="0" scrolling="auto" width="470" height="200" frameborder="0"></iframe>
        										  <iframe marginheight="0" src="golosovanie.html" marginwidth="0" scrolling="auto" width="470" height="200" frameborder="0"></iframe>-->
                          </xsl:for-each>
						  </center>
                        </DIV>
                      </td>
                    </TR>
                  </xsl:if>
<xsl:if test="EditPasport/Eduinfo/Comments='1'">
                    <tr>
                      <td class="infopast_l" valign="top" colspan="2">
  									   <DIV id="comment" style="" align="center">
                          <h4> Комментарии</h4>
                          <div id="pages"></div>
                          <br/>                         
                          <form method="POST" name="comment_form" id="comment_form">
                            <input type="hidden" name="pid" value="1" />
                            <input type="hidden" name="title" value="Главная" />
                            <input type="hidden" name="notify" value="yes" />
                            <div id="message"></div>
                            <div id="form-post"></div>
<div class="commfrm">
<div class="lirow"><br/>
                                <ul>
                                  <li class="liblock"><div class="block-content">Фамилия, имя, отчество<br/><input type="text" name="poster_name" style="width:100%" /></div></li>
                                  <li class="liblock"><div class="block-content">Ваш e-mail<br/><input type="text" name="poster_email" style="width:100%" /></div></li>
                                  <li class="liblock"><div class="block-content">Ваш статус<br />
                                    <select name="poster_status" style="width:100%">
                                        <option value="-1">Укажите</option>
                                        <option value="1">Педагог</option>
                                        <option value="2">Ученик</option>
                                        <option value="3">Родитель</option>
                                        <option value="4">Преподаватель ВУЗа</option>
                                        <option value="5">Администратор</option>
                                        <option value="6">Иное</option>
                                    </select>
                                  </div></li>
                                </ul>
</div>
<div class="lirow">
                                <ul>
                                  <li class="liblock"><div class="block-content">Ваш комментарий<br /><textarea name="comment" style="width:100%;height:70px;"></textarea></div></li>
                                </ul>
</div>
<div class="lirow">
                                <ul>
                                  <li class="liblock"><div class="block-content">
                                    Код: 
                                    <input type="text" maxlength="5" name="code" id="code" style="width: 60px; height: 20px;" /> 
                                    <img name="capcha" id="capcha" src="/_ext/picutf.php" style="width: 120px; height: 20px;" /> 
                                  </div></li>
                                  <li class="liblock" style="float:right;"><div class="block-content" >
                                    <input type="button" id="comment-button" name="send" value="Отправить" />
                                  </div></li>
                                </ul>
</div></div>
                          </form>
  												<iframe id="comm" onload="autoIframe('comm');" height="1" marginHeight="0" src="/_ext/comment.php?1" frameBorder="0" width="100%" name="comm" marginWidth="0"></iframe>
                          <script type="text/javascript" src="/_ext/comment.js"></script>
  												  <!--для просмотра раскомментировать-->
  												  <!--<iframe id="comm" onload="autoIframe('comm');" height="400" marginHeight="0" src="comments.html" frameBorder="0" width="100%" name="comm" marginWidth="0"></iframe>
                                                    <script type="text/javascript" src="/_ext/comment.js"></script>-->
                        </DIV>
  							      </td>
                    </tr>
</xsl:if>
								  <TR>
								    <TD colspan="2" width="100%" class="infopast_l" valign="top">
								      <DIV id="anons" style="display:none;">
									   </DIV>
								    </TD>
								  </TR>
                </TBODY>
              </TABLE>
           </DIV>
                              <!--<DIV id="pagename">
                                    <H1 class="pagename_div">Главная</H1>
                                  </DIV>-->
                              <DIV id="text">
                                <DIV id="text_div"></DIV>
                              </DIV>
                              <DIV style="WIDTH: 100%">
                                <UL id="anonses">
                                  <LI>
                                    <DIV id="wraper_1" class="cleardiv" style="DISPLAY: none"></DIV>
                                  </LI>
                                  <LI>
                                    <DIV id="wraper_2" class="cleardiv" style="DISPLAY: none"></DIV>
                                  </LI>
                                </UL>
                              </DIV>
                            </DIV>
                            <!-- end #content -->
                            <DIV id="pannel_2" style="HEIGHT: 100%; WIDTH: 0px">
                              <DIV id="right" class="content">
                                <DIV id="menu_right"></DIV>
                                  <DIV id="anons_2">
                                    <DIV class="anons_text" height="100%">
                                    </DIV>
                                  </DIV>
           <!-- end #right --></DIV>
                            </DIV>
                          </TD>
                        </TR>
                      
					  </TBODY>
                    </TABLE>
                  </DIV>
                  <DIV class="cleardiv">
                  </DIV>
                  <DIV class="cleardiv">
                    <DIV class="btm">
                      <DIV id="footer">
                        <DIV id="footer_text">
                        </DIV>
                      </DIV>
   <!-- end .btm --></DIV>
                  </DIV>
<!--content-bg--></DIV>
<!--end page--></DIV>
<!--end container--></DIV>
<!--end nonFooter--></DIV>
<DIV id="bottom" class="cleardiv">
<DIV id="our" class="btm">Дата последнего обновления страницы <xsl:value-of select="EditPasport/Eduinfo/Created"/><BR/>Сайт создан по технологии <A title="Cоздание сайта по технологии Конструктор сайтов e-Publish" href="//www.edusite.ru/" target="_blank" alt="Cоздание сайта по технологии Конструктор сайтов e-Publish">«<STRONG>Конструктор сайтов e-Publish</STRONG>»</A><!-- Yandex.Metrika counter -->
<SCRIPT type="text/javascript"> (function (d, w, c) { (w[c] = w[c] || []).push(function() { try { w.yaCounter24120022 = new Ya.Metrika({id:24120022, clickmap:true, trackLinks:true, accurateTrackBounce:true}); } catch(e) { } }); var n = d.getElementsByTagName('script')[0], s = d.createElement('script'), f = function () { n.parentNode.insertBefore(s, n); }; s.type = 'text/javascript'; s.async = true; s.src = (d.location.protocol == 'https:' ? 'https:' : 'http:') + '//mc.yandex.ru/metrika/watch.js'; if (w.opera == '[object Opera]') { d.addEventListener('DOMContentLoaded', f, false); } else { f(); } })(document, window, 'yandex_metrika_callbacks'); </SCRIPT>
 <NOSCRIPT></NOSCRIPT><!-- /Yandex.Metrika counter -->
<DIV class="cookies_message" style="DISPLAY: none">
<DIV class="inner"><SPAN class="cookies_text">Для того, чтобы мы могли качественно предоставить Вам услуги, мы используем cookies, которые сохраняются на Вашем компьютере. Нажимая <B>СОГЛАСЕН</B>, Вы подтверждаете то, что Вы проинформированы об использовании cookies на нашем сайте. Отключить cookies Вы можете в настройках своего браузера.</SPAN> <SPAN class="button"><A class="cookies_button" href="#">СОГЛАСЕН</A></SPAN> </DIV></DIV>
</DIV>
<!-- end bottom --></DIV>
</TD>
</TR>
</TBODY>
<!-- end .main --></TABLE>
</CENTER>

<script language='JavaScript' src="https://skin.edusite.ru/{$design}/scin/my.js"></script>
</BODY></html> <!-- 4.5.161 (27.06.2019, Windows 7 SP1 (v6.1.7601)), main -->
</xsl:template>

</xsl:stylesheet>