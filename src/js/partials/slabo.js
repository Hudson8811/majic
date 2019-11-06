$(document).ready(function() {
    $(document).ready(function(){
        var selector='html';
        var selector2='*:not(input,select,button)';
        $('.fs-outer button').click(function(){
            $(selector).css('font-size',$(this).css('font-size'));
            $.cookie('font-size',$(this).attr('id'));
            $('.fs-outer button').removeClass('active');
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
                console.log($(this).css('background'));
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



