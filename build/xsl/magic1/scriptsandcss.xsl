<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template name="ScriptsAndCSS">

    <xsl:variable name="design">
      <xsl:value-of select="EditPasport/Eduinfo/Design"/>
      <!-- magic1 -->
    </xsl:variable>

<meta http-equiv='Content-Type' content='text/html; charset=utf-8' />
<meta name='generator' content='Конструктор сведений об образовательной организации. E-Publish. www.edusite.ru. - www.edusite.ru' />
<META HTTP-EQUIV="CACHE-CONTROL" CONTENT="NO-CACHE" />
<META HTTP-EQUIV="PRAGMA" CONTENT="NO-CACHE" />

<meta name="viewport" content="width=device-width, initial-scale=1"/>


        <link rel='STYLESHEET' type='text/css' href='https://skin.edusite.ru/{$design}/scin/reset.css' />
        <link rel='STYLESHEET' type='text/css' href='https://skin.edusite.ru/{$design}/st.css' />
        <link rel='STYLESHEET' type='text/css' href='https://skin.edusite.ru/{$design}/scin/pages.css' />
        <link rel='STYLESHEET' type='text/css' href='https://skin.edusite.ru/{$design}/scin/teg.css' />
        <link rel='STYLESHEET' type='text/css' href='https://skin.edusite.ru/{$design}/scin/swap-menu-left.css' />
        <link rel='STYLESHEET' type='text/css' href='https://skin.edusite.ru/{$design}/scin/bottom-menu.css' />
        <link rel='stylesheet' type='text/css' href='https://skin.edusite.ru/{$design}/scin/src/skdslider.css' />
        <link rel='stylesheet' type='text/css' href='https://js.edusite.ru/usecookie.css' />
        <link rel='stylesheet' type='text/css' href='https://js.edusite.ru/highslide/highslide.css' />
        <link rel='stylesheet' type='text/css' href='https://js.edusite.ru/fancybox/jquery.fancybox.css'  />
        <script language='JavaScript' src='https://js.edusite.ru/jquery-latest.js'></script>
        <script language='JavaScript' src='https://js.edusite.ru/jquery/jquery.cookie.js'></script>
        <script language='JavaScript' src='https://js.edusite.ru/usecookie.js'></script>
        <script language='JavaScript' src='https://js.edusite.ru/highslide/highslide-full.js'></script>
        <script language='JavaScript' src='https://js.edusite.ru/fancybox/jquery.fancybox.js'></script>
        <script language='JavaScript' src='https://skin.edusite.ru/menus.js'></script>
        <script language='JavaScript' src='https://skin.edusite.ru/search.js'></script>
        <script language='JavaScript' src="https://skin.edusite.ru/{$design}/scin/src/skdslider.min.js"></script>
        <script language='JavaScript' src="https://skin.edusite.ru/eduinfo.js"></script> 
        <script>
