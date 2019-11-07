$(document).ready(function() {
    $(document).ready(function(){
        var selector='html';
        var selector2='*:not(input,select,button)';
        var selector3='*:not(.sv_settings, .sv_settings *)';
        var selector4='img:not(.chapcha-img img)';

        $('.fs-outer button').click(function(){
            $(selector).css('font-size',$(this).css('font-size'));
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
            $.cookie('letter-spacing',$(this).attr('id'));
            $('.ls-outer button').removeClass('active');
            $(this).addClass("active");
        });

        $('.lh-outer button').click(function(){
            $(selector3).css('line-height',$(this).css('line-height'));
            $.cookie('line-height',$(this).attr('id'));
            $('.lh-outer button').removeClass('active');
            $(this).addClass("active");
        });

        $('.img-outer button').click(function(){
            $(selector4).css('filter',$(this).css('line-height'));
            if ($(this).hasClass('img-n')){
                $(selector4).addClass('noImg');
                $(selector2).addClass('noBg');
            } else  {
                $(selector4).removeClass('noImg');
                $(selector3).removeClass('noBg');
                $(selector4).css('filter',$(this).css('filter'));
            }
            $.cookie('imgFilter',$(this).attr('id'));
            $('.img-outer button').removeClass('active');
            $(this).addClass("active");
        });



        $('.cs-outer button').click(function(){
            if ($(this).hasClass('cs-bw')){
                $(selector2).css('color','');
                $(selector2).css('background-color','');
                $.removeCookie('cs');
            } else {
                $(selector2).css('color',$(this).css('color'));
                $(selector2).css('background-color',$(this).css('background-color'));
                $.cookie('cs',$(this).attr('id'));
            }
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



