<?php $this->title = Yii::app()->getModule('yupe')->siteName;
$criteria = new CDbCriteria();
$criteria->with = 'category';
$criteria->compare('category.slug', 'banner');
$criteria->compare('category.lang', Yii::app()->language);
$images = Image::model()->findAll($criteria);
?>






<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
	<!-- Indicators -->
	<ol class="carousel-indicators">

		<?php foreach ($images as $key => $image) : ?>

			<li data-target="#carousel-example-generic" data-slide-to="<?= $key ?>" class="<? if ($key == 0) echo "active" ?>"></li>

		<?php endforeach; ?>
	</ol>

	<!-- Wrapper for slides -->
	<div class="carousel-inner" role="listbox">
		<?php foreach ($images as $key => $image) : ?>
			<div class="item <? if ($key == 0) echo "active" ?>">
				<img style="width:100% " src="<?= $image->getImageUrl(); ?>">
				<div class="carousel-caption">
					<h3><?= $image->alt; ?></h3>
					<p><?= $image->name; ?></p>
				</div>
			</div>
		<?php endforeach; ?>
	</div>

	<!-- Controls -->
	<a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
		<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
		<span class="sr-only">Previous</span>
	</a>
	<a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
		<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
		<span class="sr-only">Next</span>
	</a>
</div>

<h1 class="main-h1">Пластиковые ведра и другая упаковка от производителя Jokey</h1>
<div class="promo">
	<div class="video">

		<p style="max-wid">
			<?php $this->widget(
				"application.modules.contentblock.widgets.ContentBlockWidget",
				array("code" => "youtube")
			);
			?>

		</p>


		<div style="width:450px" class="caption">
			<p>
				<?php $this->widget(
					"application.modules.contentblock.widgets.ContentBlockWidget",
					array("code" => "youtube-zagolovok")
				);
				?>
			</p>
		</div>

	</div>
	<?php $this->widget(
		"application.modules.news.widgets.lastnewswidget"
	);
	?>
</div>
<?php $this->widget(
	"application.modules.contentblock.widgets.ContentBlockTabs",
	array("code" => "some-name")
);
?>
</div>