<div class="inside" style="display:flex;justify-content:flex-start;width:100%">

    <div class="sidebar" style="margin-right:50px">

        <div class="back">

            <a href="/news/">Вернуться к списку новостей</a>
            <img  style="margin-top:25px" src="<?=$model->getImageUrl(200,125)?>" alt="">
        </div>

        <div class="adv"></div>

    </div>

    <div class="content">






        <div class="date"><?= $model->date ?></div>
        <h1><?= $model->title ?></h1>

        <?= $model->full_text; ?>








    </div>

</div>