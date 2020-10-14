

  /*-------------------------------------------------------------------------------
    PRE LOADER
  -------------------------------------------------------------------------------*/

  $(window).load(function(){
    $('.preloader').fadeOut(1000); // set duration in brackets    
  });



  /* HTML document is loaded. DOM is ready. 
  -------------------------------------------*/

  $(document).ready(function() {


  /*-------------------------------------------------------------------------------
    Navigation - Hide mobile menu after clicking on a link
  -------------------------------------------------------------------------------*/

    $('.navbar-collapse a').click(function(){
        $(".navbar-collapse").collapse('hide');
    });


    $(window).scroll(function() {
    if ($(".navbar").offset().top > 50) {
        $(".navbar-fixed-top").addClass("top-nav-collapse");
    } else {
        $(".navbar-fixed-top").removeClass("top-nav-collapse");
    }
  });

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

  new WOW({ mobile: false }).init();

  });



  // text animations

  // Wrap every letter in a span
var textWrapper = document.querySelector('.ml3 .letters');
textWrapper.innerHTML = textWrapper.textContent.replace(/\S/g, "<span class='letter'>$&</span>");


anime.timeline({loop: false})
  .add({
    targets: '.ml3 .letter',
    opacity: [0,1],
    easing: "easeInOutQuad",
    duration: 550,
    delay: (el, i) => 40 * (i+1)
  });

$("#Form_Form").submit(function(e) {
    e.preventDefault();
});