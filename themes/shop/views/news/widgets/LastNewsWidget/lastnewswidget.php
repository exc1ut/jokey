<?php Yii::import('application.modules.news.NewsModule'); ?>

<div class="news">
    <div class="introduction">
        <div class="body-part">
            <h1>Новости</h1>
        </div>
        <div class="bottom_border" style="height: 1px;width: 20%;border: 1px solid grey;margin: 1.5rem auto;"></div>
    </div>
    <div class="container-section">
        <?php if (isset($models) && $models != []) : ?>
            <?php foreach ($models as $model) : ?>

                <div class="room">
                    <div class="img-box">
                        <a href="/news/<?= $model->slug ?>.html"><img src="/uploads/news/<?= $model->image ?>" alt=".."></a>
                    </div>
                    <a href="/news/<?= $model->slug ?>.html">
                        <div class="content">
                            <h2><?= $model->title ?></h2>
                            <p><?= $model->short_text ?></p>
                        </div>
                    </a>
                </div>
            <?php endforeach; ?>
        <?php endif; ?>
    </div>






</div>