(function($) {
	"use strict";
	/**
	Core script to handle the entire theme and core functions
	**/
	var LeMars = function(){
		/* Search Bar ============ */

		var screenWidth = $( window ).width();
		
		var homeSearch = function() {
			/* top search in header on click function */
			var quikSearch = jQuery("#quik-search-btn");
			var quikSearchRemove = jQuery("#quik-search-remove");
			
			quikSearch.on('click',function() {
				
				jQuery('.dlab-quik-search').fadeIn(500);
				jQuery('.dlab-quik-search').addClass('On');
				
			});
			
			quikSearchRemove.on('click',function() {
				jQuery('.dlab-quik-search').fadeOut(500);
				jQuery('.dlab-quik-search').removeClass('On');
				
			});	
			/* top search in header on click function End*/
		}
		
		var cartButton = function(){
			$(".item-close").on('click',function(){
				$(this).closest(".cart-item").hide('500');
			});
			$('.cart-btn').unbind().on('click',function(){
				$(".cart-list").slideToggle('slow');
			})
			
		}  
		
		/* One Page Layout ============ */
		var onePageLayout = function() {
			var headerHeight =   parseInt($('.onepage').css('height'), 10);
			$(".scroll").unbind().on('click',function(event) 
			{
				event.preventDefault();
				
				if (this.hash !== "") {
					var hash = this.hash;	
					var seactionPosition = $(hash).offset().top;
					var headerHeight =   parseInt($('.onepage').css('height'), 10);
					
					
					$('body').scrollspy({target: ".navbar", offset: headerHeight+2}); 
					
					var scrollTopPosition = seactionPosition - (headerHeight);
					
					$('html, body').animate({
						scrollTop: scrollTopPosition
					}, 800, function(){
						
					});
				}   
			});
			if(jQuery(".scroll-bar").length > 0){
				$(".scroll-bar").unbind().on('click',function(event)
				{
					event.preventDefault();
					
					if (this.hash !== "") {
						var hash = this.hash;	
						var seactionPosition = $(hash).offset().top;
						var headerHeight =   parseInt($('.onepage').css('height'), 10);
						
						
						$('body').scrollspy({target: ".navbar", offset: headerHeight+2}); 
						
						var scrollTopPosition = seactionPosition - (headerHeight) + 500;
						
						$('html, body').animate({
							scrollTop: scrollTopPosition
						}, 800, function(){
							
						});
					}   
				});
			}
			$('body').scrollspy({target: ".navbar", offset: headerHeight + 2});  
		}
		
		/* Header Height ============ */
		var handleResizeElement = function(){
			$('.header').css('height','');
			var headerHeight = $('.header').height();
			$('.header').css('height', headerHeight);
		}
		
		/* Load File ============ */
		var dzTheme = function(){
					
			if(screenWidth <= 991 ){
				jQuery('.navbar-nav > li > a, .sub-menu > li > a').unbind().on('click', function(e){
					if(jQuery(this).parent().hasClass('open'))
					{
						jQuery(this).parent().removeClass('open');
					}
					else{
						jQuery(this).parent().parent().find('li').removeClass('open');
						jQuery(this).parent().addClass('open');
					}
				});
			}
		}
		
		/* Magnific Popup ============ */
		var MagnificPopup = function(){	
			/* magnificPopup function */
			jQuery('.mfp-gallery').magnificPopup({
				delegate: '.mfp-link',
				type: 'image',
				tLoading: 'Loading image #%curr%...',
				mainClass: 'mfp-img-mobile',
				gallery: {
					enabled: true,
					navigateByImgClick: true,
					preload: [0,1] // Will preload 0 - before current, and 1 after the current image
				},
				image: {
					tError: '<a href="%url%">The image #%curr%</a> could not be loaded.',
					titleSrc: function(item) {
						return item.el.attr('title') + '<small></small>';
					}
				}
			});
			/* magnificPopup function end */
			
			/* magnificPopup for paly video function */		
			jQuery('.video').magnificPopup({
				type: 'iframe',
				iframe: {
					markup: '<div class="mfp-iframe-scaler">'+
							 '<div class="mfp-close"></div>'+
							 '<iframe class="mfp-iframe" frameborder="0" allowfullscreen></iframe>'+
							 '<div class="mfp-title">Some caption</div>'+
							 '</div>'
				},
				callbacks: {
					markupParse: function(template, values, item) {
						values.title = item.el.attr('title');
					}
				}
			});
			/* magnificPopup for paly video function end*/
			$('.popup-youtube, .popup-vimeo, .popup-gmaps').magnificPopup({
				disableOn: 700,
				type: 'iframe',
				mainClass: 'mfp-fade',
				removalDelay: 160,
				preloader: false,

				fixedContentPos: false
			});
		}
		
		
		/* Scroll To Top ============ */
		var scrollTop = function (){
			var scrollTop = jQuery("button.scroltop");
			/* page scroll top on click function */	
			scrollTop.on('click',function() {
				jQuery("html, body").animate({
					scrollTop: 0
				}, 1000);
				return false;
			})

			jQuery(window).bind("scroll", function() {
				var scroll = jQuery(window).scrollTop();
				if (scroll > 900) {
					jQuery("button.scroltop").fadeIn(1000);
				} else {
					jQuery("button.scroltop").fadeOut(1000);
				}
			});
			/* page scroll top on click function end*/
		}
		
		/* handle Accordian ============ */
		var handleAccordian = function(){
			/* accodin open close icon change */	 	
			jQuery('#accordion').on('hidden.bs.collapse', function(e){
				jQuery(e.target)
					.prev('.panel-heading')
					.find("i.indicator")
					.toggleClass('glyphicon-minus glyphicon-plus');
			});
			jQuery('#accordion').on('shown.bs.collapse', function(e){
				jQuery(e.target)
					.prev('.panel-heading')
					.find("i.indicator")
					.toggleClass('glyphicon-minus glyphicon-plus');
			});
			/* accodin open close icon change end */
		}
		
		/* handle Placeholder ============ */
		var handlePlaceholder = function(){
			/* input placeholder for ie9 & ie8 & ie7 */
			jQuery.support.placeholder = ('placeholder' in document.createElement('input'));
			/* input placeholder for ie9 & ie8 & ie7 end*/
			
			/*fix for IE7 and IE8  */
			if (!jQuery.support.placeholder) {
				jQuery("[placeholder]").on('focus',function () {
					if (jQuery(this).val() == jQuery(this).attr("placeholder")) jQuery(this).val("");
				}).on('blur',function () {
					if (jQuery(this).val() == "") jQuery(this).val(jQuery(this).attr("placeholder"));
				}).blur();

				jQuery("[placeholder]").parents("form").on('submit',function () {
					jQuery(this).find('[placeholder]').each(function() {
						if (jQuery(this).val() == jQuery(this).attr("placeholder")) {
							 jQuery(this).val("");
						}
					});
				});
			}
			/*fix for IE7 and IE8 end */
		}
		
		/* Equal Height ============ */
		var equalHeight = function(container) {
			
			if(jQuery(container).length == 0)
			{
				return false
			}
				
			var currentTallest = 0, 
				currentRowStart = 0, 
				rowDivs = new Array(), 
				$el, topPosition = 0;
				
			$(container).each(function() {
				$el = $(this);
				$($el).height('auto')
				topPostion = $el.position().top;

				if (currentRowStart != topPostion) {
					for (currentDiv = 0; currentDiv < rowDivs.length; currentDiv++) {
						rowDivs[currentDiv].height(currentTallest);
					}
					rowDivs.length = 0; // empty the array
					currentRowStart = topPostion;
					currentTallest = $el.height();
					rowDivs.push($el);
				} else {
					rowDivs.push($el);
					currentTallest = (currentTallest < $el.height()) ? ($el.height()) : (currentTallest);
				}
				for (currentDiv = 0; currentDiv < rowDivs.length; currentDiv++) {
					rowDivs[currentDiv].height(currentTallest);
				}
			});
			
		}
		
		/* Footer Align ============ */
		var footerAlign = function() {
			jQuery('.site-footer').css('display', 'block');
			jQuery('.site-footer').css('height', 'auto');
			var footerHeight = jQuery('.site-footer').outerHeight();
			jQuery('.footer-fixed > .page-wraper').css('padding-bottom', footerHeight);
			jQuery('.site-footer').css('height', footerHeight);
		}
		
		/* File Input ============ */
		var fileInput = function(){
			/* Input type file jQuery */	 	 
			jQuery(document).on('change', '.btn-file :file', function() {
				var input = jQuery(this);
				var	numFiles = input.get(0).files ? input.get(0).files.length : 1;
				var	label = input.val().replace(/\\/g, '/').replace(/.*\//, '');
				input.trigger('fileselect', [numFiles, label]);
			});
			
			jQuery('.btn-file :file').on('fileselect', function(event, numFiles, label) {
				input = jQuery(this).parents('.input-group').find(':text');
				var log = numFiles > 10 ? numFiles + ' files selected' : label;
			
				if (input.length) {
					input.val(log);
				} else {
					if (log) alert(log);
				}
			});
			/* Input type file jQuery end*/
		}
		
		/* Header Fixed ============ */
		var headerFix = function(){
			/* Main navigation fixed on top  when scroll down function custom */		
			jQuery(window).on('scroll', function () {
				if(jQuery('.sticky-header').length > 0){
					var menu = jQuery('.sticky-header');
					if ($(window).scrollTop() > menu.offset().top) {
						menu.addClass('is-fixed');
						$('.header-style-5 .container > .logo-header .logo').attr('src','images/logo.png');
					} else {
						menu.removeClass('is-fixed');
						$('.header-style-5 .container > .logo-header .logo').attr('src','images/logo-white-2.png')
					}
				}
			});
			/* Main navigation fixed on top  when scroll down function custom end*/
		}
		
		/* Masonry Box ============ */
		var masonryBox = function(){
			/* masonry by  = bootstrap-select.min.js */
			if(jQuery('#masonry, .masonry').length)
			{
				var self = $("#masonry, .masonry");
				if(jQuery('.card-container').length)
			    {
					self.imagesLoaded(function () {
						self.masonry({
							gutterWidth: 15,
							isAnimated: true,
							itemSelector: ".card-container"
						});
					});
				}
			}
			if(jQuery('.filters').length)
			{
				jQuery(".filters").on('click','li',function(e) {
					e.preventDefault();
					var filter = $(this).attr("data-filter");
					self.masonryFilter({
						filter: function () {
							if (!filter) return true;
							//return $(this).attr("data-filter") == filter;
							return $(this).hasClass(filter);
						}
					});
				});
			}
			/* masonry by  = bootstrap-select.min.js end */
		}
		
		
			
		/* Set Div Height ============ */
		var setDivHeight = function(){	
			var allHeights = [];
			jQuery('.dzseth > div, .dzseth .img-cover, .dzseth .seth').each(function(e){
				allHeights.push(jQuery(this).height());
			})

			jQuery('.dzseth > div, .dzseth .img-cover, .dzseth .seth').each(function(e){
				var maxHeight = Math.max.apply(Math,allHeights);
				jQuery(this).css('height',maxHeight);
			})
			
			allHeights = [];
			/* Removice */
			if(screenWidth < 991)
			{
				jQuery('.dzseth > div, .dzseth .img-cover, .dzseth .seth').each(function(e){
					jQuery(this).css('height','');
				})
			}	
		}
		
		/* Counter Number ============ */
		var counter = function(){
			 if(jQuery('.counter').length)
			{
				jQuery('.counter').counterUp({
					delay: 10,
					time: 3000
				});	
			} 
		}
		
		/* Video Popup ============ */
		var handleVideo = function(){
			/* Video responsive function */	
			jQuery('iframe[src*="youtube.com"]').wrap('<div class="embed-responsive embed-responsive-16by9"></div>');
			jQuery('iframe[src*="vimeo.com"]').wrap('<div class="embed-responsive embed-responsive-16by9"></div>');	
			/* Video responsive function end */
		}
		
		/* Gallery Filter ============ */
		var handleFilterMasonary = function(){
			/* gallery filter activation = jquery.mixitup.min.js */ 
			if (jQuery('#image-gallery-mix').length) {
				jQuery('.gallery-filter').find('li').each(function () {
					$(this).addClass('filter');
				});
				jQuery('#image-gallery-mix').mixItUp();
			};
			if(jQuery('.gallery-filter.masonary').length){
				jQuery('.gallery-filter.masonary').on('click','span', function(){
					var selector = $(this).parent().attr('data-filter');
					jQuery('.gallery-filter.masonary span').parent().removeClass('active');
					jQuery(this).parent().addClass('active');
					jQuery('#image-gallery-isotope').isotope({ filter: selector });
					return false;
				});
			}
			/* gallery filter activation = jquery.mixitup.min.js */
		}
		
		/* handle Bootstrap Select ============ */
		var handleBootstrapSelect = function(){
			/* Bootstrap Select box function by  = bootstrap-select.min.js */ 
			if (jQuery('select').length) {
			    jQuery('select').selectpicker();
			}
			/* Bootstrap Select box function by  = bootstrap-select.min.js end*/
		}
		
		/* handle Bootstrap Touch Spin ============ */
		var handleBootstrapTouchSpin = function(){
			jQuery("input[name='demo_vertical2']").TouchSpin({
			  verticalbuttons: true,
			  verticalupclass: 'ti-plus',
			  verticaldownclass: 'ti-minus'
			});
			
		}
		/* Resizebanner ============ */
		var handleBannerResize = function(){
			$(".full-height").css("height", $(window).height());
		}
		
		/* Countdown ============ */
		var handleCountDown = function(WebsiteLaunchDate){
			/* Time Countr Down Js */
			if($(".countdown").length)
			{
				$('.countdown').countdown({date: WebsiteLaunchDate+' 23:5'}, function() {
					$('.countdown').text('we are live');
				});
			}
			/* Time Countr Down Js End */
		}
		
		/* Content Scroll ============ */
		var handleCustomScroll = function(){
			/* all available option parameters with their default values */
			if($(".content-scroll").length > 0)
			{ 
				$(".content-scroll").mCustomScrollbar({
					setWidth:false,
					setHeight:false,
					axis:"y"
				});	
			}
		}
		
		/* WOW ANIMATION ============ */
		var wow_animation = function(){
			if($('.wow').length > 0)
			{
				var wow = new WOW(
				{
				  boxClass:     'wow',      // animated element css class (default is wow)
				  animateClass: 'animated', // animation css class (default is animated)
				  offset:       50,          // distance to the element when triggering the animation (default is 0)
				  mobile:       false       // trigger animations on mobile devices (true is default)
				});
				wow.init();	
			}	
		}
		
		/* Left Menu ============ */
		var handleSideBarMenu = function(){
			$('.openbtn').on('click',function(e){
				e.preventDefault();
				if($('#mySidenav').length > 0)
				{
					document.getElementById("mySidenav").style.left = "0";
				}

				if($('#mySidenav1').length > 0)
				{
					document.getElementById("mySidenav1").style.right = "0";
				}
				
			})
			
			$('.closebtn').on('click',function(e){
				e.preventDefault();
				if($('#mySidenav').length > 0)
				{
					document.getElementById("mySidenav").style.left = "-300px";
				}
				
				if($('#mySidenav1').length > 0)
				{
					document.getElementById("mySidenav1").style.right = "-820px";
				}
			})
		}
		
		/* Left Menu ============ */
		var handleMenuPosition = function(){
			$(".header-nav li").unbind().each(function (e) {
				if ($('ul', this).length) {
					var elm = $('ul:first', this);
					var off = elm.offset();
					var l = off.left;
					var w = elm.width();
					var docH = $("body").height();
					var docW = $("body").width();

					var isEntirelyVisible = (l + w <= docW);

					if (!isEntirelyVisible) {
						$(this).find('.sub-menu:first').addClass('left');
					} else {
						$(this).find('.sub-menu:first').removeClass('left');
					}
				}
			});
		}	
		
		/* Range ============ */
		var priceslider = function(){

			if($(".price-slide, .price-slide-2").length > 0 ) {
				$("#slider-range,#slider-range-2").slider({
					range: true,
					min: 300,
					max: 4000,
					values: [0, 5000],
					slide: function(event, ui) {
						var min = ui.values[0],
							max = ui.values[1];
						  $('#' + this.id).next().val("$" + min + " - $" + max);
					}
				});
			}
		}
		
		/* BGEFFECT ============ */
		var handleBGElements = function(){
			
			if(screenWidth > 1023)
			{
				if(jQuery('.bgeffect').length)
				{
					var s = skrollr.init({
						edgeStrategy: 'set',
						easing: {
							WTF: Math.random,
							inverted: function(p) {
								return 1-p;
							}
						}
					});			
				}		
			}
		}
		
		var boxHover = function(){
		
			jQuery('.box-hover').on('mouseenter',function(){
				jQuery('.box-hover').removeClass('active');
				jQuery(this).addClass('active');
				
			})
		}
		
		var reposition = function (){
			var modal = jQuery(this),
			dialog = modal.find('.modal-dialog');
			modal.css('display', 'block');
			
			/* Dividing by two centers the modal exactly, but dividing by three 
			 or four works better for larger screens.  */
			dialog.css("margin-top", Math.max(0, (jQuery(window).height() - dialog.height()) / 2));
		}
		
		var handleResize = function (){
			
			/* Reposition when the window is resized */
			jQuery(window).on('resize', function() {
				jQuery('.modal:visible').each(reposition);
				equalHeight('.equal-wraper .equal-col');
				footerAlign();
			});
		}
		
		var handlePlaceholderAnimation = function()
		{
			if(jQuery('.dezPlaceAni').length)
			{
			
				$('.dezPlaceAni input, .dezPlaceAni textarea').on('focus',function(){
				  $(this).parents('.form-group, .news-box').addClass('focused');
				});
				
				$('.dezPlaceAni input, .dezPlaceAni textarea').on('blur',function(){
				  var inputValue = $(this).val();
				  if ( inputValue == "" ) {
					$(this).removeClass('filled');
					$(this).parents('.form-group, .news-box').removeClass('focused');  
				  } else {
					$(this).addClass('filled');
				  }
				})
			}
		}
		
		var handleCarouselSlider = function (){
			
			if(jQuery('.post-carousel').length > 0)
			{
				jQuery('.post-carousel').owlCarousel({
					loop:true,
					autoplay:true,
					margin:0,
					nav:true,
					dots: true,
					navText: ['<i class="flaticon-left-arrow"></i>', '<i class="flaticon-right-arrow"></i>'],
					responsive:{
						0:{
							items:1
						},
						480:{
							items:1
						},			
						991:{
							items:1
						},
						1000:{
							items:1
						}
					}
				});
			}
			
		}
		
		
		/* Website Launch Date */ 
		var WebsiteLaunchDate = new Date();
		var monthNames = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"];
		WebsiteLaunchDate.setMonth(WebsiteLaunchDate.getMonth() + 1);
		WebsiteLaunchDate =  WebsiteLaunchDate.getDate() + " " + monthNames[WebsiteLaunchDate.getMonth()] + " " + WebsiteLaunchDate.getFullYear(); 
		/* Website Launch Date END */ 

		var handleFrontendEditorIssue = function(){
			jQuery('i').empty();
		}

		var handleCommentReply = function() {
		
			jQuery('.w3-comment-reply').on('click', function() {
				event.preventDefault();

				var parent_id = $(this).data("commentid")
				var blog_id = $(this).data('postid');
				var replyto = $(this).data('replyto');
				var parent = $(this).parents('.comment .comment-body:first');

				$("#comment_parent").val(parent_id);
				$('#commentform').trigger("reset");
				$("#cancel-comment-reply").removeClass('d-none');
				$("#reply-title").html(replyto);
				$("#ReplyFormContainer").insertAfter(parent);

			});

			jQuery('#cancel-comment-reply').on('click', function() {
				event.preventDefault();
				
				$("#comment_parent").val(0);
				$("#reply-title").empty();
				$("#cancel-comment-reply").addClass('d-none');
				$("#ReplyFormContainer").appendTo('#comments-div');


			});
		}

		var handleAjaxLoadMore = function() {
			var currentPage = 2;

			jQuery('.el-ajax-load-more').on('click', function() {
				
				var ajax_url = baseUrl+'/admin/magic_editors/ajax_load_more';
				var order = jQuery(this).data('order');
				var orderby = jQuery(this).data('orderby');	
				var no_of_posts = jQuery(this).data('no-of-posts');

				var post_with_images = jQuery(this).data('post_with_images');
				var post_category_ids = jQuery(this).data('post_category_ids');	
				var ajax_container = jQuery(this).data('ajax-container');
				var ajax_view = jQuery(this).data('ajax-view');

				var thisObj = jQuery(this);

				var data = {};

				data.page = currentPage;
				if (order != undefined) { data.order = order;	}
				if (orderby != undefined) { data.orderby = orderby;	}
				if (ajax_view != undefined) { data.ajax_view = ajax_view;	}
				if (no_of_posts != undefined) { data.no_of_posts = no_of_posts;	}
				if (post_with_images != undefined) { data.post_with_images = post_with_images;	}
				if (post_category_ids != undefined) { data.post_category_ids = post_category_ids;	}

				jQuery.ajax({
					headers: {
						'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
					},
					type: 'Post',
					url: ajax_url,
					data: data,
					success : function(response)
					{
						if (response.html) {
							jQuery('#'+ajax_container).append(response.html);
							
          
					        // Check if there are more pages to load
					        if (response.has_more_pages) {
					        	currentPage++;
					        } else {
					            // No more posts to load
					            $(thisObj).text('No More Posts');
					            $(thisObj).prop('disabled', true).addClass('disabled');
					        }

						}
						else {
				          	alert('Failed to load more posts.');
				        }
					}
				});
			});
		}
		
		
		/* Function ============ */
		return {
			init:function(){
				boxHover();
				priceslider();
				onePageLayout();
				dzTheme();
				handleResizeElement();
				homeSearch();
				handleAccordian();
				scrollTop();
				handlePlaceholder();
				handlePlaceholderAnimation();
				fileInput();
				headerFix();
				setDivHeight();
				handleVideo();
				handleFilterMasonary();
				handleCountDown(WebsiteLaunchDate);
				handleCustomScroll();
				handleSideBarMenu();
				cartButton();
				handleBannerResize();
				handleResize();
				handleFrontendEditorIssue();
				handleCarouselSlider();
				handleCommentReply();
				handleAjaxLoadMore();
				jQuery('.modal').on('show.bs.modal', reposition);
				$('[data-toggle="tooltip"]').tooltip()
			},
			
			
			load:function(){
				handleBGElements();
				handleBootstrapSelect();
				equalHeight('.equal-wraper .equal-col');
				counter();
				handleMenuPosition();
				masonryBox();
			},
			
			resize:function(){
				screenWidth = $(window).width();
				dzTheme();
				handleResizeElement();
				handleSideBarMenu();
				handleMenuPosition();
				setDivHeight();
			}
		}
		
	}();

	/* Document.ready Start */	
	jQuery(document).ready(function() {
	  
		LeMars.init();
		
		jQuery('.navicon').on('click',function(){
			$(this).toggleClass('open');
		});

		$('a[data-toggle="tab"]').on('click',function(){
			// todo remove snippet on bootstrap v4
			$('a[data-toggle="tab"]').on('click',function() {
			  $($(this).attr('href')).show().addClass('show active').siblings().hide();
			})
		 });
		 
		 jQuery('.post-tabs').on('mouseenter mouseleave', function(){
			jQuery('.post-tabs').removeClass('active');
			jQuery('.life-style-post-bx').removeClass('show');
			jQuery(this).addClass('active');
			stTabId = $(this).attr('id');
			resTabId =  stTabId.replace("st-", "");
			jQuery('#'+resTabId).addClass('show');
		});
		
	});
	/* Document.ready END */

	/* Window Load START */
	jQuery(window).on("load", function (e) {
		LeMars.load();
		 setTimeout(function(){
			jQuery('#loading-area').remove();
		}, 0); 
	});
	/*  Window Load END */
	/* Window Resize START */
	jQuery(window).on('resize',function () { 
		LeMars.resize();
	});
	/*  Window Resize END */
})(jQuery);