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
});



