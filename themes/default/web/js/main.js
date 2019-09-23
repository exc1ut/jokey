$(document).ready(function(){
	

	$(".arrow_r").click(function() {
        $(this).next().toggle();
        if($(this).next().css('display') == 'block'){
            $(this).addClass('open');
		}else{
            $(this).removeClass('open');
		}
    });
	
	// Index slider
	$('.intro .slides').cycle({
		pager: '.intro .introNav',
		timeout: 6000,
		allowPagerClickBubble: true,
		pagerEvent: 'mouseover',
		pauseOnPagerHover: true,
		pagerAnchorBuilder: function(idx, slide) {
			return '<a href="' + introLinks[idx] + '" class="in' + (idx+1) + '"><span class="title">' + introTitles[idx] + '</span><span class="info">' + introInfos[idx] + '</span></a>';
		}
	});
	
	// Index tabs
	$('.about').tabs({
		event: "mouseover"
	});
	
	//Fancybox
	// $('.fancybox-thumb').fancybox({
	// 	prevEffect: 'none',
	// 	nextEffect: 'none',
	// 	padding: 0,
	// 	margin: 55,
	// 	helpers:{
	// 		title:{
	// 			type: 'outside'
	// 		},
	// 		overlay:{
	// 			opacity: 0.8,
	// 			css: {
	// 				'background-color': '#000'
	// 			}
	// 		},
	// 		thumbs:{
	// 			width: 80,
	// 			height: 80
	// 		}
	// 	},
	// 	tpl:{
	// 		error: '<p class="fancybox-error">Запрашиваемое изображение не может быть загружено.<br />Попробуйте позже.</p>',
	// 		closeBtn: '<div title="Закрыть" class="fancybox-item fancybox-close"></div>',
	// 		next: '<a title="Следующая фотография" class="fancybox-nav fancybox-next"><span></span></a>',
	// 		prev: '<a title="Предыдущая фотография" class="fancybox-nav fancybox-prev"><span></span></a>'
	// 	}
	// });
	
	// Scroll to map
	$('a.addressLink').click(function(){
		$(window).scrollTo($('#map'),800);
		return false;
	});
	
	// Filter
	$('.filterCols .moreLink').click(function(){
		$('.filterCols .hidden').slideToggle(200);
		$(this).parents('.filterCols').toggleClass('active');
		return false;
	});
	
	// Serie info
	$('.serieMore a').click(function(){
		$('.serieInfo .hidden').slideToggle(300);
		$(this).parents('.serieInfo').toggleClass('active');
		return false;
	});

	$('.descriptionMore a').click(function(){
		$('.serieInfo .desc-hidden').slideToggle(500);
		$(this).parents('.serieInfo').toggleClass('desc-active');
		return false;
	});

	// Product examples
	// $('a.examplesLink').click(function(){
	// 	$(this).next('.examples').toggle();
	// 	$(this).toggleClass('active');
	// 	return false;
	// });
	
	// Fixed products table head
	if($('.productsHead').length){
		var top = $('.productsHead').offset().top;
		$(window).scroll(function (event) {
			var y = $(this).scrollTop();
			if (y >= top) {
			  $('.productsHead .products').addClass('fixed');
			} else {
			  $('.productsHead .products').removeClass('fixed');
			}
		});
		$(window).scroll();
	};
	
	if($('#cf-form').length > 0)
	{
		
		$('#contact_message, #contact_name, #contact_email').live('keyup', function(){
			var is_err = false;
			if (!checkField('#contact_name', 'Заполните поле "Имя", пожалуйста!', 'input')) is_err = true;
			if (!checkField('#contact_email', 'Заполните поле "Email", пожалуйста!', 'email')) is_err = true;
			if (!checkField('#contact_message', 'Заполните поле "Сообщение", пожалуйста!', 'input')) is_err = true;
			if (!is_err) { 
				$('.button').children().removeAttr('disabled');
				$('.button').children().removeClass('disabled');
			} else {
				$('.button').children().attr('disabled', 'disabled');
				$('.button').children().addClass('disabled');
			}
		});
		$('#contact_message, #contact_name, #contact_email').live('change', function(){
			var is_err = false;
			if (!checkField('#contact_name', 'Заполните поле "Имя", пожалуйста!', 'input')) is_err = true;
			if (!checkField('#contact_email', 'Заполните поле "Email", пожалуйста!', 'email')) is_err = true;
			if (!checkField('#contact_message', 'Заполните поле "Сообщение", пожалуйста!', 'input')) is_err = true;
			if (!is_err) { 
				$('.button').children().removeAttr('disabled');
				$('.button').children().removeClass('disabled');
			} else {
				$('.button').children().attr('disabled', 'disabled');
				$('.button').children().addClass('disabled');
			}
		});
		
		var $contact_error = $('.error');
		var err_message = '';

		$('#cf-form').submit(function(){
			$contact_error.html('').hide();
			err_message = '';
			
			var is_err = false;
			if (!checkField('#contact_name', 'Заполните поле "Имя", пожалуйста!', 'input')) is_err = true;
			if (!checkField('#contact_email', 'Заполните поле "Email", пожалуйста!', 'email')) is_err = true;
			if (!checkField('#contact_message', 'Заполните поле "Сообщение", пожалуйста!', 'input')) is_err = true;

			if (!is_err) return true;
			else {
				$contact_error.html(err_message).show();
				return false;
			}
		});

		var checkField = function($id, $message, $type){
			$field = $($id);
			
			if($type == 'email'){
				$result = checkMail($field.val());
			}else{
				$result = ($field.val() != '');
			}

			if($result){
				$field.removeClass('error');
			}else{
				//$contact_error.html($message).show();
				err_message += '<p>' + $message + '</p>';
				$field.addClass('error');
			}

			return $result;
		};

		var checkMail = function(email){
			var pat=/^[\w-+\.]+@([\w-]+\.)+[\w-]{2,}$/i;
			if(pat.test(email)) return true;
				else return false;
		};
	}
	
	// Search
	$(".sort").live('click', function(){
		
		$(".sort").removeClass('up');
		$(".sort").removeClass('down');
		
		if ($('#sort_fld').val() == $(this).attr('rel')) {
			if ($('#sort_direction').val() == 'ASC') {
				$('#sort_direction').val('DESC');
				$(this).addClass('down');
			} else {
				$('#sort_direction').val('ASC');
				$(this).addClass('up');
			}
		} else {
			$('#sort_fld').val($(this).attr('rel'));
			$('#sort_direction').val('ASC');
			$(this).addClass('up');
		}
		searchData();
		return false;
	});
	
	$('.clearLink').live('click', function(){
		$(".sort").removeClass('up');
		$(".sort").removeClass('down');
		$('#sort_fld').val('');
		$('#sort_direction').val('ASC');

		$(".search_fld").each(function(){
			$(this).val('');
		});
		
		$('#shape_1, #shape_2, #shape_3, #shape_4').removeClass('enabled');
		$('#industry_1, #industry_2, #industry_3, #industry_4').removeClass('enabled');
		$('#packaging_1, #packaging_2, #packaging_3').removeClass('enabled');
		
		
		searchData();
		$('.filterClear').hide();
		return false;
	});
	
	$('.search_fld').live('keyup', function(){
		if(searchData.timeout){
			clearTimeout(searchData.timeout);
		}
		searchData.timeout = setTimeout(searchData, 500);
	});
	
	$('#shape_1, #shape_2, #shape_3, #shape_4').live('click', function(){
		if ($(this).attr('class') == 'enabled') $(this).removeClass('enabled');
		else $(this).addClass('enabled');
		
		searchData();
		return false;
	});
	$('#industry_1, #industry_2, #industry_3, #industry_4').live('click', function(){
		if ($(this).attr('class') == 'enabled') $(this).removeClass('enabled');
		else $(this).addClass('enabled');
		
		searchData();
		return false;
	});
	$('#packaging_1, #packaging_2, #packaging_3').live('click', function(){
		if ($(this).attr('class') == 'enabled') $(this).removeClass('enabled');
		else $(this).addClass('enabled');
		
		searchData();
		return false;
	});
	
	function searchData() {
		$('.filterClear').show();
		$('#products_list').fadeOut(300, function(){
			if ($('#tpl').val() == 'products_list') {
				var a1 = ($('#sort_fld').val() != '')? $('#sort_fld').val() : 'no';
				var a2 = ($('#sort_direction').val() != '')? $('#sort_direction').val() : 'no';
				$('#products_list').fadeIn(600);
				$('#products_list').html('').load('/'+$('#doc_url').val()+'data/'+a1+'/'+a2+'/tpl-'+$('#tpl').val()+'/', function(){});
			} else {
				var pids = '';
				var iids = '';
				var packids = '';
				$('.enabled').each(function(){
					if ($(this).attr('rel') == 'shape') {
						if (pids != '') pids += ',';
						pids += $(this).attr('id').replace('shape_', '');
					}
					if ($(this).attr('rel') == 'industry') {
						if (iids != '') iids += ',';
						iids += $(this).attr('id').replace('industry_', '');
					}
					if ($(this).attr('rel') == 'packaging') {
						if (packids != '') packids += ',';
						packids += $(this).attr('id').replace('packaging_', '');
					}
				});
				var a0 = ($('#sort_fld').val() != '')? $('#sort_fld').val() : 'no';
				var a1 = ($('#sort_direction').val() != '')? $('#sort_direction').val() : 'no';
				var a2 = ($('#search_min_capacity').val() != '')? $('#search_min_capacity').val() : 'no';
				var a3 = ($('#search_max_capacity').val() != '')? $('#search_max_capacity').val() : 'no';
				var a4 = (pids != '')? pids : 'no';
				var a5 = (iids != '')? iids : 'no';
				var a6 = (packids != '')? packids : 'no';
				$('#products_list').fadeIn(600);
				$('#products_list').html('').load('/products/data/'+a0+'/'+a1+'/'+a2+'/'+a3+'/'+a4+'/'+a5+'/'+a6+'/tpl-'+$('#tpl').val()+'/', function(){});
			}
			return false;
		});
	};
	$(".load_work").live('click', function(){
		var id = $(this).attr('rel');
		$('#works_area').html('').load('/competitions/data/'+id+'/tpl-competition_work/', function(){
			initSocialWork(id);
		});
		return false;
	});
	
	jQuery_3_3_1('.product-slider-image').on('click', function(){
		jQuery_3_3_1('#mainPhoto').attr('src', jQuery_3_3_1(this).find('img').attr('rel'));
		jQuery_3_3_1('.product-slider-image.current').removeClass('current');
		jQuery_3_3_1(this).addClass('current');
	});
	
	$('#region_selection').live('change', function(){
		$.post("/plugins/ajax/regions.php", {
			id: $(this).val()
		}).done(function(data) {
			$('.dealer_phone').replaceWith("<div class='dealer_phone'> Телефон для связи: "+data+"</div>");
		});
	});

	jQuery_3_3_1(".thumbs.owl-carousel").owlCarousel({
		items: 3,
		nav: true,
		navText: ['',''],
		dots: false
	});

	(function($){
		$('[data-overlay]').on('click', function(){
			if ($(this).attr('data-overlay') == 'active') {
				$('[data-modal="active"]').attr('data-modal', 'closed');
				$(this).attr('data-overlay', 'closed');
			}
		});
	
		$('[data-modal-close]').on('click', function(){
			$('[data-modal="active"]').attr('data-modal', 'closed');
			$('[data-overlay]').attr('data-overlay', 'closed');
		})
	
		$('[data-modal-open]').on('click', function(e){
			e.preventDefault();
			$('[data-overlay]').attr('data-overlay', 'active');
			$('[data-modal-id="' + $(this).attr('data-modal-open') + '"]').attr('data-modal', 'active');
		})
	})(jQuery_3_3_1);
	

});

function openTab(evt, name) {
    var i, tabcontent, tablinks;
    tabcontent = document.getElementsByClassName("tabcontent");
    for (i = 0; i < tabcontent.length; i++) {
        tabcontent[i].style.display = "none";
    }
    tablinks = document.getElementsByClassName("tablinks");
    for (i = 0; i < tablinks.length; i++) {
        tablinks[i].className = tablinks[i].className.replace(" active", "");
    }
    document.getElementById(name).style.display = "block";
    evt.currentTarget.className += " active";
}

//call owlCarousel and fancybox

$(document).ready(function(){
	jQuery_3_3_1("#decorate-slider").owlCarousel({
		baseClass : "owl-carousel",
		theme : "owl-theme",
		margin: 10,
		nav:true,
		navText:false,
		smartSpeed: 1000
	});

	jQuery_3_3_1(".row-owl-slider").attr('rel', 'gallery').fancybox({
	 
	});
});


