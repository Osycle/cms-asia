'use strict';

(function(){
$(function(){




	// FANCYBOX
	if( $("[data-fancybox='article-l-items']").length != 0 )
		$("[data-fancybox='article-l-items']").fancybox({
			afterShow : function( instance, current ) {},
			animationEffect : "fade",
			transitionEffect: "zoom-in-out"
		});

	//WOW
	new WOW({
		offset: 30
	}).init();




	// AOS
	AOS.init({
	  offset: 100,
	  once: true,
	  duration: 1000,
	  delay: 200
	});
	
	setTimeout(function(){AOS.refresh()}, 300);






  // Flikity Carousel
	var arrowStyle = { 
	  x0: 10,
	  x1: 60, y1: 50,
	  x2: 70, y2: 40,
	  x3: 30
	}
	var carouselStock = $('.carousel-stock .carousel-content').flickity({
		//autoPlay: 2000,
		arrowShape: arrowStyle,
		imagesLoaded: true,
		//prevNextButtons: checkView(991),
		draggable: checkView(991),
		//wrapAround: true,
		adaptiveHeight: true,
		selectedAttraction: 0.01,
		friction: 0.15,
		//rightToLeft: true,
		//groupCells: 3,
		pageDots: false,
		initialIndex: 2,
		//contain: true,
		percentPosition: true,
		cellAlign: 'center'
	});

	carouselStock.on( 'select.flickity', function() {
	  $(this)	.find(".is-selected")
				  	.siblings()
				  	.removeClass("is-sel").end()
				  	.prev().addClass("is-sel").end()
				  	.next().addClass("is-sel");

	})

	if( $(".short-stock .flickity-prev-next-button") ){
		var farrows = $(".short-stock .flickity-prev-next-button");
		farrows.eq(0)
			.before("<div class='container'></div>")
			.siblings(".container")
			.append( farrows );
	}


	if( $('.catalog-article-content .carousel-main').length >= 0 ){
		var carouselMain = 		$('.catalog-article-content .carousel-main'),
				carouselNav = 		$('.catalog-article-content .carousel-nav');
		for( var i = 0 ; i < carouselMain.length ; i++ ){
			$(carouselMain).eq(i).flickity({
				imagesLoaded: true,
				prevNextButtons: false,
				cellAlign: 'center',
				friction: 1,
				selectedAttraction: 1,
				draggable: !(checkView(992)),
				contain: true,
				pageDots: false
			});
			$(carouselNav).eq(i).flickity({
				imagesLoaded: true,
			  asNavFor: $(carouselMain)[i],
			  prevNextButtons: true,
			  draggable: !false,
			  cellAlign: 'center',
			  adaptiveHeight: true,
			  contain: true,
			  pageDots: false
			});

		}
	}





	function onLoaded() {

		//MASONRY
		if( $('.grid-img').length )
			$('.grid-img').masonry({
			  itemSelector: '.grid-img-item',
			  columnWidth: '.grid-img-sizer',
			  percentPosition: true
			});

	}







	});
}) (jQuery);














var isWebkit = /Webkit/i.test(navigator.userAgent),
		isChrome = /Chrome/i.test(navigator.userAgent),
		isMac =  	 /Mac/i.test(navigator.userAgent),
		isMobile = !!("ontouchstart" in window),
		isAndroid = /Android/i.test(navigator.userAgent);




// COMMON FUNCTION

function resizer(f) {
	if( typeof f == "function" ) f();
	$( window ).on("resize", function(e){
		if( typeof f == "function" ) f();
	});
}
function checkView( width ) {
	return ($( document ).width() > width);
}

function getRandomInt(min, max) {
  return Math.floor(Math.random() * (max - min)) + min;
}

function getRandomIntFloat(min, max) {
  return Math.random() * (max - min) + min;
}

function scrolledDiv(el) {
	try{
	  var docViewTop = $(window).scrollTop(),
		docViewBottom = docViewTop + $(window).height(),
		elTop = $(el).offset().top,
		elBottom = elTop + $(el).height()/1.8;
	}catch(err){console.error();}

  return ((elBottom <= docViewBottom) && (elTop >= docViewTop));
}





