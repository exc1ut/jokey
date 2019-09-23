<?php Yii::import('application.modules.news.NewsModule'); ?>

<div class="news">


    <?php if (isset($models) && $models != []) : ?>
        <?php foreach ($models as $model) : ?>
            <div class="shortNews">
                <a href="/news/<?=$model->slug?>.html"><img src="/uploads/news/<?=$model->image?>" width="150" alt="" title=""></a>
                <div class="body">
                    <div class="date"><?=$model->date?></div>
                    <h3><a href="/news/<?=$model->slug?>.html"><?=$model->title?></a></h3>
                    <p></p>
                </div>
            </div>
        <?php endforeach; ?>
    <?php endif; ?>


</div>