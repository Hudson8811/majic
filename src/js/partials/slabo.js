$(document).ready(function() {
    $(document).ready(function(){
        var selector='html';
        var selector2='*:not(input,select,button)';
        var selector3='*:not(.sv_settings, .sv_settings *)';
        var selector4='img:not(.chapcha-img img)';
        var selector5='.header.cover';

        $('.fs-outer button').click(function(){
            $(selector).css('font-size',$(this).css('font-size'));
            if ($(this).hasClass('fs-l')){
                $('body').addClass('font-size-big');
            } else {
                $('body').removeClass('font-size-big');
            }
            $.cookie('font-size',$(this).attr('id'));
            $('.fs-outer button').removeClass('active');
            $(this).addClass("active");
        });

        $('.ff-outer button').click(function(){
            $(selector3).css('font-family',$(this).css('font-family'));
            $.cookie('font-family',$(this).attr('id'));
            $('.ff-outer button').removeClass('active');
            $(this).addClass("active");
        });

        $('.ls-outer button').click(function(){
            $(selector3).css('letter-spacing',$(this).css('letter-spacing'));
            if ($(this).hasClass('ls-m')){
                $('body').removeClass('letter-spacing-big').addClass('letter-spacing-medium');
            } else if ($(this).hasClass('ls-b')){
                $('body').removeClass('letter-spacing-medium').addClass('letter-spacing-big');
            } else {
                $('body').removeClass('letter-spacing-medium').removeClass('letter-spacing-big');
            }
            $.cookie('letter-spacing',$(this).attr('id'));
            $('.ls-outer button').removeClass('active');
            $(this).addClass("active");
        });

        $('.lh-outer button').click(function(){
            $(selector3).css('line-height',$(this).css('line-height'));
            if ($(this).hasClass('lh-m')){
                $('body').removeClass('line-height-big').addClass('line-height-medium');
            } else if ($(this).hasClass('lh-b')){
                $('body').removeClass('line-height-medium').addClass('line-height-big');
            } else {
                $('body').removeClass('line-height-medium').removeClass('line-height-big');
            }
            $.cookie('line-height',$(this).attr('id'));
            $('.lh-outer button').removeClass('active');
            $(this).addClass("active");
        });

        $('.img-outer button').click(function(){
            $(selector4).css('filter',$(this).css('line-height'));
            if ($(this).hasClass('img-n')){
                $(selector4).each(function () {
                    var alt = $(this).attr('alt');
                    var thisWidth = $(this).width();
                    var thisHeight = $(this).height();
                    $(this).after('<span class="imgAlt" style="width: '+thisWidth+'px; height: '+thisHeight+'px; max-width: 100%; display: block;">'+alt+'</span>');
                    $(this).addClass('noImg');
                });
                $(selector2).addClass('noBg');
            } else  {
                $(selector4).each(function () {
                    $(this).removeClass('noImg');
                    $('.imgAlt').remove();
                });
                $(selector3).removeClass('noBg');
                if ($(this).hasClass('img-g')){
                    $(selector4).addClass('fitlerGray');
                } else {
                    $(selector4).removeClass('fitlerGray');
                }
            }
            $.cookie('imgFilter',$(this).attr('id'));
            $('.img-outer button').removeClass('active');
            $(this).addClass("active");
        });



        $('.cs-outer button').click(function(){
            $(selector2).css('color',$(this).css('color'));
            $(selector2).css('background-color',$(this).css('background-color'));
            $(selector5).css('background-image','');
            $.cookie('cs',$(this).attr('id'));
            $('.cs-outer button').removeClass('active');
            $(this).addClass("active");
        });


        if ($.cookie('sv_on')=='true'){
            $('#sv_on').addClass('active').html('Обычная версия');
            $('#wrapper').addClass('bad-see');
            $('#sv_settings').css('display','flex');
            if ($.cookie('font-size')!==null){
                $('#'+$.cookie('font-size')).click();
            }
            if ($.cookie('cs')!==null){
                $('#'+$.cookie('cs')).click();
            }
            if ($.cookie('font-family')!==null){
                $('#'+$.cookie('font-family')).click();
            }
            if ($.cookie('letter-spacing')!==null){
                $('#'+$.cookie('letter-spacing')).click();
            }
            if ($.cookie('line-height')!==null){
                $('#'+$.cookie('line-height')).click();
            }
            if ($.cookie('imgFilter')!==null){
                $('#'+$.cookie('imgFilter')).click();
            }


        }


        $('#sv_on').click(
            function(){
                event.preventDefault();
                if ($.cookie('sv_on')!='true'){
                    $.cookie('sv_on', 'true');
                    if ($.cookie('font-size')=="null"){
                        $('.fs-n').click();
                    }
                    if ($.cookie('cs')=="null"){
                        $('.cs-bw').click();
                    }
                    if ($.cookie('font-family')=="null"){
                        $('.ff-n').click();
                    }
                    if ($.cookie('letter-spacing')=="null"){
                        $('.ls-s').click();
                    }
                    if ($.cookie('line-height')=="null"){
                        $('.lh-s').click();
                    }
                    if ($.cookie('imgFilter')=="null"){
                        $('.img-c').click();
                    }

                }
                else
                {
                    $.cookie('sv_on', 'false');
                }
                location.reload();
            }
        );

    });
});



