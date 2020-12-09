$(window).load(function() {
    $('.preloader').fadeOut(1000); 
});

$(document).ready(function() {

    // accordian
    var acc = document.getElementsByClassName("accordion");
    var i;

    for (i = 0; i < acc.length; i++) {
      acc[i].addEventListener("click", function() {
        this.classList.toggle("active");
        var panel = this.nextElementSibling;
        panel.classList.toggle("open");
        if (panel.style.maxHeight) {
          panel.style.maxHeight = null;
        } else {
          panel.style.maxHeight = panel.scrollHeight + 10 + "px";
        }
      });
    }

    // swiper slider
    if($('.swiper-container .swiper-slide').length == 1 ) {
      $('.swiper-wrapper').addClass( "disabled" );
      $('.swiper-pagination').addClass( "disabled" );
      $('.swiper-button-next').addClass( "disabled" );
      $('.swiper-button-prev').addClass( "disabled" );
    }

    // hover over comedian name text to make image hover (comedian holder page)

    $('.image-hover-link').on('mouseenter', function() {
        $(this).find('img').toggleClass("hover-animation");
    });

    $('.image-hover-link').on('mouseleave', function() {
        $(this).find('img').toggleClass("hover-animation");
    });
    // 

    /*-------------------------------------------------------------------------------
      Navigation - Hide mobile menu after clicking on a link
    -------------------------------------------------------------------------------*/

    $('.navbar-collapse a').click(function() {
        $(".navbar-collapse").collapse('hide');
    });

    // animated hamburger nav menu

    $('#nav-hamburger').click(ClickedMenu);

    function ClickedMenu(){
        $('.animated-icon').toggleClass('open');
        $('.navbar-expand-lg').toggleClass('mobile-menu-open');
        // $('#mobile-wavy-menu').toggleClass('show');
        $('#nav-hamburger').toggleClass('ready-to-click');
        // setTimeout(function(){ 
        //   $('.link').toggleClass('show');
        // }, 250);
        // setTimeout(function(){ 
        //   $('#nav-hamburger').toggleClass('ready-to-click');
        // }, 550);
      }
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
