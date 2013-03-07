// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

// Declare any global variables


// rails auth token enabled in jquery
$(document).ajaxSend(function(event, request, settings) {
  if (settings.type == 'GET' || settings.type == 'get' || typeof(AUTH_TOKEN) == "undefined") return;
  // settings.data is a serialized string like "foo=bar&baz=boink" (or null)
  settings.data = settings.data || "";
  settings.data += (settings.data ? "&" : "") + "authenticity_token=" + encodeURIComponent(AUTH_TOKEN);
});

jQuery.ajaxSetup({ 
  'beforeSend': function(xhr) {xhr.setRequestHeader("Accept", "text/javascript")},
	cache : false
})

$.ajaxSettings.accepts.html = $.ajaxSettings.accepts.script;

jQuery.fn.submitWithAjax = function() {
  this.submit(function() {
    $.post(this.action, $(this).serialize(), null, "script");
    return false;
  })
  return this;
};

$(document).ready( function() {
	
	// Ajaxify links by method
	$('a.ajax-delete').livequery('click', function(event) {
	        if ( confirm("Are you sure you want to delete this?") ) {
	            $.post(
	                $(this).attr('href'),
	                { '_method': 'delete' },
	                null,
	                "script" 
	            );
			}
	       event.preventDefault();
	});
	
	// Make Admin Toolbar draggable
	$('#admin-toolbar-container').draggable({ handle: '.admin_drag_handle'});
	
	// Show admin controls on menu item hover
	$('.admin-menu li').hover( 
		function() {
			$('.menu_item_admin_controls',this).show();
		},
		function(){
			$('.menu_item_admin_controls',this).hide();
		}
	);

	$('.footer-admin-menu').hover( 
		function() {
			$('.footer_admin',this).show();
		},
		function(){
			$('.footer_admin',this).hide();
		}
	);

	$('.service-admin-menu li').hover( 
		function() {
			$('.service_admin',this).show();
		},
		function(){
			$('.service_admin',this).hide();
		}
	);

	$('#tabs div.service-admin-content').hover( 
		function() {
			$('.service_content',this).show();
		},
		function(){
			$('.service_content',this).hide();
		}
	);
	
	// Make category menu sortable (handle only present when admin is logged in)
	$('#categorymenu').sortable({
		handle: '.category_menu_drag_handle',
		items: 'li',
		axis: 'y',
		update: function() {
			$.post('/categories/order', $(this).sortable('serialize') +'&'+'authenticity_token='+ encodeURIComponent(AUTH_TOKEN));
		} 
	});

	$('.service-admin-menu').sortable({
		handle: '.service_menu_drag_handle',
		items: 'li',
		axis: 'y',
		update: function() {
			$.post('/services/order', $(this).sortable('serialize') +'&'+'authenticity_token='+ encodeURIComponent(AUTH_TOKEN));
		} 
	});
	
	// Photo scroll for home page
	var home_prev = $('.homepage .prev_photo');
	var home_next = $('.homepage .next_photo');
	var see_more = $('.homepage #see_more');
	var take_me_back = $('.homepage #take_me_back');
	$('.homepage #photos-wrapper').serialScroll({
		axis: 'x',
		duration: 250,
		easing: 'easeOutQuad',
		step: 1,
		cycle: true,
		prev: home_prev,
		next: home_next,
		navigation: '#photos_menu li a',
		items: 'div',
		onBefore: function(e, elem, pane, items, pos ) {
			// Change back image
			if( pos == items.length-1 ) {
				home_next.hide();
				home_prev.hide();
				see_more.hide();
				take_me_back.show();
			} 
			else if ( pos == 0) {
				home_next.show();
				home_prev.hide();
				see_more.show();
				take_me_back.hide();
			}
			else {
				home_next.show();
				home_prev.show();
				see_more.show();
				take_me_back.hide();
			}
		}
	});
	
	// Photo scroll for category pages
	var cat_prev = $('.category-page .prev_photo');
	var cat_next = $('.category-page .next_photo');
	// var go_back = $('.category-page #go_back');

	$('.category-page #photos-wrapper').serialScroll({
		axis: 'x',
		duration: 250,
		easing: 'easeOutQuad',
		step: 1,
		cycle: true,
		prev: cat_prev,
		next: cat_next,
		navigation: '#photos_menu li a',
		items: 'div',
		onBefore: function(e, elem, pane, items, pos) {
			// Assign 'active' class name to current image
			$('#photos_menu li a').each( function(n, a) {
				$(a).removeClass('active').addClass('inactive');
			})
			$('#photos_menu #' + elem.id + ' a').removeClass('inactive').addClass('active');
			
			// Change back image
			if( pos == items.length-1 ) {
				cat_next.hide();
				cat_prev.show();
				// go_back.show();
			} 
			else if ( pos == 0) {
				cat_next.show();
				cat_prev.hide();
				// go_back.hide()
			}
			else {
				cat_next.show();
				cat_prev.show();
				// go_back.hide();
			}
		}
	});
	
	// Tooltips in photos menu
	
	$.fn.ezpz_tooltip.positions.aboveFollow = function(contentInfo, mouseX, mouseY, offset, targetInfo) {
			contentInfo['top'] = mouseY - offset - contentInfo['height'] - targetInfo['height'];
			contentInfo['left'] = mouseX - contentInfo['width']/2;

			return contentInfo;
		};
	
	$('.tooltip-target').ezpz_tooltip({
		contentPosition: 'aboveFollow',	
		offset: 145
	});
	
	// Tabs on Services page
	$('#tabs').tabs({
		select: function() {
			$('#scroll-content').scrollTo(0,0);
		}
	});
	
	
	// Scroll on Services page
	
	$('#scroll-controls #scroll_down').mousedown( function() {
			percent_scrolled = ($('#scroll-content-wrapper').height()-($('#scroll-content').scrollTop()+1))/$('#scroll-content-wrapper').height();
			$('#scroll-content').scrollTo('max', 6000*percent_scrolled+300, {easing: false});
		}).mouseup( function() {
			$('#scroll-content').stop();
		}
	);

	$('#scroll-controls #scroll_up').mousedown( function() {
			percent_scrolled = ($('#scroll-content').scrollTop()+1)/$('#scroll-content-wrapper').height();
			$('#scroll-content').scrollTo(0, 6000*percent_scrolled+300, {easing: false});
		}).mouseup( function() {
			$('#scroll-content').stop();
		}
	);
	
	$('#scroll-content').scrollTo(0,0);

	/*$('#scroll-controls #scroll_down').mousedown( function() {
			percent_scrolled = ($('#scroll-content-wrapper').height()-($('#scroll-content').scrollTop()+1))/$('#scroll-content-wrapper').height();
			$('#scroll-content').scrollTo('max', 24000*percent_scrolled+600, {easing: false});
		}).mouseup( function() {
			$('#scroll-content').stop();
		}
	);

	$('#scroll-controls #scroll_up').mousedown( function() {
			percent_scrolled = ($('#scroll-content').scrollTop()+1)/$('#scroll-content-wrapper').height();
			$('#scroll-content').scrollTo(0, 24000*percent_scrolled+600, {easing: false});
		}).mouseup( function() {
			$('#scroll-content').stop();
		}
	);*/
	
	$('*').mouseup( function() {
			$('#scroll-content').stop();
	})
	
	// Contact form submit
	$("#new_contact").livequery( function() {
		$(this).submitWithAjax()
		});
	

});

function deleteService(url){
	var answer = confirm("Are you sure you want to delete this?")
	if (answer){
				$.ajax({
			      async:true, 
			      data: {"_method":"delete"},
			      dataType:'script', 
			      type:'post',
			      url: url
				});
	}
}
