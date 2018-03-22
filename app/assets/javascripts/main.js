jQuery( document ).ready(function( $ ) {
"use strict";

  $('.carousel-slider').slider({full_width: true});
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
	// navText : ["<i class='fa fa-angle-left'></i>","<i class='fa fa-angle-right'></i>"],
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




/*-----------------------------------------------------------------------------------*/
/*	ISOTOPE PORTFOLIO
/*-----------------------------------------------------------------------------------*/

});

$(document).on('click', '[data-toggle="lightbox"]', function(event) {
  event.preventDefault();
  $(this).ekkoLightbox();
});