$(document).ready(function() {
    $('#navs a').each(function() {
        var location = window.location.href;
        var link = this.href;
        if (location == link) {
            $(this).addClass('left-current');
            $('#navs .left-current').parents('ul').parents('li').removeClass('closed_l');
            $('#navs .left-current').parents('ul').parents('li').addClass('open_l');
            //$('#navs .left-current').parents('ul').parents('li .left_current').css('background-color', 'transparent');
            $('#navs .left-current').parents('ul').css('display', 'block');
        }
    });


    //функция на ссылки антикоррупции
    $(".art").hide();
    $(".tog").on("click", function(e) {

        var $this = $(this).prev('.art');
        var arts = $('.containersved span.art');
        var togs = $('.containersved b.tog');
        var $text = $(this);

        if ($this.is(':visible')) {

            arts.slideUp("slow");
            $text.text('читать &gt;&gt;');
            $this.slideUp("slow");

        } else {
            arts.slideUp("slow");
            togs.text('читать &gt;&gt;');
            $this.slideDown("slow");
            $text.text('&lt;&lt; скрыть');
            return false;

        }

    });
    $(".art2").hide();

    $(".tog2").on("click", function(e) {

        var $this = $(this).next('.art2');
        var arts2 = $('.containersved div.art2');
        var togs2 = $('.containersved h4.tog2');


        if ($(this).hasClass('opened')) {
            $(this).removeClass('opened');

            $(".art").slideUp("slow");
            $(".tog").text('читать &gt;&gt;');
            $this.slideUp("slow");

        } else {

            togs2.removeClass('opened');
            arts2.slideUp("slow");
            $(this).addClass('opened');
            $this.slideDown("slow");
            $(".art").slideUp("slow");
            $(".tog").text('читать &gt;&gt;');
            return false;

        }

    });

    //функция на таблицу сведений в антикоррупции

    $(".artt").hide();

    $(".togt").on("click", function(e) {

        var $this = $(this).prev('.artt');
        var arts = $('.containersved div.artt');
        var togs = $('.containersved b.togt');
        var $text = $(this);

        if ($this.is(':visible')) {

            arts.slideUp("slow");
            $text.text('показать &gt;&gt;');
            $this.slideUp("slow");

        } else {

            arts.slideUp("slow");
            togs.text('показать &gt;&gt;');
            $this.slideDown("slow");
            $text.text('&lt;&lt; скрыть');
            return false;

        }

    });


    $(".art2t").hide();

    $(".tog2t").on("click", function(e) {

        var $this = $(this).next('.art2t');
        var arts2 = $('.containersved div.art2t');
        var togs2 = $('.containersved h4.tog2t');

        if ($(this).hasClass('opened')) {
            $(this).removeClass('opened');

            $(".artt").slideUp("slow");
            $(".togt").text('показать &gt;&gt;');
            $this.slideUp("slow");

        } else {

            togs2.removeClass('opened');
            arts2.slideUp("slow");
            $(this).addClass('opened');
            $this.slideDown("slow");
            $(".artt").slideUp("slow");
            $(".togt").text('показать &gt;&gt;');
            return false;

        }

    });

});
		</script>

        <style>

        </style>



<!-- ============================================================================ -->



<!--
    <link href="https://skin.edusite.ru/skin/st.css" rel="STYLESHEET" type="text/css" />
<link href='https://skin.edusite.ru/style/style.css' rel='stylesheet' type='text/css' />
-->

<script src='https://js.edusite.ru/iframe-resizer/iframeResizer.contentWindow.min.js' type='text/javascript'></script>
<script src='https://js.edusite.ru/postmessage.js'  type='text/javascript'></script>
<script src='https://js.edusite.ru/frame.js'  type='text/javascript'></script>

<script type="text/JavaScript">
function testAffixLink(obj){
    if(obj.href.search("file://")>=0){
       obj.href="https://js.edusite.ru/noinet.html"
    }
}


  $(function(){

  $(".fancybox").fancybox({
    helpers : {
        title: {
            type: 'inside',
            position: 'top'        }
      }
    });


    var text = $('.textBorder strong').html();
    var textinner = '<span class="b1">'+text+'</span>'+'<span class="b2">'+text+'</span>'+'<span class="b3">'+text+'</span>'+'<span class="b4">'+text+'</span>'+'<span class="b5">'+text+'</span>'+'<span class="b6">'+text+'</span>'+'<span class="b7">'+text+'</span>'+'<span class="b8">'+text+'</span>';
    $('.textBorder').append(textinner);


});
$(function($){
if( $('#podpis table tbody').is(':empty')) {
          
      $('#podpis').hide();
  }
});

function photoclickmain(){
return hs.expand(this, {slideshowGroup: 0 })
};
function photoclick(thumbId, slideshowGroup=0){
return hs.expand(this, { thumbnailId: thumbId, slideshowGroup: slideshowGroup })
};
function photoclickmain1(){
return hs.expand(this, {slideshowGroup: 1 })
};
function photoclick1(thumbId, slideshowGroup=1){
return hs.expand(this, { thumbnailId: thumbId, slideshowGroup: slideshowGroup })
};
function photoclickmain2(){
return hs.expand(this, {slideshowGroup: 2 })
};
function photoclick2(thumbId, slideshowGroup=2){
return hs.expand(this, { thumbnailId: thumbId, slideshowGroup: slideshowGroup })
};
function photoclickmain3(){
return hs.expand(this, {slideshowGroup: 3 })
};
function photoclick3(thumbId, slideshowGroup=3){
return hs.expand(this, { thumbnailId: thumbId, slideshowGroup: slideshowGroup })
};
function photoclickmain4(){
return hs.expand(this, {slideshowGroup: 4 })
};
function photoclick4(thumbId, slideshowGroup=4){
return hs.expand(this, { thumbnailId: thumbId, slideshowGroup: slideshowGroup })
};

</script>



</xsl:template>



</xsl:stylesheet>

