var CryptoZone=function(){siteUrl="";var e=$(window).width(),t=function(){var t=0,a=0;$(".header .sticky-header").removeClass("is-fixed"),$(".header").removeAttr("style"),jQuery(".header .top-bar").length>0&&e>991&&(t=parseInt($(".header .top-bar").outerHeight())),jQuery(".header").length>0&&(a=0==(a=parseInt($(".header").height()))?parseInt($(".header .main-bar").outerHeight()):a);var r=a+t;jQuery(".header").css("height",r)},a=function(){"use strict";jQuery(".dzload").each((function(){var e=siteUrl+$(this).attr("dzsrc");jQuery(this).hide((function(){jQuery(this).load(e,(function(){jQuery(this).fadeIn("slow")}))}))})),e<=991&&jQuery(".navbar-nav > li > a, .sub-menu > li > a").unbind().on("click",(function(e){jQuery(this).parent().hasClass("open")?jQuery(this).parent().removeClass("open"):(jQuery(this).parent().parent().find("li").removeClass("open"),jQuery(this).parent().addClass("open"))}))};return{init:function(){var e;jQuery(".box-hover").on("mouseenter",(function(){jQuery(this).parent().parent().find(".box-hover").removeClass("active"),jQuery(this).addClass("active")})),a(),function(){if(jQuery(".image-select").length>0){const e=$(".image-select");e.find("option").each(((e,t)=>{const a=$(t),r=a.attr("data-thumbnail");r&&a.attr("data-content","<img src='%i'/> %s".replace(/%i/,r).replace(/%s/,a.text()))})),e.selectpicker()}}(),function(){"use strict";jQuery("button.scroltop").on("click",(function(){return jQuery("html, body").animate({scrollTop:0},1e3),!1})),jQuery(window).bind("scroll",(function(){jQuery(window).scrollTop()>900?jQuery("button.scroltop").fadeIn(1e3):jQuery("button.scroltop").fadeOut(1e3)}))}(),function(){"use strict";jQuery(window).on("scroll",(function(){if(jQuery(".sticky-header").length>0){var e=jQuery(".sticky-header");$(window).scrollTop()>e.offset().top?e.addClass("is-fixed"):e.removeClass("is-fixed")}}))}(),jQuery(".default-select").length>0&&jQuery(".default-select").selectpicker(),function(){for(var e=window.location,t=$("ul.navbar a").filter((function(){return this.href==e})).addClass("active").parent().addClass("active");t.is("li");)t=t.parent().addClass("show").parent("li").addClass("active")}(),$(".wow").length>0&&new WOW({boxClass:"wow",animateClass:"animated",offset:0,mobile:!0}).init(),function(){"use strict";jQuery(".mfp-gallery").length>0&&jQuery(".mfp-gallery").magnificPopup({delegate:".mfp-link",type:"image",tLoading:"Loading image #%curr%...",mainClass:"mfp-img-mobile",gallery:{enabled:!0,navigateByImgClick:!0,preload:[0,1]},image:{tError:'<a href="%url%">The image #%curr%</a> could not be loaded.',titleSrc:function(e){return e.el.attr("title")+"<small></small>"}}}),jQuery(".mfp-video").length>0&&jQuery(".mfp-video").magnificPopup({type:"iframe",iframe:{markup:'<div class="mfp-iframe-scaler"><div class="mfp-close"></div><iframe class="mfp-iframe" frameborder="0" allowfullscreen></iframe><div class="mfp-title">Some caption</div></div>'},callbacks:{markupParse:function(e,t,a){t.title=a.el.attr("title")}}}),jQuery(".popup-youtube, .popup-vimeo, .popup-gmaps").length>0&&$(".popup-youtube, .popup-vimeo, .popup-gmaps").magnificPopup({disableOn:700,type:"iframe",mainClass:"mfp-fade",removalDelay:160,preloader:!1,fixedContentPos:!1})}(),jQuery(".dz-form").length&&($("input, textarea").focus((function(){$(this).parents(".input-area").addClass("focused")})),$("input, textarea").blur((function(){""==$(this).val()?($(this).removeClass("filled"),$(this).parents(".input-area").removeClass("focused")):$(this).addClass("filled")}))),t(),jQuery(".w3-comment-reply").on("click",(function(){event.preventDefault();var e=$(this).data("commentid"),t=($(this).data("postid"),$(this).data("replyto")),a=$(this).parents(".comment .comment-body:first");$("#comment_parent").val(e),$("#commentform").trigger("reset"),$("#cancel-comment-reply").removeClass("d-none"),$("#reply-title").html(t),$("#ReplyFormContainer").insertAfter(a)})),jQuery("#cancel-comment-reply").on("click",(function(){event.preventDefault(),$("#comment_parent").val(0),$("#reply-title").empty(),$("#cancel-comment-reply").addClass("d-none"),$("#ReplyFormContainer").appendTo("#comments-div")})),e=2,jQuery(".el-ajax-load-more").on("click",(function(){var t=baseUrl+"/admin/magic_editors/ajax_load_more",a=jQuery(this).data("order"),r=jQuery(this).data("orderby"),n=jQuery(this).data("no-of-posts"),i=jQuery(this).data("post_with_images"),o=jQuery(this).data("post_category_ids"),s=jQuery(this).data("ajax-container"),l=jQuery(this).data("ajax-view"),u=jQuery(this),c={};c.page=e,null!=a&&(c.order=a),null!=r&&(c.orderby=r),null!=l&&(c.ajax_view=l),null!=n&&(c.no_of_posts=n),null!=i&&(c.post_with_images=i),null!=o&&(c.post_category_ids=o),jQuery.ajax({headers:{"X-CSRF-TOKEN":$('meta[name="csrf-token"]').attr("content")},type:"Post",url:t,data:c,success:function(t){t.html?(jQuery("#"+s).append(t.html),t.has_more_pages?e++:($(u).text("No More Posts"),$(u).prop("disabled",!0).addClass("disabled"))):alert("Failed to load more posts.")}})}))},load:function(){},resize:function(){e=$(window).width(),a(),setTimeout((function(){t()}),500)}}}();jQuery(document).ready((function(){"use strict";CryptoZone.init(),jQuery(".navicon").on("click",(function(){$(this).toggleClass("open")}))})),jQuery(window).on("load",(function(){"use strict";CryptoZone.load(),setTimeout((function(){jQuery("#loader").fadeOut()}),1e3)})),jQuery(window).on("resize",(function(){"use strict";CryptoZone.resize()}));