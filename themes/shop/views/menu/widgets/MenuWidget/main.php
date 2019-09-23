<ul class="topMenu">
    <? foreach ($this->params['items'] as $menu) : ?>

        <li>
            <a href="<?= $menu["url"] ?>"><?= $menu["label"] ?></a>
        </li>

    <? endforeach; ?>
</ul>