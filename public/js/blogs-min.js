!function(e){"use strict";var r=jQuery("#customFieldContainer .Newfild").length,t=r=parseInt(r,10);function o(){jQuery(".CustomFieldRemoveButton").on("click",(function(){var r=jQuery(this).attr("rel");""!=r&&void 0!==r?(url=baseUrl+"admin/blog/blogs/ajax_delete/"+r,e.ajax({url:url,type:"POST",dataType:"json",success:function(e){jQuery(".swaprow_"+r).css("background-color","red").fadeOut("slow",(function(){jQuery(this).remove()}))}})):jQuery(this).closest(".xrow").css("background-color","red").fadeOut("slow",(function(){jQuery(this).remove()})),0==jQuery("#AppendContainer .row").length&&jQuery("#customFieldContainer").hide("slow").remove()}))}t=r+1,o(),jQuery("#AddCustomField").on("click",(function(){t+=1;var e=parseInt(jQuery("#last_cf_num").val()),a=jQuery("#BlogMetaName").val(),n=jQuery("#BlogMetaValue").val();if(""===jQuery.trim(a)&&jQuery.trim(""===n))alert("Please fill these fields.");else{r+=1,t=e>0?e+1:t;var l='<div id="customFieldContainer"></div>';jQuery("#AppendContainer").append(l);var u='<div class="row xrow pt-3 mb-2 bg-light "> <div class="col-md-6 form-group"> <label for="BlogMetaName_'+t+'">Title</label> <input type="text" name="data[BlogMeta]['+t+'][title]" class="form-control" id="BlogMetaName_'+t+'" value="'+a+'"> </div> <div class="col-md-6 form-group"> <label for="">Value</label> <textarea name="data[BlogMeta]['+t+'][value]"" id="BlogMetaValue_'+t+'" class="form-control" rows="5">'+n+'</textarea> </div> <div class="col-md-12 form-group"> <button class="btn btn-danger btn-sm CustomFieldRemoveButton" type="button">Delete</button> </div> </div>';jQuery("#customFieldContainer").css("background-color","green").fadeIn("slow",(function(){jQuery("#customFieldContainer").append(u),jQuery("#customFieldContainer").delay(800).fadeIn(400).removeAttr("style")})),jQuery("#BlogMetaName").val(""),jQuery("#BlogMetaValue").val(""),jQuery("#last_cf_num").val(t)}o()})),jQuery(".allowField").on("click",(function(){var e=jQuery(this).attr("rel");if(1==jQuery(this).prop("checked")){jQuery(".X"+e).removeClass("d-none");var r=1}else r=0,jQuery(".X"+e).addClass("d-none");var t=new Date;t.setDate(t.getDate()+30),document.cookie="isCheck_"+e+"="+r+"; expires="+t.toGMTString()+"path=/"})),function(){if("undefined"==typeof screenOptionArray)return!1;var e=JSON.parse(screenOptionArray);jQuery.each(e,(function(e,r){jQuery.each(r,(function(r,t){var o=function(e){for(var r=e+"=",t=decodeURIComponent(document.cookie).split(";"),o=0;o<t.length;o++){for(var a=t[o];" "==a.charAt(0);)a=a.substring(1);if(0==a.indexOf(r))return a.substring(r.length,a.length)}return""}("isCheck_"+e);1==(o=parseInt(o,10))?(jQuery(".X"+e).removeClass("d-none"),jQuery(".Allow"+e).prop("checked",!0)):0==o&&(jQuery(".X"+e).addClass("d-none"),jQuery(".Allow"+e).prop("checked",!1))}))}))}(),jQuery(".editPermalinkContainer").hide(),jQuery(".editPermalink").on("click",(function(){var e=jQuery(".permalinkSlugSpan").text();jQuery(".permalinkSlugSpan").hide("slow"),jQuery(".editPermalink").hide("slow"),jQuery("#BlogEditSlug").val(e),jQuery(".editPermalinkContainer").show("slow")})),jQuery(".editPermalinkOkButton").on("click",(function(){var r=jQuery("#BlogEditSlug").val();e.ajax({headers:{"X-CSRF-TOKEN":e('meta[name="csrf-token"]').attr("content")},url:makeSlugUrl,type:"POST",data:{slug_text:r},dataType:"html",success:function(e){jQuery(".permalinkSlugSpan").text(e),jQuery("#slug").val(e),jQuery(".editPermalinkContainer").hide("slow"),jQuery(".permalinkSlugSpan").show("slow"),jQuery(".editPermalink").show("slow")}})})),jQuery(".editPermalinkCancelButton").on("click",(function(){jQuery(".editPermalinkContainer").hide("slow"),jQuery(".permalinkSlugSpan").show("slow"),jQuery(".editPermalink").show("slow")})),"undefined"!=typeof blogCategoryIds&&function(e){if(""!=jQuery.trim(e)){var r=JSON.parse(e);jQuery.each(r,(function(e,r){jQuery(".blog_categories").each((function(){jQuery(this).val()==r&&jQuery(this).prop("checked",!0)}))}))}}(blogCategoryIds),jQuery(".newCategoryDiv").hide(),jQuery(".addNewBlogCategorylink").on("click",(function(){jQuery(".newCategoryDiv").toggle("slow")})),jQuery(".addNewBlogCategoryBtn").on("click",(function(){var r=jQuery(".newCategoryField").val(),t=jQuery(".CategoryParentId").val(),o=jQuery(".rdx-link").val();""!=r&&""!=o&&e.ajax({headers:{"X-CSRF-TOKEN":e('meta[name="csrf-token"]').attr("content")},url:o,type:"POST",data:{title:r,parent_id:t},dataType:"html",success:function(e){jQuery(".BlogCategory"+t).length>0?jQuery(".BlogCategory"+t).after().append(e):jQuery(".appendCategory  ul:first").append(e),setTimeout((function(){jQuery(".newCategoryField").val(""),jQuery(".CatNotExit").remove()}),1e3)}})})),jQuery("#BlogTitle").slug({hide:!1}),jQuery(document).on("change","#ContentVisibility",(function(){"PP"==jQuery(this).val()?(jQuery("#PublicPasswordTextbox").slideDown("slow").removeClass("d-none"),jQuery("#ContentPassword").focus()):(jQuery("#PublicPasswordTextbox").slideUp("slow",(function(){jQuery("#PublicPasswordTextbox").addClass("d-none")})),jQuery("#PublicPasswordTextbox").val(" "))}))}(jQuery);