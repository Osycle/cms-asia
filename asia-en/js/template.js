'use strict';

var log = console.log;



(function(){
$(function(){


	// JQUERY FUNCTION

	$.fn.setTimeout = function( func, time ){
		var self = $(this);
		setTimeout( function(){ func.call(self); }, time ); 
		return self.valueOf();
	}




	function onLoaded() {

		//MENU

		resizer( function(){
			$(".menu-border").width( $(".menu-list").width() )
		} )
		

		setTimeout( function(){

			$( tpl.section ).find( tpl.sectionContent ).removeClass("in");
			preLoader.preToggle();
			preLoader.enter = true;
			bgLineAnimation(1);
		}, 600);

	}


	window.preLoader = {

		preBox: ".pre-box",
		enter: false,
		status: $(".pre-box").hasClass("in"),

		preToggle: function ( bool, func ) {
			var endtime = 600;
			if( !this.enter ) 
				return;
			if ( typeof func === "function" )
				setTimeout( function() { func(); }, endtime )
			var preBox = $(this.preBox);

			bool || this.status ?
				preBox.removeClass("in").setTimeout( function(){ $( preBox ).hide(); }, endtime )
			:
				preBox.show().addClass("in").find(".box-content");
			
			return this.status = !this.status;

		},


		preImg: function ( img ) {

			var images = 						 		img || document.images,
					imagesTotalCount = 			images.length,
					imagesLoadedCount = 		0,
					preloadPercent = 		 		$(".percent").text("0 %");


			if( imagesTotalCount == 0 ){
				preOnload();
				$(preloadPercent).text("100 %"); 
			}

			for ( var i = 0; i < imagesTotalCount ; i++ ) {
				var image_clone = new Image();
						image_clone.onload = 		image_loaded;
						image_clone.onerror = 	image_loaded;
						image_clone.src = 			images[i].src;
			}

			function preOnload (){
				onLoaded();
			}

			function image_loaded (){
				imagesLoadedCount++;

				var per = ( ( 100 / imagesTotalCount ) * imagesLoadedCount ) << 0 ;

				setTimeout( function(){
					//log(per)
					$(preloadPercent).text(  per +  "%"); 
				}, 1)

				if(imagesLoadedCount >= imagesTotalCount )	preOnload();
			}

		}
	}


















	
	// TPL
	window.tpl = {

		section: "#sections",
		sectionContent: "#sectionContent",
		sectionData: {},
		sectionTemplate: {},

		sectionInner: function (responsePage, func) {

			var self = this;
			setTimeout(function (){

				$(self.section).find(self.sectionContent).remove();
				self.sectionTemplate = $(self.section).append( responsePage )
																							.find( self.sectionContent )
																							.addClass("in");
				
				self.sectionData = window.sectionData || {};
				self.sectionUpdate();

			}, 400)
			
			preLoader.preImg( $(self.sectionTemplate).find("img") );
			

			if( typeof func == "function" ) func();
		},

		sectionUpdate: function() {
			$(".active-menu-num").text( pageInf.menuActive() );
			//$("#sectionContent").addClass("in");
			setTimeout( function (){
				if( $("#hamburger")[0].checked )
					$("#hamburger").trigger("click");
			
			}, 350);
			setTimeout( function() {
				$("#sectionContent").addClass("active");
			}, 300)
			menuBorder();
		}

	
	}





















	window.pageInf = {

			menu: ".menu-list li",

			menuCount: function () {

				var num = $(this.menu).length;

				if( num < 9 )
					return "0"+num;
				return num;

			},
			menuActive: function () {

				var num = $(this.menu).filter( function(i, el) {
						return location.hash.replace(/#\//, "").trim() == $(el).attr("filename");
					} ).attr("menu-num")

				if( num < 9 ) 
					return "0"+num;
				return num;

			}
		
	}










	/* ---VUE--- */

	Vue.use(VueResource);
	Vue.use(VueRouter);


	var defaultHash = "about";


	var Section = {

		template: "<template><h1>{{ $route.params.id }}</h1></template>",
		data: {
			href: "",
			status: false
		},
		beforeRouteEnter: function(to, from, next){

			function anFun(){
				var url = to.fullPath;
				function menuCLick() {
					$(".menu-list a").add(".f-menu-list a").map( function(i, el) {

						var fromUrl = $( el ).closest("li").attr("filename");

						$(el).on( "click", function() {
							router.push( "/"+fromUrl );
						} )
						
					})
				}
				v.getSinglePost( url,  menuCLick );
				preLoader.preToggle();
			}
			next( anFun )

		},

		beforeRouteUpdate: function(to, from, next) {
			var self = this;

			self.status = true;
			self.href = to.fullPath;

			var url = to.fullPath;
			preLoader.preToggle(false);
			function callFun() {		
					self.status = false;
					next();
			}
	    v.getSinglePost( url, callFun );		
	  },

	  beforeRouteLeave: function( to, from, next ) {

			//console.log( "Leave" );

	  }
	}



	window.router = new VueRouter({

	  routes: [
	  	{ 
				path: "/", 
				redirect: "/about",
				name: "index"
			},
			{ 
				path: "/:section", 
				name: "section",
				components: {
					default: Section
				},
				children: [
	        {

	          path: '/:section/:id',
	          name: "article",
	          component: Section
	        }
	      ]

			}

	  ]
	})

























	window.v = new Vue({
		el: "#page",
		router: router,
		components: {},
		data: {
			defaultHash: defaultHash,
			currentView: Section,
			link: "",
			msg: "WOOOWWWWWWWWWW",
			responsePage: "",
			ol: "",
			vueOnload: vueOnload
		},

		computed: {},



		methods: {

			getSinglePost: function (id, func) {
				var self = this;
				var actions = {}
				var options = {
												params: {},
												before: function(request) {
													if (/(.htm)/gim.test( request.params.id ) ) 
														void(0);
												}
											}

				//var url = location.origin+"{/id}";
				var url = location.origin+"/"+language+"{/id}";
				console.log( id );
				var resource = self.$resource( url, {}, actions, options );

				$( tpl.section ).find( tpl.sectionContent ).addClass("in");

				resource.get( {id: id} ).then(
						function ( response ) {
				
							self.responsePage = response.data;
							if( /(<html+)/gim.test(  response.data ) ) {
								//v.getSinglePost( self.defaultHash , func );
								return;
							}
							func();
							tpl.sectionInner( self.responsePage )

				},	function ( response ) {
							self.responsePage = response.data;
							//func();
							tpl.sectionInner( self.responsePage )
				})
			}
		},

		created: 				function () {},
		beforeCreate: 	function () {}, 
		mounted: function () {
		  this.$nextTick(function () {
				vueOnload();
		  })
		}
	});




	function vueOnload(){

		preLoader.preImg();

		var menu = $(".menu-list").add(".min-menu-skin");
		
		$("#page").addClass("in");

		//	PRELOADER TEXT
		menu.find("li").click( function() {

			var self = this;
			var text = $(self).text().trim();
			$(".box-content .content h1").attr("data-flicker", text).text(text);

		} );

		menu.find("li").map( function(i, el) {
			$(el).attr("menu-num", i+1);
		} );

		//	COUNTER NUM
		$(".total-menu-num").text( pageInf.menuCount() );
		$(".active-menu-num").text( pageInf.menuActive() );
		
		//	MIN MENU CLICK
		$("#hamburger").on("click", function(){
			$(".menu-switch").toggleClass("open");
		});


		

		return true;

	}


	function refreshLink( to, from, next ) {
		next();
	}
	function sectionLink( to, from, next ) {
		next();
	}

	router.beforeEach( function(to, from, next) {

		if( to.name === "article" )
			setTimeout( function() {refreshLink( to, from, next )}, 0	 );
		else if (to.name === "section")
			setTimeout( function() {sectionLink( to, from, next )}, 0	 );

	})



























	window.replaceLink = function( links, fileName ) {
		if( typeof $ != "undefined" )
			(function( $ ){

				var aArray = 	$(links).map( function( i, el ){
				var href = 		$( el ).attr("href");
					
				$( el ).attr("href", "#/"+href.substring( href.search( new RegExp( fileName, 'gim') ) ) );

			} )
			return aArray;

		})( $ )
		else return !true;

	}


	window.paginationLink = function( links, fileName ) {
		$( links ).map( function( i, el ) {

			var href = $( el ).attr( "href" );
			$( el ).attr( "href", "#/"+href.substring( ( href.search( fileName ) ) ) )
		

		} )
	}





	function bgLineAnimation( bool ) {
		if ( $(".bg-lines").length )
			if( bool ) 
				$(".bg-lines").addClass("in").removeClass("out") 
			else
				$(".bg-lines").addClass("out").removeClass("in");
	}
	
	

	function menuBorder(){

		var menu = 				$(".menu-list"),
				border = 			$(".menu-border"),
				menuItem = 		menu.find("li"),
				lineItem = 		border.find(".line-item");

		function moveBorder( li ) {
			if( li.length === 0 )
				return;

			var liWidth = li.outerWidth( true ),
					liPos = 	li.position().left;

			lineItem.css( {
				"width": liWidth,
				"left": liPos
			});

		}

		function activeBorder(){
			moveBorder( menu.find(".router-link-active") )
		}

		activeBorder();
		lineItem.addClass("router-link-active");


		menu.hover(
			function() {
				lineItem.addClass("in");
			},
			function() {
				lineItem.removeClass("in");
			}
		);
		menuItem.hover(
			function() {
				moveBorder( $(this) )
			},
			function() {
				activeBorder();
			})


	}






	$("body").on("mousemove", function(e){
		return;
		if( $(".about .bg-img").length != 0 )
			$(".about .bg-img")
				.css("background-position-x", (20 + (-e.pageX/160)))
				.css("background-position-y", (-10 + (-e.pageY/120)));
			$(".about .main-content")
				.css("left", (0 + (e.pageX/400)))
				.css("top", (-0 + (e.pageY/300)));
	});

























	//	ON HASH CHANGE
	$(window).on("hashchange", function(e) {
		
		//	BODY
		
	} )

	// ON SCROLL
	var header_status = false;
	$( window ).on("scroll", function(e){

		if($(window).scrollTop() > 300 && header_status == false){
			header_status = true;
			if ( $(".min-menu") ) $(".min-menu").addClass("scrolled");
		}else if($(window).scrollTop() < 300 && header_status == true){
			header_status = false;
			if ( $(".min-menu") ) $(".min-menu").removeClass("scrolled");
		}

	});

	//	FORM
	(function() {

		if (!String.prototype.trim) {
			(function() {
				// Make sure we trim BOM and NBSP
				var rtrim = /^[\s\uFEFF\xA0]+|[\s\uFEFF\xA0]+$/g;
				String.prototype.trim = function() {
					return this.replace(rtrim, '');
				};
			})();
		}

		[].slice.call( document.querySelectorAll( '.input__field' ) ).forEach( function( inputEl ) {

			if( inputEl.value.trim() !== '' ) {
				classie.add( inputEl.parentNode, 'input--filled' );
			}

			// events:
			inputEl.addEventListener( 'focus', onInputFocus );
			inputEl.addEventListener( 'blur', onInputBlur );
		} );

		function onInputFocus( ev ) {
			classie.add( ev.target.parentNode, 'input--filled' );
		}

		function onInputBlur( ev ) {
			if( ev.target.value.trim() === '' ) {
				classie.remove( ev.target.parentNode, 'input--filled' );
			}
		}
	})();








	});
}) (jQuery);














var isWebkit = /Webkit/i.test(navigator.userAgent),
		isChrome = /Chrome/i.test(navigator.userAgent),
		isMac =  	 /Mac/i.test(navigator.userAgent),
		isMobile = !!("ontouchstart" in window),
		isAndroid = /Android/i.test(navigator.userAgent);










// COMMON FUNCTION

function resizer(f) {
	if( typeof f === "function" ) f();
	$( window ).on("resize", function(e){
		if( typeof f === "function" ) f();
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

