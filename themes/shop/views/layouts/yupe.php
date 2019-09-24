<!DOCTYPE html>
<html lang="<?= Yii::app()->getLanguage(); ?>">

<head>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/fancybox/3.5.7/jquery.fancybox.min.js"></script>
<script type="text/javascript">
	var jQuery_3_3_1 = $.noConflict(true);
	</script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<?php


	Yii::app()->getClientScript()->registerCssFile($this->mainAssets . '/css/style.css');
	Yii::app()->getClientScript()->registerCssFile($this->mainAssets . '/css/jquery.fancybox.min.css');
	Yii::app()->getClientScript()->registerCssFile($this->mainAssets . '/styles/common.css');
	?>

	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css">
	<title><?= $this->title ?></title>
	<!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" integrity="sha384-HSMxcRTRxnN+Bdg0JdbxYKrThecOKuH5zCYotlSAcp1+c8xmyTe9GYg1l9a69psu" crossorigin="anonymous">

	<!-- Optional theme -->
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap-theme.min.css" integrity="sha384-6pzBo3FDv/PJ8r2KRkGHifhEocL+1X2rVCTTkUfGk7/0pbek5mMa1upzvWbrUbOZ" crossorigin="anonymous">

	<!-- Latest compiled and minified JavaScript -->
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js" integrity="sha384-aJ21OjlMXNL5UyIl/XNwTMqvzeRMZH2w8c5cRVpzpU8Y5bApTppSuUkhZXN0VxHd" crossorigin="anonymous"></script>
	<script type="text/javascript">
		var yupeTokenName = '<?= Yii::app()->getRequest()->csrfTokenName; ?>';
		var yupeToken = '<?= Yii::app()->getRequest()->getCsrfToken(); ?>';
		var yupeCartDeleteProductUrl = '<?= Yii::app()->createUrl('/cart/cart/delete/') ?>';
		var yupeCartUpdateUrl = '<?= Yii::app()->createUrl('/cart/cart/update/') ?>';
		var yupeCartWidgetUrl = '<?= Yii::app()->createUrl('/cart/cart/widget/') ?>';
	</script>
</head>

