<?php $this->title = Yii::app()->getModule('yupe')->siteName;
$criteria = new CDbCriteria();
$criteria->with = 'category';
$criteria->compare('category.slug', 'banner');
$criteria->compare('category.lang', Yii::app()->language);
$images = Image::model()->findAll($criteria);
?>






<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">

	<ol class="carousel-indicators">

		<?php foreach ($images as $key => $image) : ?>

			<li data-target="#carousel-example-generic" data-slide-to="<?= $key ?>" class="<? if ($key == 0) echo "active" ?>"></li>
			
		<?php endforeach; ?>
	</ol>
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
	

	<a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
		<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
		<span class="sr-only">Previous</span>
	</a>
	<a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
		<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
		<span class="sr-only">Next</span>
	</a>
</div>
<div class="wrapper">
<?php foreach ($images as $key => $image) : ?>
<div data-target="#carousel-example-generic" data-slide-to="<?= $key ?>"  class="item-wrapper">
    <img src="https://webdevfrontend.github.io/project/img/p1.png" alt="..."><?= $image->alt; ?>
    <div class="details" id="1">
      <p><?= $image->name; ?></p>
    </div>
  </div>
<?php endforeach; ?>
</div>


<h1 class="main-h1">Пластиковые ведра и другая упаковка от производителя Jokey</h1>
<?php $this->widget(
		"application.modules.news.widgets.lastnewswidget"
	);
	?>
<div class="video-part">
  <div class="row">
    <div class="col-md-6">
	<?php $this->widget(
				"application.modules.contentblock.widgets.ContentBlockWidget",
				array("code" => "youtube")
			);
			?>
    </div>
    <div class="col-md-6">
      <h3>Lorem ipsum dolor sit amet, consectetur adipisicing elit</h3>
      <?php $this->widget(
					"application.modules.contentblock.widgets.ContentBlockWidget",
					array("code" => "youtube-zagolovok")
				);
				?>
    </div>
  </div>

</div>
<?php $this->widget(
	"application.modules.contentblock.widgets.ContentBlockTabs",
	array("code" => "some-name")
);
?>
</div>