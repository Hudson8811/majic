$(document).ready(function() {
    var homeSwiper = new Swiper ('.home-slider .swiper-container', {
        loop: true,
        autoHeight: true,

        pagination: {
            el: '.slider-pagination',
        },

        navigation: {
            nextEl: '.slider-button-next',
            prevEl: '.slider-button-prev',
        },
    });


    $('.sidemenu .menu .has-child > a').click(function () {
        event.preventDefault();
        $(this).parent().toggleClass('opened');
    });

    $('.sidebar .news').click(function () {
        if (!$(this).hasClass('full-news')){
            $(this).addClass('full-news').siblings().removeClass('full-news');
        }
    });
});



