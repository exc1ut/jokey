
<div class="about">

<ul class="aboutTabs">
    

<? foreach ($block as $key=>$item):?>
<li><a href="#tab-<?=$key?>"><?=$item->name?></a></li>

<? endforeach;?>
</ul>
<? foreach ($block as $key=>$item):?>
<div class="aboutContent" id="tab-<?=$key?>">
<p>
    <?=$item->content?>
</p>
</div>
<? endforeach;?>



</div>