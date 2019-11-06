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

    new SimpleBar($('.scroll-block')[0],{
        autoHide: false
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

    $('.mobile-menu-toggle').click(function () {
        event.preventDefault();
        $(this).toggleClass('active');
        $('.fixed-header .sidemenu').slideToggle();
        if ($('.mobile-icons .search-btn').hasClass('active')){
            $('.mobile-icons .search-btn').removeClass('active');
            $('.fixed-header .search-form').removeClass('active');
        }
    });

    $('.mobile-icons .search-btn').click(function () {
        event.preventDefault();
        $(this).toggleClass('active');
        $('.fixed-header .search-form').toggleClass('active');
        if ($('.mobile-menu-toggle').hasClass('active')){
            $('.mobile-menu-toggle').removeClass('active');
            $('.fixed-header .sidemenu').slideUp();
        }
    });

    $('.fixed-header .sidemenu .menu').append($('.sidebar .sidemenu .menu').html());
});