<?php
?>

<div class="inside" style="    display: flex;
    justify-content: flex-start;
    width: 100%;">

    <div class="sidebar" style="margin-right:50px">

        <a class="sheduleLink" href="schedule/index.html">График участия в выставках</a>

        <div class="adv"></div>

    </div>

    <div class="content">





        <h1>Новости Jokey</h1>

        <div class="news">
            <? foreach ($news as $new) : ?>
                <div class="shortNews">
                    <div class="date"><?=$new->date?></div><a href="/news/<?=$new->slug?>.html"><img src="<?=$new->getImageUrl()?>" style="width:150px" alt="" title="" /></a>
                    <div class="body">

                        <h3><a href="/news/<?=$new->slug?>.html"><?=$new->title?></a></h3>

                        <p></p>

                    </div>

                </div>
            <? endforeach; ?>

        </div>

        







    </div>

</div>