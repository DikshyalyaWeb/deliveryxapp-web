(function($) { 
    
    "use strict";

	var W3cms = function(){
		 
		/* Search Bar ============ */
		var screenWidth = $( window ).width();
		
		
		var handleSelectPicker = function(){
			if(jQuery('.default-select').length > 0 ){
				jQuery('.default-select').selectpicker();
			}
		}

		var handleTheme = function(){
			$('#preloader').fadeOut(500);
			$('#main-wrapper').addClass('show');
		}

	    var handleMetisMenu = function() {
			if(jQuery('#menu').length > 0 ){
				$("#menu").metisMenu();
			}
			jQuery('.metismenu > .mm-active ').each(function(){
				if(!jQuery(this).children('ul').length > 0)
				{
					jQuery(this).addClass('active-no-child');
				}
			});
		}

		var loginDetails = function(){
			jQuery(document).on('click', '#admin_detail', function() {
				$('#login_email').val('admin@gmail.com');
				$('#login_password').val('12345678');
		  	});
			jQuery(document).on('click', '#manager_detail',  function() {
				$('#login_email').val('manager@gmail.com');
				$('#login_password').val('12345678');
		  	});
			jQuery(document).on('click', '#customer_detail', function() {
				$('#login_email').val('customer@gmail.com');
				$('#login_password').val('12345678');
		  	});
		}	


		var domoPanel = function(){
			if(jQuery(".dz-demo-content").length>0) {
				const ps = new PerfectScrollbar('.dz-demo-content');
				$('.dz-demo-trigger').on('click', function() {
						$('.dz-demo-panel').addClass('show');
				  });
				  $('.dz-demo-close, .bg-close,.dz_theme_demo,.dz_theme_demo_rtl').on('click', function() {
						$('.dz-demo-panel').removeClass('show');
				  });
				  
				  $('.dz-demo-bx').on('click', function() {
					  $('.dz-demo-bx').removeClass('demo-active');
					  $(this).addClass('demo-active');
				  });
			}
		} 
	   
	    var handleAllChecked = function() {
			$("#checkAll").on('change',function() {
				$("td input:checkbox, .email-list .custom-checkbox input:checkbox").prop('checked', $(this).prop("checked"));
			});
		}

		var handleNavigation = function() {
			$(".nav-control").on('click', function() {

				$('#main-wrapper').toggleClass("menu-toggle");

				$(".hamburger").toggleClass("is-active");
			});
		}
	  
		var handleCurrentActive = function() {
			for (var nk = window.location,
				o = $("ul#menu a").filter(function() {
					
					return this.href == nk;
					
				})
				.addClass("mm-active")
				.parent()
				.addClass("mm-active");;) 
			{
				
				if (!o.is("li")) break;
				
				o = o.parent()
					.addClass("mm-show")
					.parent()
					.addClass("mm-active");
			}
		}

		var handleMiniSidebar = function() {
			$("ul#menu>li").on('click', function() {
				const sidebarStyle = $('body').attr('data-sidebar-style');
				if (sidebarStyle === 'mini') {
					$(this).find('ul').stop()
				}
			})
		}
	   
		var handleMinHeight = function() {
			var win_h = window.outerHeight;
			var win_h = window.outerHeight;
			if (win_h > 0 ? win_h : screen.height) {
				$(".content-body").css("min-height", (win_h + 60) + "px");
			};
		}
	    
		var handleDataAction = function() {
			$('a[data-action="collapse"]').on("click", function(i) {
				i.preventDefault(),
					$(this).closest(".card").find('[data-action="collapse"] i').toggleClass("mdi-arrow-down mdi-arrow-up"),
					$(this).closest(".card").children(".card-body").collapse("toggle");
			});

			$('a[data-action="expand"]').on("click", function(i) {
				i.preventDefault(),
					$(this).closest(".card").find('[data-action="expand"] i').toggleClass("icon-size-actual icon-size-fullscreen"),
					$(this).closest(".card").toggleClass("card-fullscreen");
			});



			$('[data-action="close"]').on("click", function() {
				$(this).closest(".card").removeClass().slideUp("fast");
			});

			$('[data-action="reload"]').on("click", function() {
				var e = $(this);
				e.parents(".card").addClass("card-load"),
					e.parents(".card").append('<div class="card-loader"><i class=" ti-reload rotate-refresh"></div>'),
					setTimeout(function() {
						e.parents(".card").children(".card-loader").remove(),
							e.parents(".card").removeClass("card-load")
					}, 2000)
			});
		}

	    var handleHeaderHight = function() {
			const headerHight = $('.header').innerHeight();
			$(window).scroll(function() {
				if ($('body').attr('data-layout') === "horizontal" && $('body').attr('data-header-position') === "static" && $('body').attr('data-sidebar-position') === "fixed")
					$(this.window).scrollTop() >= headerHight ? $('.deznav').addClass('fixed') : $('.deznav').removeClass('fixed')
			});
		}
		
		var handleDzScroll = function() {
			jQuery('.dz-scroll').each(function(){
			
				var scroolWidgetId = jQuery(this).attr('id');
				const ps = new PerfectScrollbar('#'+scroolWidgetId, {
				  wheelSpeed: 2,
				  wheelPropagation: true,
				  minScrollbarLength: 20
				});
				ps.isRtl = false;
			})
		}
		
		var handleMenuTabs = function() {
			if(screenWidth <= 991 ){
				jQuery('.menu-tabs .nav-link').on('click',function(){
					if(jQuery(this).hasClass('open'))
					{
						jQuery(this).removeClass('open');
						jQuery('.fixed-content-box').removeClass('active');
						jQuery('.hamburger').show();
					}else{
						jQuery('.menu-tabs .nav-link').removeClass('open');
						jQuery(this).addClass('open');
						jQuery('.fixed-content-box').addClass('active');
						jQuery('.hamburger').hide();
					}
				});
				jQuery('.close-fixed-content').on('click',function(){
					jQuery('.fixed-content-box').removeClass('active');
					jQuery('.hamburger').removeClass('is-active');
					jQuery('#main-wrapper').removeClass('menu-toggle');
					jQuery('.hamburger').show();
				});
			}
		}
		
		var handleChatbox = function() {
			jQuery('.bell-link').on('click',function(){
				jQuery('.chatbox').addClass('active');
			});
			jQuery('.chatbox-close').on('click',function(){
				jQuery('.chatbox').removeClass('active');
			});
		}
		
		var handlePerfectScrollbar = function() {
			if(jQuery('.deznav-scroll').length > 0)
			{
				const qs = new PerfectScrollbar('.deznav-scroll');
				
				qs.isRtl = false;
			}
		}

		var handleBtnNumber = function() {
			$('.btn-number').on('click', function(e) {
				e.preventDefault();

				fieldName = $(this).attr('data-field');
				type = $(this).attr('data-type');
				var input = $("input[name='" + fieldName + "']");
				var currentVal = parseInt(input.val(), 10);
				if (!isNaN(currentVal)) {
					if (type == 'minus')
						input.val(currentVal - 1);
					else if (type == 'plus')
						input.val(currentVal + 1);
				} else {
					input.val(0);
				}
			});
		}
		
		var handleDzChatUser = function() {
			jQuery('.dz-chat-user-box .dz-chat-user').on('click',function(){
				jQuery('.dz-chat-user-box').addClass('d-none');
				jQuery('.dz-chat-history-box').removeClass('d-none');
			}); 
			
			jQuery('.dz-chat-history-back').on('click',function(){
				jQuery('.dz-chat-user-box').removeClass('d-none');
				jQuery('.dz-chat-history-box').addClass('d-none');
			}); 
			
			jQuery('.dz-fullscreen').on('click',function(){
				jQuery('.dz-fullscreen').toggleClass('active');
			});
		}
		
		
		var handleDzFullScreen = function() {
			jQuery('.dz-fullscreen').on('click',function(e){
				if(document.fullscreenElement||document.webkitFullscreenElement||document.mozFullScreenElement||document.msFullscreenElement) { 
					/* Enter fullscreen */
					if(document.exitFullscreen) {
						document.exitFullscreen();
					} else if(document.msExitFullscreen) {
						document.msExitFullscreen(); /* IE/Edge */
					} else if(document.mozCancelFullScreen) {
						document.mozCancelFullScreen(); /* Firefox */
					} else if(document.webkitExitFullscreen) {
						document.webkitExitFullscreen(); /* Chrome, Safari & Opera */
					}
				} 
				else { /* exit fullscreen */
					if(document.documentElement.requestFullscreen) {
						document.documentElement.requestFullscreen();
					} else if(document.documentElement.webkitRequestFullscreen) {
						document.documentElement.webkitRequestFullscreen();
					} else if(document.documentElement.mozRequestFullScreen) {
						document.documentElement.mozRequestFullScreen();
					} else if(document.documentElement.msRequestFullscreen) {
						document.documentElement.msRequestFullscreen();
					}
				}		
			});
		}
		
		var handleshowPass = function(){
			jQuery('.show-pass').on('click',function(){
				jQuery(this).toggleClass('active');
				if(jQuery('#dz-password').attr('type') == 'password'){
					jQuery('#dz-password').attr('type','text');
				}else if(jQuery('#dz-password').attr('type') == 'text'){
					jQuery('#dz-password').attr('type','password');
				}
			});
		}

		var handleshowConfirmPass = function(){
			jQuery('.show-con-pass').on('click',function(){
				jQuery(this).toggleClass('active');
				if(jQuery('#dz-con-password').attr('type') == 'password'){
					jQuery('#dz-con-password').attr('type','text');
				}else if(jQuery('#dz-con-password').attr('type') == 'text'){
					jQuery('#dz-con-password').attr('type','password');
				}
			});
		}
		
		var heartBlast = function (){
			$(".heart").on("click", function() {
				$(this).toggleClass("heart-blast");
			});
		}
		
		var handleDzLoadMore = function() {
			$(".dz-load-more").on('click', function(e)
			{
				e.preventDefault();	//STOP default action
				$(this).append(' <i class="fa fa-refresh"></i>');
				
				var dzLoadMoreUrl = $(this).attr('rel');
				var dzLoadMoreId = $(this).attr('id');
				
				$.ajax({
					method: "POST",
					url: dzLoadMoreUrl,
					dataType: 'html',
					success: function(data) {
						$( "#"+dzLoadMoreId+"Content").append(data);
						$('.dz-load-more i').remove();
					}
				})
			});
		}
		
		var handleLightgallery = function() {
			if(jQuery('#lightgallery').length > 0)
			{
				$('#lightgallery').lightGallery({
					loop:true,
					thumbnail:true,
					exThumbImage: 'data-exthumbimage'
				});
			}
		}
		
		var handleSmartWizard = function() {
			if(jQuery('#smartwizard').length > 0)
			{
				$(document).ready(function(){
					// SmartWizard initialize
					$('#smartwizard').smartWizard(); 
				});
			}
		}
		var handleCustomFileInput = function() {
			$(".custom-file-input").on("change", function() {
				var fileName = $(this).val().split("\\").pop();
				$(this).siblings(".custom-file-label").addClass("selected").html(fileName);
			});
		}
		
		var vHeight = function(){
	        var ch = $(window).height() - 206;
	        $(".chatbox .msg_card_body").css('height',ch);
	    }
		
		var handleChatSidebar = function(){
			$('.chat-hamburger').on('click',function(){
				$('.chat-left-sidebar').toggleClass('show');
			})
		}
		
		var handleMenuPosition = function(){
			
			if(screenWidth > 1024){
				$(".metismenu  li").unbind().each(function (e) {
					if ($('ul', this).length > 0) {
						var elm = $('ul:first', this).css('display','block');
						
						var off = elm.offset();
						var l = off.left;
						var w = elm.width();
						var elm = $('ul:first', this).removeAttr('style');
						var docH = $("body").height();
						var docW = $("body").width();
						
						if(jQuery('html').hasClass('rtl')){
							var isEntirelyVisible = (l + w <= docW);	
						}else{
							var isEntirelyVisible = (l > 0)?true:false;	
						}
							
						if (!isEntirelyVisible) {
							$(this).find('ul:first').addClass('left');
						} else {
							$(this).find('ul:first').removeClass('left');
						}
					}
				});
			}
		}	

		var handleImageSelect = function(){

			const $_SELECT_PICKER = $('.image-select');
			$_SELECT_PICKER.find('option').each((idx, elem) => {
				const $OPTION = $(elem);
				const IMAGE_URL = $OPTION.attr('data-thumbnail');
				if (IMAGE_URL) {
					$OPTION.attr('data-content', "<img src='%i'/> %s".replace(/%i/, IMAGE_URL).replace(/%s/, $OPTION.text()))
				}
			});
			$_SELECT_PICKER.selectpicker();
		}

		var handleThemeMode = function(){
		
			jQuery('.dz-theme-mode').on('click', function(){
				jQuery(this).toggleClass('active');
				
				if(jQuery(this).hasClass('active')){
					jQuery('body').attr('data-theme-version','dark');
				}else{
					jQuery('body').attr('data-theme-version','light');
				}
			}); 		
		}

		var handleCkEditor = function(){
			
			if(jQuery('.W3cmsCkeditor').length > 0 && typeof enableCkeditor !== undefined && enableCkeditor == true)
			{
				let editorOptions = {
					removePlugins: 'cloudservices, easyimage, exportpdf',
					disallowedContent: 'script; *[on*]',

					autoParagraph : false,
					enterMode :CKEDITOR.ENTER_BR,
					fillEmptyBlocks : false,
					allowedContent: true,
					extraAllowedContent: '*(*)',
					toolbar: [
					    { items: [ 'Source', '-', 'SelectAll', 'TextColor', 'BGColor', 'Bold', 'Italic', 'Underline', 'Strike', 'Subscript', 'Superscript', '-', 'Undo', 'Redo', '-', 'Find', '-', 'NumberedList', 'BulletedList', '-', 'Outdent', 'Indent', '-' ] },
					    { items: [ , 'BidiLtr', 'BidiRtl', 'Link', 'Unlink', 'Table', 'HorizontalRule',  'SpecialChar' ] },
					    '/',
					    { name: 'styles', items: [ 'Styles', 'Format', 'Font', 'FontSize', '-', 'JustifyLeft', 'JustifyCenter', 'JustifyRight', 'JustifyBlock', '-', 'Blockquote', 'CreateDiv' ] },
					    { name: 'colors', items: [  ] },
					],
				};

				jQuery(".W3cmsCkeditor").each(function () {
					CKEDITOR.replace( $(this).attr('id'), editorOptions);
					if(jQuery('body[data-theme-version="dark"]').length > 0)
					{
						CKEDITOR.addCss('.cke_editable { background-color: #2c254a; color: #fff }');
					}
            	});
			}

		}

		var handleTwoFactorAuthForm = function() {
				
			jQuery('.TwoFactorAuthForm').on('click', function(){
				var rel = jQuery(this).attr('rel');
				jQuery('#recoveryCodeForm').addClass('d-none');
				jQuery('#secretCodeForm').removeClass('d-none');
				if(rel == 'recovery_form')
				{
					jQuery('#recoveryCodeForm').removeClass('d-none');
					jQuery('#secretCodeForm').addClass('d-none');
				}
			});

		}

		var handleImgOnChange = function() {

			$(".img-input-onchange").on('change',function() {
				var input = this;
				var url = $(this).val();
			    var ext = url.substring(url.lastIndexOf('.') + 1).toLowerCase();
			    if (input.files && input.files[0]) 
			     {
			        var reader = new FileReader();
			        reader.onload = function (e) {
	            		$(input).parents('.img-parent-box').find('.img-for-onchange').attr('src', e.target.result);
			        }
			       	reader.readAsDataURL(input.files[0]);
			    }
			});
		}

		var handleDateTimePicker = function() {

			if(jQuery('.datetimepicker').length > 0)
			{
				$('.datetimepicker').pickadate({
			        format: 'yyyy-mm-dd',
			    });
			}
		}

		/* ===============Permalink configuration page js start=============== */

		var handlePermalinks = function() {

			jQuery('.permalink_selection').on('change', function () {
				var permalink_selection = $(this).val();
				if(permalink_selection !== 'custom')
				{
					$('#permalink_structure').val(permalink_selection);
				}
			});

			jQuery('#permalink_structure').on('click', function () {
				$('#CustomeStructure').prop('checked', true);
			});

			jQuery('.permas_type').on('click', function () {
				var all_custom_structure = jQuery('#permalink_structure').val();
				var thisData = jQuery(this);
				var this_val = thisData.val();
				var permas_length = all_custom_structure.search(this_val);

				if((permas_length > -1) || thisData.hasClass('active'))
				{
					all_custom_structure = all_custom_structure.replace('/'+this_val, '');
					thisData.removeClass('active');
				} else 
				{
					all_custom_structure = all_custom_structure ? all_custom_structure + this_val+'/' : all_custom_structure + '/'+this_val+'/';
					thisData.addClass('active');
				}
				if(jQuery('button.active').length == 0)
				{
					all_custom_structure = '';
				}
				jQuery('#permalink_structure').val(all_custom_structure);
				$('#CustomeStructure').prop('checked', true);
			});

		}

		/* ================Permalink configuration page js end================ */

		/* ================User and role permissions page js start================ */
		var handleUserRolePermissions = function() {

			jQuery('.bulkActionRoleCheckbox').on('change', function () {

	    		var role_id = jQuery(this).data('role-id');
	    		var actionURL = jQuery(this).attr('rdx-link');
	    		var $this = jQuery(this);

	    		jQuery.ajax({
	                type: 'GET',
	                url: actionURL,
	                success : function(data)
	                {
	                    if(!data.status)
	                    {
	                        $this.prop('checked', $this.is(':checked') ? false : true);
	                    }
	                    else
	                    {
	                        jQuery('.permissionCheckbox_'+role_id).prop('checked', $this.is(':checked'));
	                    }
	                    alert(data.msg);

	                },

	                error : function(data)
	                {
	                    alert(JSON.stringify(data));
	                    alert('Sorry! There is some problem. please check function calling.')
	                }

	            });		
	    	});

	    	jQuery(document).on('change', '.RoleCheckbox', function () {

	            event.preventDefault();
	    		var actionURL = jQuery(this).attr('rdx-link');
	    		var $this = jQuery(this);

	    		jQuery.ajax({
	                type: 'GET',
	                url: actionURL,
	                success : function(data)
	                {
	                    if(!data.status)
	                    {
	                        $this.prop('checked', $this.is(':checked') ? false : true);
	                    }
	                    else
	                    {
	                        $this.prop('checked', $this.is(':checked'));
	                    }
	                    alert(data.msg);
	                },
	                error : function(data)
	                {
	                    alert(JSON.stringify(data));
	                    alert('Sorry! There is some problem. please check function calling.')
	                }
	            });		
	    	});



	        jQuery(document).on('change', '.UserCheckbox', function () {

	            event.preventDefault();
	            var user_id = jQuery(this).data('user-id');
	            var permission_id = jQuery(this).data('permission-id');
	            var actionURL = jQuery(this).attr('rdx-link');
	            var $this = jQuery(this);

	            jQuery.ajax({

	                type: 'GET',
	                url: actionURL,
	                success : function(data)
	                {
	                    if(!data.status)
	                    {
	                        $this.prop('checked', $this.is(':checked') ? false : true);
	                    }
	                    else
	                    {
	                        jQuery('#userCheckbox_'+user_id).prop('checked', $this.is(':checked'));
	                    }
	                    alert(data.msg);
	                },

	                error : function(data)
	                {
	                    alert(JSON.stringify(data));
	                    alert('Sorry! There is some problem. please check function calling.')
	                }

	            });     
	        });

	        jQuery('.deleteUserPermission').on('click', function () {

	            event.preventDefault();
	            if(!confirm('Are you sure you want to delete User Level permission?')) {
	                return false;
	            }

	            var user_id = jQuery(this).data('user-id');
	            var permission_id = jQuery(this).data('permission-id');
	            var actionURL = jQuery(this).attr('rdx-link');
	            var $this = jQuery(this);

	            jQuery.ajax({
	                type: 'GET',
	                url: actionURL,
	                success : function(data)
	                {
	                    if(data.status) {
	                        if(jQuery('#userCheckbox_'+user_id+'_'+permission_id).is(':checked')) {
	                            jQuery('#userCheckbox_'+user_id+'_'+permission_id).prop('checked', false);
	                        }
	                        jQuery('#userCheckbox_'+user_id+'_'+permission_id).parent().find('.deny-permission').removeClass('deny-permission');
	                        $this.remove();
	                    } else {
	                        alert(data.msg);
	                    }
	                },
	                error : function(data)
	                {
	                    alert(JSON.stringify(data));
	                    alert('Sorry! There is some problem. please check function calling.')
	                }

	            });     
	        });

	        jQuery('.RemoveUserPermission').on('change', function () {

	            event.preventDefault();
	            var user_id = jQuery(this).data('user-id');
	            var actionURL = jQuery(this).attr('rdx-link');
	            var $this = jQuery(this);

	            jQuery.ajax({
	                type: 'GET',
	                url: actionURL,
	                dataType: 'json',
	                success : function(data)
	                {
	                    if(!data.status)
	                    {
	                        $this.prop('checked', $this.is(':checked') ? false : true);
	                    }
	                    else
	                    {
	                        jQuery('.permissionCheckbox_'+user_id).prop('checked', $this.is(':checked'));
	                    }
	                    alert(data.msg);

	                },
	                error : function(data)
	                {
	                    alert(JSON.stringify(data));
	                    alert('Sorry! There is some problem. please check function calling.')
	                }

	            });     

	        });

	        jQuery(document).on("click", ".toggle-icon", function () {
	            jQuery(this).toggleClass('active');
	            jQuery('.support-menu').toggleClass('active');
	        });

	        jQuery(document).on("click", ".AssignRevokePermissions", function() {

	            event.preventDefault();
	            var permission_id = jQuery(this).data('permission-id');
	            var type = jQuery(this).data('type');
	            var actionURL = jQuery(this).attr('href');
	            var $this = jQuery(this);
	            
	            jQuery.ajax({
	                headers: {
	                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
	                },
	                type: 'POST',
	                url: actionURL,
	                data: {'permission_id':permission_id, 'type':type},
	                success : function(data)
	                {
	                    jQuery("#AssignRevokePermissionsModalBody").html(data);
	                    jQuery('#AssignRevokePermissionsModal').modal('show');

	                },
	                error : function(data)
	                {
	                    alert('Sorry! There is some problem. please check function calling.')
	                }
	            });

	        });

	        jQuery(document).on("change", "#RoleId", function() {

	            event.preventDefault();
	            var role_id = jQuery(this).val();
	            var actionURL = jQuery(this).attr('rdx-link');
	            var $this = jQuery(this);
	            
	            jQuery.ajax({
	                headers: {
	                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
	                },
	                type: 'POST',
	                url: actionURL,
	                data: {'role_id':role_id},
	                success : function(data)
	                {
	                    jQuery("#PermissionUserId").html(data);
	                    jQuery('#AssignRevokePermissionsModal').modal('show');

	                },
	                error : function(data)
	                {
	                    alert('Sorry! There is some problem. please check function calling.')
	                }
	            });

	        });

	        jQuery(document).on("change", "#PermissionUserId", function() {

	            event.preventDefault();
	                var user_id = jQuery(this).val();
	            
	            var permission_id = jQuery("#PermissionId").val();
	            var actionURL = jQuery(this).attr('rdx-link');
	            var $this = jQuery(this);
	            if (!user_id) {
	                return false;
	            }
	            jQuery.ajax({
	                headers: {
	                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
	                },
	                type: 'POST',
	                url: actionURL,
	                data: {'user_id':user_id, 'permission_id':permission_id},
	                success : function(data)
	                {
	                    jQuery("#PermissionActionBtn").html(data);
	                    jQuery('#AssignRevokePermissionsModal').modal('show');

	                },
	                error : function(data)
	                {
	                    alert('Sorry! There is some problem. please check function calling.')
	                }
	            });

	        });

		}
		/* ================User and role permissions page js end================ */

		var handleLogoutSystem = function() {

			jQuery('.LogOutBtn').on('click', function() {
				event.preventDefault();
				jQuery(this).closest('form').submit();
			});
		}

		var handleDisableImportBtn = function() {
			jQuery(document).on('click', '#importBtn',  function() {
                jQuery('#importBtn').addClass('disabled');
            });

            jQuery("#importBtn").on('click', function(){
            	jQuery(this).append(' <i class="fa fa-spinner fa-spin"></i>');
                jQuery(this).addClass('disabled');
            });
		}

		var handleReadingConfigs = function() {
			$('.ReadingPostBtn').on('change', function () {
				var rel = jQuery(this).attr('id');

				jQuery('#page-filters').addClass('d-none');
				if(rel == 'show_on_front_page')
				{
					jQuery('#page-filters').removeClass('d-none');
				}

			});
		}

		var handleToolsExport = function() {
			var form = $('#export-filters'),
			filters = form.find('.export-filters');
			filters.hide();
			form.find('input:radio').on( 'change', function() {
				filters.slideUp('fast');
				switch ( $(this).val() ) {
					case 'attachment': $('#attachment-filters').slideDown(); break;
					case 'posts': $('#post-filters').slideDown(); break;
					case 'pages': $('#page-filters').slideDown(); break;
				}
			});
		}

		var handleFrontendEditorIssue = function(){
			jQuery('i').empty();
		}

		var handleImportDemoData = function() {

			jQuery('.ImportDemo').on('click', function() {
				event.preventDefault();
				var rel = jQuery(this).attr('rel');
				jQuery('#DBFileUrl').val(rel);
				jQuery('#ImportDataForm').modal('show');
			});
		}

		var handlePopovers = function() {
			$('[data-bs-toggle="popover"]').popover({
				html: true,
				content: function(){
				  	return '<img src="https://ps.w.org/contact-form-7/assets/icon-256x256.png"><p>this is a content.</p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor.';
				}
			});
		}

		var handleZoomElementImg = function() {
			
			$('.el-img').on({
				mouseenter: function(e){
					var src = jQuery(this).attr('src');
					var img = '<img src="' + src + '">';
					jQuery(this).parent(".icon-lg").find('.zoom-img-container').html(img);
				},
				mousemove: function(e){
					var offset = jQuery(this).parent(".icon-lg").offset();
					var x = e.pageX - offset.left + 15;
					var y = e.pageY - offset.top ;

					jQuery(this).parent(".icon-lg").find('.zoom-img-container').css("top", y).css("left", x);
				},
				mouseleave: function(e){
					$('.zoom-img-container').empty();
				}
			});
		}

		var handleMakeSlug = function() {

			if(typeof makeSlugUrl == undefined)
			{
				return false;
			}

			var delayTime = 500;
			var searchTimer = null;

			$('.MakeSlug').on('keypress, blur, input', function () {
    			var thisData = jQuery(this);
				var rel = thisData.attr('rel');
				var value = thisData.val();
				if(value == '')
				{
					return false;
				}
				if(searchTimer) {
			        clearTimeout(searchTimer);
			    }
    			searchTimer = setTimeout(function () {

					jQuery.ajax({
		                headers: {
		                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
		                },
		                type: 'POST',
		                url: makeSlugUrl,
		                data: {'slug_text':value},
		                success : function(data)
		                {
		                    jQuery("#"+rel).val(data);

		                },
		                error : function(data)
		                {
		                    alert('Sorry! There is some problem. please check function calling.')
		                }
		            });
    			}, delayTime);

			});
		}

		var handleConfigDateTimeFormat = function() {

			jQuery('.ChangeDateFormat').on('change', function() {
				var dateFormat = jQuery(this).val();
				var date = jQuery(this).data('date');
				if ('custom' !== dateFormat)
					$( 'input[name="Site[custom_date_format]"' ).val(dateFormat);
					$( '.DateFormatContainer' ).text(date);
			});

			jQuery('.ChangeTimeFormat').on('change', function() {
				var timeFormat = jQuery(this).val();
				var time = jQuery(this).data('time');
				if ('custom' !== timeFormat)
					$( 'input[name="Site[custom_time_format]"' ).val(timeFormat);
					$( '.TimeFormatContainer' ).text(time);
			});

			jQuery('input[name="Site[custom_date_format]"], input[name="Site[custom_time_format]"]').on('input click', function() {
				var thisVal = jQuery(this);
				var url = thisVal.data('link');

				// Debounce the event callback while users are typing.
				clearTimeout( jQuery.data( this, 'date_timer' ) );
				jQuery( this ).data( 'date_timer', setTimeout( function() {
					if ( thisVal.val() ) {
						jQuery.ajax({
			                headers: {
			                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
			                },
			                type: 'POST',
			                url: url,
			                data: {'format': thisVal.val()},
			                success : function(data)
			                {

			                	if(thisVal.attr('name') == 'Site[custom_date_format]')
			                	{
			                		jQuery('.DateFormatContainer').text(data);
			                	}
			                	if(thisVal.attr('name') == 'Site[custom_time_format]')
			                	{
			                		jQuery('.TimeFormatContainer').text(data);
			                	}

			                },
			                error : function(data)
			                {
			                    alert('Sorry! There is some problem. please check function calling.')
			                }
			            });
					}
				}, 500 ) );
			} );

		}

		var handleNotificationJs = function() {

			jQuery("#DefaultPlaceholder").on("click", function() {
				CKEDITOR.instances['Placeholders'].setData(jQuery("#PlaceholderSec").text())
			});

			jQuery(".EnableNotificationBox").on('change', function() {

				if(jQuery('.'+jQuery(this).attr('rel')).hasClass('d-none'))
				{
					jQuery('.'+jQuery(this).attr('rel')).removeClass('d-none');	
				}
				else
				{
					jQuery('.'+jQuery(this).attr('rel')).addClass('d-none');
				}
				
			});

			jQuery('.All-Notification').on('change', function() {
				if(jQuery(this).is(':checked')) 
				{
					jQuery(this).parents('tr').find('.Notification').prop('disabled', false);
				} else 
				{
					jQuery(this).parents('tr').find('.Notification').prop('disabled', true);
				}
			});

			if(jQuery('.NotifyPlaceholderCkeditor').length > 0)
			{
				let editorOptions = {
					removePlugins: 'cloudservices, easyimage, exportpdf',
					disallowedContent: 'script; *[on*]',

					autoParagraph : false,
					enterMode :CKEDITOR.ENTER_BR,
					fillEmptyBlocks : false,
					allowedContent: true,
					extraAllowedContent: '*(*)',
					toolbar: [
					    { items: [ 'Bold', 'Italic', 'Underline', 'Strike' ] },
					],
				};

				CKEDITOR.replace( $('.NotifyPlaceholderCkeditor').attr('id'), editorOptions);
			}

		}

		var handleDeleteUserModal = function() {

			jQuery('.DeleteUser').on('click', function() {
				event.preventDefault();
				var url = jQuery(this).attr('href');
				var user_name = jQuery(this).data('user-name');

				$('#DeleteUserForm').attr('action', url);
				$('select[name="reassign_user"] option:contains("'+user_name+'")').remove();
				$('#UserName').text(user_name);
				jQuery('#DeleteUserModal').modal('show');
			});

			var deleteUserForm = $('#DeleteUserForm'),
			filters = deleteUserForm.find('.delete-filters');
			filters.hide();
			deleteUserForm.find('input:radio').on( 'change', function() {
				$('#DeleteUserForm button[type="submit"]').removeAttr('disabled');
				filters.slideUp();
				switch ( $(this).val() ) {
					case 'reassign': $('#reassign-selectbox').slideDown(); break;
				}
			});

		}

		var handleElemetsSortable = function() {

			if(jQuery( "#MagicEditorElementContainer" ).length > 0)
			{
				jQuery( "#MagicEditorElementContainer" ).sortable({
					handle: ".drag-handle",

					start: function(event, ui) {
			            var start_pos = ui.item.index();
			            ui.item.data('start_pos', start_pos);
			        },
			        update: function(event, ui)  {
			            var start_pos = ui.item.data('start_pos');
			            var last_pos = ui.item.index();
			            var editorContent = getEditorValue('PageContent').split('<%ME%>');
						var removedElement = editorContent.splice(start_pos, 1);
						editorContent.splice(last_pos, 0, removedElement);
			        	
			        	var elementData = editorContent.join('<%ME%>');
						setEditorValue('PageContent', elementData);
			        }
				});
			}

		}

		var handleDropzone = function() {

			if(jQuery( "#UploadFiles" ).length > 0)
			{
				var csrfToken = jQuery('meta[name="csrf-token"]').attr('content');
		        // set the dropzone container id
		        const id = "#UploadFiles";
		        // set the preview element template
		        var previewTemplate = jQuery(".dropzone-item").parent().html();
		        jQuery(".dropzone-item").remove();

		        var myDropzone = new Dropzone(id, { // Make the whole body a dropzone
		            headers: {
		                'X-CSRF-TOKEN': csrfToken
		            },
		            url: uploadFilesRoute, // Set the url for your upload script location
		            parallelUploads: 1,
		            maxFilesize: 300, // Maximum file size in MB
		            acceptedFiles: ".png,.jpg,.jpeg,.gif,.zip",
		            previewTemplate: previewTemplate,
		            previewsContainer: id + " .dropzone-items", // Define the container to display the previews
		            clickable: id + " .dropzone-select", // Define the element that should be used as click trigger to select files.
		            init: function () {

		                this.on("success", function (file, response) {
		                    jQuery('.UploadFilesList').append('<option value="'+response.file.full_name+'">'+ response.file.name+' ('+response.file.time+')' +'</option>');
		                });

		                this.on("error", function (file, errorMessage) {
		                    console.log(errorMessage); // Handle the upload error
		                });
		            }
		        });

		        myDropzone.on("addedfile", function (file) {
		            // Hookup the start button
		            jQuery('.dropzone-item').show();
		        });

		        // Hide the total progress bar when nothing"s uploading anymore
		        myDropzone.on("complete", function (progress) {
		            if(progress.xhr)
		            {
		                var response = JSON.parse(progress.xhr.response);
		                var filename = response.file.name+' ('+response.file.time+')';
		                jQuery('span[data-dz-name]:contains('+response.file.name+')').text(filename);
		            }
		            setTimeout(function () {
		                jQuery('.dz-complete .progress-bar').css({'opacity' : 0});
		                jQuery('.dz-complete .progress').css({'opacity' : 0});
		            }, 300);
		        });

		        // Hide the total progress bar when nothing"s uploading anymore
		        myDropzone.on("removedfile", function (file) {
		            var response = JSON.parse(file.xhr.response);
		            var name = response.file.path;
		            $.ajax({
		                headers: {
		                    'X-CSRF-TOKEN': csrfToken
		                },
		                type: 'POST',
		                url: removeFilesRoute,
		                data: {filename: name},
		                success: function (data){
		                    $('.UploadFilesList option').each(function() {
		                        if ( $(this).val() == response.file.full_name ) {
		                            $(this).remove();
		                        }
		                    });
		                    console.log(data.msg);
		                },
		                error: function(e) {
		                    console.log(e);
		                }
		            });
		        });
			}

		}

		var handleW3appsSearch = function() {

			var delayTime = 500;
			var searchTimer = null;

			$('#SearchApps').on('keypress, blur, input', function () {
				var value = jQuery(this).val();
				jQuery("#ThemeSection").empty();
				jQuery(".ThemeSectionSpinner").removeClass('d-none');
				if(value.trim() == '')
				{
					value = 'all_theme';
				}
				if(searchTimer) {
			        clearTimeout(searchTimer);
			    }
    			searchTimer = setTimeout(function () {

					jQuery.ajax({
		                headers: {
		                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
		                },
		                type: 'POST',
		                url: addThemeRoute,
		                data: {'search_apps':value},
		                success : function(data)
		                {
		                	if(data.error == false)
							{
								alert(data.msg);
								return false;
							}
						
		                    jQuery('#ThemeSection').html(data);
		                	jQuery(".ThemeSectionSpinner").addClass('d-none');

		                },
		                error : function(data)
		                {
		                    alert('Sorry! There is some problem. please check function calling.')
		                }
		            });
    			}, delayTime);

			});

		}

		var handleW3appPreviewModal = function() {

			jQuery(".ThemePreview").on("click", function(){
				var themeData = JSON.parse(jQuery(this).attr("theme-data"));
				jQuery("#theme-modal-title").text(themeData.title);
				jQuery("#modal-body-description").html(themeData.description);
				jQuery("#LastUpdated").html(themeData.updated_at);

				if(themeData.screenshots)
				{
					var tabPanel = '';
					var tabContent = '';
					jQuery.each(themeData.screenshots, function( index, value ) {
						var tabPanelClass = index == 0 ? ' show active' : '';
						var tabContentClass = index == 0 ? ' show' : '';
						tabPanel += '<div role="tabpanel" class="tab-pane fade'+tabPanelClass+'" id="image-'+index+'">' +
											'<img class="img-fluid border" src="'+value+'" alt="'+value+'" width="100%">'+
										'</div>';
						tabContent  +=   '<li role="presentation" class="mb-1'+tabContentClass+'">'+
												'<a href="#image-'+index+'" role="tab" data-bs-toggle="tab">'+
													'<img class="img-fluid border" src="'+value+'" alt="'+value+'" width="50">'+
												'</a>'+
											'</li>';
					});
					jQuery(".tab-content").html(tabPanel);
					jQuery(".slide-item-list").html(tabContent);
				}

				if(themeData.tags)
				{
					var tags = '';
					jQuery.each(themeData.tags, function( index, value ) {
						tags += '<span class="badge badge-success badge-sm m-1">'+value+'</span>';
					});
					jQuery("#TagsContent").html(tags);
				}

				jQuery('#basicModal').modal('show');
			});

		}

		var handleW3appInstallTheme = function() {

			if(typeof installThemeRoute == undefined)
			{
				return false;
			}
			jQuery(".InstallTheme").on("click", function(){
				event.preventDefault();
				var thisData = jQuery(this);
				thisData.text('Installing.....');
				jQuery.ajax({
	                headers: {
	                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
	                },
	                type: 'POST',
	                url: installThemeRoute,
	                data: { 'package': thisData.attr('href'), 'themename': thisData.attr('theme-name') },
	                success : function(data)
	                {
	                	if(data.error == false)
						{
							alert(data.msg);
							return false;
						}

	                	var activeThemeBtn = '<a href="'+data.active_theme+'" class="btn btn-xs btn-primary light w-100">Active</a>';
	                    thisData.after(activeThemeBtn);
	                	thisData.remove();

	                },
	                error : function(data)
	                {
	                    alert('Sorry! There is some problem. please check function calling.')
	                }
	            });
			});

		}

		var handleW3appUploadTheme = function() {

			jQuery("#UploadThemeBtn").on("click", function(){
				jQuery("#UploadThemeSec").toggleClass('d-none');
			});

			jQuery("#theme_zip").on("change", function(){
				jQuery("#install_theme").attr('disabled', true);
				if(jQuery(this).val())
				{
					jQuery("#install_theme").attr('disabled', false);
				}
			});

		}

		var handleLanguages = function() {

			jQuery('#language').on('change', function(){
				var files = jQuery('option:selected', this).attr('files');
				files = files ? JSON.parse(files) : '';
				var options = '';
				for(var i = 0; i < files.length; i++)
				{
					options += '<option value="'+files[i]+'">'+files[i]+'</option>';
				}
				jQuery('#file_name').html(options);
			});

			jQuery("#LanguageForm").on("submit", function(){
				event.preventDefault();
				var language = jQuery('#language').val();
				var file_name = jQuery('#file_name').val();
				jQuery.ajax({
	                headers: {
	                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
	                },
	                type: 'POST',
	                url: jQuery(this).attr('action'),
	                data: { 'language': language, 'file_name': file_name },
	                success : function(data)
	                {
	                	if(data.error == false)
						{
							alert(data.msg);
							return false;
						}

	                	jQuery("#language_hidden").val(language);
	                	jQuery("#file_name_hidden").val(file_name);
	                	jQuery("#LanguageData").html(data);

	                },
	                error : function(data)
	                {
	                    alert('Sorry! There is some problem. please check function calling.')
	                }
	            });
			});

			jQuery("#UpdateLanguageFile").on("submit", function(){
				event.preventDefault();

				if(!confirm('Are you sure?'))
				{
					return false;
				}
				
				var language_hidden = jQuery('#language_hidden').val();
				var file_name_hidden = jQuery('#file_name_hidden').val();
				jQuery.ajax({
	                headers: {
	                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
	                },
	                type: 'POST',
	                url: jQuery(this).attr('action'),
	                data: jQuery(this).serialize(),
	                success : function(data)
	                {
	                	if(data.error == false)
						{
							alert(data.msg);
							return false;
						}

	                	alert('File updated successfully.');

	                },
	                error : function(data)
	                {
	                    alert('Sorry! There is some problem. please check function calling.')
	                }
	            });
			});

		}

		
		/* Function ============ */
		return {
			init:function(){
				handleTheme();
				handleMetisMenu();
				handleAllChecked();
				handleNavigation();
				handleCurrentActive();
				handleMiniSidebar();
				handleMinHeight();
				handleDataAction();
				handleHeaderHight();
				handleDzScroll();
				handleMenuTabs();
				handleChatbox();
				handlePerfectScrollbar();
				handleBtnNumber();
				handleDzChatUser();
				handleDzFullScreen();
				handleshowPass();
				handleshowConfirmPass();
				heartBlast();
				handleDzLoadMore();
				handleLightgallery();
				handleSmartWizard();
				handleCustomFileInput();
				vHeight();
				handleChatSidebar();
				handleImageSelect();
				handleThemeMode();
				domoPanel();
				loginDetails();
				handleTwoFactorAuthForm();
				handleImgOnChange();
				handleDateTimePicker();
				handlePermalinks();
				handleUserRolePermissions();
				handleLogoutSystem();
				handleReadingConfigs();
				handleDisableImportBtn();
				handleCkEditor();
				handleImportDemoData();
				handleToolsExport();
				handlePopovers();
				handleFrontendEditorIssue();
				handleZoomElementImg();
				handleMakeSlug();
				handleConfigDateTimeFormat();
				handleNotificationJs();
				handleDeleteUserModal();
				handleElemetsSortable();
				handleDropzone();
				handleW3appsSearch();
				handleW3appPreviewModal();
				handleW3appInstallTheme();
				handleW3appUploadTheme();
				handleLanguages();
			},

			ajax:function(){
				handlePopovers();
				handleSelectPicker();
				handleZoomElementImg();
				handleW3appPreviewModal();
				handleW3appInstallTheme();
				// handleLanguages();
			},
			
			load:function(){
				handleTheme();
				handleSelectPicker();
				handleImageSelect();
			},
			
			resize:function(){
				vHeight();
			},
			
			handleMenuPosition:function(){
				handleMenuPosition();
			},
		}
		
	}();

	/* Document.ready Start */	
	jQuery(document).ready(function() {
		// Important for Magic Editor
		$(document).ajaxComplete(function(){
			W3cms.ajax();
		});
		W3cms.init();
		
	});
	/* Document.ready END */

	/* Window Load START */
	jQuery(window).on('load',function () {
		W3cms.load();
		setTimeout(function(){
				W3cms.handleMenuPosition();
		}, 1000);
		
	});
	/*  Window Load END */
	/* Window Resize START */
	jQuery(window).on('resize',function () {
		W3cms.resize();
		setTimeout(function(){
				W3cms.handleMenuPosition();
		}, 1000);
	});

	jQuery(document).ready(function() {
		if($("#dz_tree").length > 0)
		{
			$("#dz_tree").jstree({
		        "core": {
		            "themes": {
		                "responsive": false
		            }
		        },
		        "types": {
		            "default": {
		                "icon": "fa fa-folder"
		            },
		            "file": {
		                "icon": "fa fa-file-text"
		            }
		        },
		        "plugins": ["types"]
		    });
		}
	});

	/*  Window Resize END */
})(jQuery);