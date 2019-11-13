$(document).ready(function() {
    if ($('.home-slider .swiper-container').length){
        homeSwiper = new Swiper ('.home-slider .swiper-container', {
            loop: true,
            slidesPerView: 1,
            autoHeight: true,
            autoplay: true,
            pagination: {
                el: '.slider-pagination',
                clickable:true
            },

            navigation: {
                nextEl: '.slider-button-next',
                prevEl: '.slider-button-prev',
            },
        });
    }



    $('.mobile-menu-toggle').click(function () {
        event.preventDefault();
        $(this).toggleClass('active');
        $('.fixed-header .sidemenu').slideToggle();
    });


    $(".fixed-header .sidemenu").html('');
    $('.sidebar .sidemenu .menu').clone().appendTo(".fixed-header .sidemenu");



    $('.sidemenu .menu .has-child > a').click(function () {
        event.preventDefault();
        $(this).parent().toggleClass('opened');
    });




    $('.sidebar .news').click(function () {
        if (!$(this).hasClass('full-news')){
            $(this).addClass('full-news').siblings().removeClass('full-news');
        }
    });


    $('.has-child ul li a').each(function () {
        var location = window.location.href;
        var link = this.href;
        if(location == link) {
            $(this).parent('li').addClass('active');
            $(this).parents('.has-child').addClass('opened');
        }
    });
});

function autoIframe(frameId){
    if (window.parent && window.parent.autoIframe){
        try{
            frame = document.getElementById(frameId);
            innerDoc = (frame.contentDocument) ? frame.contentDocument : frame.contentWindow.document;
            objToResize = (frame.style) ? frame.style : frame;
            objToResize.height = innerDoc.body.scrollHeight;
        }
        catch(err){
            window.status = err.message;
        }
    }
}