<body>
	<div class="container">
		<div class="header">
			<div class="logo_wrapper">
				<a href="index.html"><span class="logo" title="Jokey">Jokey</span></a>
			</div>
			<div class="header_right">

				<div class="top_menu_wrapper">
					<?php $this->widget('application.modules.menu.widgets.MenuWidget', ['name' => 'top-menu-' . Yii::app()->language]); ?>
				</div>
			</div>
		</div>

		<?= $content ?>
	</div>
	<div class="footer">
		<div class="contacts">
			<p><a href="mailto:info@jokey.ru">info@jokey.ru</a></p>
			Звоните по телефонам в Москве:
			<p>тел. +7 (495) 739-26-37</p>
			<p>факс. +7 (495) 739-26-38</p>
			<br />
			<p>&copy; 2012 &mdash; 2019, Jokey</p>
			<br />
			<p><a rel="nofollow" href="http://redgraphic.ru/" onclick="window.open(this.href); return false;">Разработка сайта</a>:
				<br /> <a rel="nofollow" href="http://redgraphic.ru/" onclick="window.open(this.href); return false;">Red Graphic Interactive Agency</a></p>
			<br>
			<p>
				<div class="site-rating" itemtype="http://data-vocabulary.org/Review-aggregate" itemscope="">
					<span itemprop="itemreviewed"> Оценка</span>
					<span> <span class="stars">★★★★★ </span>
						<span class="rating" style="display:none !important;"> 4.8</span> на основе
						<a href="https://www.google.by/maps/place/Джокей+Пластик+Могилёв/@53.9624981,30.3506335,17z/data=!3m1!4b1!4m5!3m4!1s0x46d04f027c234569:0x6a7be5bbe49337b!8m2!3d53.962495!4d30.3528222" rel="nofollow" target="_blank">отзывов</a>
						<span class="votes" itemprop="votes">5</span> клиентов.
						<span itemtype="http://data-vocabulary.org/Rating" itemscope="" itemprop="rating">
							<meta content="4.0" itemprop="value">
							<meta content="5" itemprop="best">
						</span>
					</span>
				</div>
			</p>
		</div>
		<div class="footerNav">
			<ul class="aboutList">
				<li class="caption"><a href="about/index.html">О компании</a></li>
				</li>
				<li><a href="about/production/index.html">Производство</a></li>
				<li><a href="about/certificates/index.html">Сертификаты соответствия</a></li>
				<li><a href="about/antikorrupcionnaya_politika/index.html">Антикоррупционная политика</a></li>
			</ul>
			<ul class="productionList">
				<li class="caption"><a href="products/index.html">Продукция</a></li>
				<li><a href="products/boxes/index.html">Контейнеры и коробки</a></li>
				<li><a href="products/buckets_round/index.html">Ведра круглые</a></li>
				<li><a href="products/buckets_oval/index.html">Ведра овальные</a></li>
				<li><a href="products/buckularets_rect/index.html">Ведра прямоугольные и квадратные</a></li>
				<li><a href="products/options/index.html">Аксессуары</a></li>
				<li><a href="products/pishchevye_vedra/index.html">Пищевые ведра</a></li>
				<li><a href="products/stroitelnye_vedra/index.html">Строительные ведра</a></li>
				<li><a href="products/medicinskie_vedra/index.html">Медицинские ведра</a></li>
				<li><a href="products/vedra_dlya_himicheskoj_produkcii/index.html">Ведра для химической продукции</a></li>
				<li><a href="products/vedra_10_litrov/index.html">Пластиковые ведра 10 л</a></li>
				<li><a href="products/vedra_20_litrov/index.html">Пластиковые ведра 20 л</a></li>
				<li><a href="products/vedra_30_litrov/index.html">Пластиковые ведра 30 л</a></li>
			</ul>
			<ul class="contactsList">
				<li class="caption"><a href="contacts/index.html">Контакты</a></li>
				<li class="dropdown-menu-title"><a href="contacts/belarus/index.html">Беларусь</a>
					<span class="arrow_r"></span>
					<ul class="dropdown-menu">
						<li>Могилёв</li>
					</ul>
				</li>
				<li class="dropdown-menu-title"><a href="contacts/russia/moscow/index.html">Роccия</a>
					<span class="arrow_r"></span>
					<ul class="dropdown-menu">
						<li>Екатеринбург</li>
						<li>Новосибирск</li>
						<li>Санкт-Петербург</li>
						<li>Москва</li>
						<li>Воронеж</li>
						<li>Ростов-на-Дону</li>
					</ul>
				</li>
				<li><a href="contacts/kazakhstan/almaty/index.html">Казахстан</a></li>
				<li><a href="contacts/uzbekistan/index.html">Узбекистан</a></li>
				<li><a href="contacts/ukraine/index.html">Украина</a></li>
			</ul>
			<ul class="siteNav">

				<li><a href="terms_of_use/index.html">Условия использования</a></li>
				<li><a href="protection_of_data/index.html">Защита данных</a></li>
			</ul>
		</div>
		<div class="footerNav">
			<ul class="aboutList">
				<li class="caption"><a href="news/index.html">Новости Jokey</a></li>
			</ul>
			<ul class="productionList">
				<li class="caption"><a href="downloads/index.html">Скачать</a></li>
			</ul>
			<ul class="siteNav">
				<li class="caption"><a href="sitemap/index.html">Карта сайта</a></li>
			</ul>
		</div>
	</div>


	<?php
	Yii::app()->getClientScript()->registerScriptFile($this->mainAssets . '/js/jquery-ui-1.8.18.custom.min.js');
	Yii::app()->getClientScript()->registerScriptFile($this->mainAssets . '/js/jquery.scrollTo-min.js');
	Yii::app()->getClientScript()->registerScriptFile($this->mainAssets . '/js/jquery.cycle.all.min.js');
	Yii::app()->getClientScript()->registerScriptFile($this->mainAssets . '/js/owl.carousel.min.js');
	Yii::app()->getClientScript()->registerScriptFile($this->mainAssets . '/js/main.js');
	?>
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery.touchswipe/1.6.4/jquery.touchSwipe.min.js">
	</script>
	<script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js">
	</script>
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery.touchswipe/1.6.4/jquery.touchSwipe.min.js">
	</script>
</body>

</html>