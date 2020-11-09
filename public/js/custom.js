/*-------------------------------------------------------------------------------
  PRE LOADER
-------------------------------------------------------------------------------*/
$(window).load(function() {
    $('.preloader').fadeOut(1000); // set duration in brackets    
});



/* HTML document is loaded. DOM is ready. 
-------------------------------------------*/

$(document).ready(function() {
    console.log($('.swiper-container .swiper-slide').length);

    if($('.swiper-container .swiper-slide').length <= 1) {
      $('.swiper-wrapper').addClass( "disabled" );
      $('.swiper-pagination').addClass( "disabled" );
      $('.swiper-button-next').addClass( "disabled" );
      $('.swiper-button-prev').addClass( "disabled" );
    }

    // console.log(($('.swiper-container .swiper-slide').length))


    /*-------------------------------------------------------------------------------
      Navigation - Hide mobile menu after clicking on a link
    -------------------------------------------------------------------------------*/

    $('.navbar-collapse a').click(function() {
        $(".navbar-collapse").collapse('hide');
    });


    // $(window).scroll(function() {
    //     if ($(".navbar").offset().top > 50) {
    //         $(".navbar-fixed-top").addClass("top-nav-collapse");
    //     } else {
    //         $(".navbar-fixed-top").removeClass("top-nav-collapse");
    //     }
    // });

    // animated hamburger nav menu

    $('#nav-hamburger').click(function() {
        console.log("clicked");
        $('.animated-icon').toggleClass('open');
        $('.navbar-expand-lg').toggleClass('mobile-menu-open');
    });


    /*-------------------------------------------------------------------------------
      smoothScroll js
    -------------------------------------------------------------------------------*/


    $("#cta-hero-home").click(function() {
        $([document.documentElement, document.body]).animate({
            scrollTop: $("#home-projects").offset().top - 100
        }, 800);
    });

    /*-------------------------------------------------------------------------------
      wow js - Animation js
    -------------------------------------------------------------------------------*/

     new WOW().init();

});

// prevent form from refreshing

// $("#Form_Form").submit(function(e) {
//     e.preventDefault();
// });

// swiper

var mySwiper = new Swiper('.swiper-container', {
    // Optional parameters
    direction: 'horizontal',
    loop: false,

    // If we need pagination
    pagination: {
        el: '.swiper-pagination',
    },

    // Navigation arrows
    navigation: {
        nextEl: '.swiper-button-next',
        prevEl: '.swiper-button-prev',
    }

})
