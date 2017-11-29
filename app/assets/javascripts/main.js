jQuery( document ).ready(function( $ ) {
"use strict";
/*-----------------------------------------------------------------------------------*/
/* 	LOADER
/*-----------------------------------------------------------------------------------*/
// $("#loader").delay(500).fadeOut("slow");
/*-----------------------------------------------------------------------------------*/
/*		STICKY NAVIGATION
/*-----------------------------------------------------------------------------------*/
$(".sticky").sticky({topSpacing:0});
/*-----------------------------------------------------------------------------------*/
/* 	SINGLE SLIDE
/*-----------------------------------------------------------------------------------*/
$('.owl-carousel').owlCarousel({
	items : 1,
  loop : true,
  autoPlay: true,
	// singleItem	: true,
	navText : ["<i class='fa fa-angle-left'></i>","<i class='fa fa-angle-right'></i>"],
	lazyLoad:true,
	nav: true,
  slideSpeed : 2000,
  autoplayTimeout:1000,
  animateOut: 'fadeOut',
  responsive:{
    0:{
      items:1,
      nav:true
    },
    600:{
      items:3,
      nav:false
    },
    1000:{
      items:5,
      nav:true,
      loop:false
    }
  }
});

$('.slider').slider({
  height: "600"
});

/*-----------------------------------------------------------------------------------*/
/* Pretty Photo
/*-----------------------------------------------------------------------------------*/
jQuery("a[data-rel^='prettyPhoto']").prettyPhoto({
    theme: "light_square"
});
/*-----------------------------------------------------------------------------------*/
/* 	SLIDER REVOLUTION
/*-----------------------------------------------------------------------------------*/
jQuery('.tp-banner-fix').show().revolution({
	dottedOverlay:"none",
	delay:10000,
	startwidth:1170,
	startheight:700,
	navigationType:"bullet",
	navigationArrows:"solo",
	navigationStyle:"preview4",
	parallax:"mouse",
	parallaxBgFreeze:"on",
	parallaxLevels:[7,4,3,2,5,4,3,2,1,0],
	keyboardNavigation:"on",
	fullWidth:"off",
	fullScreen:"off"
});
/*-----------------------------------------------------------------------------------*/
/* 	ANIMATION
/*-----------------------------------------------------------------------------------*/
var wow = new WOW({
    boxClass:     'animate',      // animated element css class (default is wow)
    animateClass: 'animated', // animation css class (default is animated)
    offset:       100,          // distance to the element when triggering the animation (default is 0)
    mobile:       false        // trigger animations on mobile devices (true is default)
});
wow.init();
/*-----------------------------------------------------------------------------------*/
/*	ISOTOPE PORTFOLIO
/*-----------------------------------------------------------------------------------*/
var $container = $('.port-wrap .items');
    $container.imagesLoaded(function () {
    $container.isotope({
    itemSelector: '.portfolio-item',
    layoutMode: 'masonry'
});
});
$('.portfolio-filter li a').on('click', function () {
    $('.portfolio-filter li a').removeClass('active');
    $(this).addClass('active');
    var selector = $(this).attr('data-filter');
    $container.isotope({
      filter: selector
    });
return false;
});
});