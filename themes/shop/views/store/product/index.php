<?php
$mainAssets = Yii::app()->getTheme()->getAssetsUrl();
Yii::app()->getClientScript()->registerScriptFile($mainAssets . '/js/store.js');

/* @var $category StoreCategory */
$this->title = Yii::app()->getModule('store')->metaTitle ?: Yii::t('StoreModule.store', 'Catalog');
$this->description = Yii::app()->getModule('store')->metaDescription;
$this->keywords = Yii::app()->getModule('store')->metaKeyWords;

$this->breadcrumbs = [Yii::t("StoreModule.store", "Catalog")];
?>
<!-- 
<div class="main__catalog grid">
    <div class="cols">
        <div class="col grid-module-3">
            <div class="catalog-filter">
                <form id="store-filter" name="store-filter" method="get">
                    <?php $this->widget('application.modules.store.widgets.filters.QFilterWidget'); ?>
                    <?php $this->widget('application.modules.store.widgets.filters.PriceFilterWidget'); ?>
                    <?php $this->widget('application.modules.store.widgets.filters.CategoryFilterWidget', ['limit' => 30]); ?>
                    <?php $this->widget('application.modules.store.widgets.filters.ProducerFilterWidget', ['limit' => 30]); ?>
                    <?php $this->widget('application.modules.store.widgets.filters.FilterBlockWidget', ['attributes' => '*']); ?>
                </form>
            </div>
        </div>
        <div class="col grid-module-9">
            <?php $this->widget(
                'zii.widgets.CListView',
                [
                    'dataProvider' => $dataProvider,
                    'itemView' => '_item',
                    'template' => '
                        <div class="catalog-controls">
                            <div class="catalog-controls__col">{sorter}</div>
                        </div>
                        {items}
                        {pager}
                    ',
                    'summaryText' => '',
                    'enableHistory' => true,
                    'cssFile' => false,
                    'itemsCssClass' => 'catalog__items',
                    'sortableAttributes' => [
                        'sku',
                        'name',
                        'price',
                        'update_time'
                    ],
                    'sorterHeader' => '<div class="sorter__description">Сортировать:</div>',
                    'htmlOptions' => [
                        'class' => 'catalog'
                    ],
                    'pagerCssClass' => 'catalog__pagination',
                    'pager' => [
                        'header' => '',
                        'prevPageLabel' => '<i class="fa fa-long-arrow-left"></i>',
                        'nextPageLabel' => '<i class="fa fa-long-arrow-right"></i>',
                        'firstPageLabel' => false,
                        'lastPageLabel' => false,
                        'htmlOptions' => [
                            'class' => 'pagination'
                        ]
                    ]
                ]
            ); ?>
        </div>
    </div>
</div> -->
<div class="inside" style="    display: flex;
    justify-content: space-between;
    width: 100%;">
    <div style="margin-right:50px" class="sidebar">
        <ul class="leftNav">
        <? foreach($category as $cat):?>
            <li><a href="/store/<?=$cat->slug?>"><?=$cat->name?></a></li>
        <? endforeach;?>
        </ul>
        <div class="adv"></div>
    </div>
    <div style="width:100%" class="content">
        <div class="filter">
            <h1>Продукция</h1>
        </div>
        <div class="productsHead">
            <table style="width:100%" class="products">
                <tr>
                    <th colspan="2" class="cell2">Модель</th>
                    <th class="cell3"><a href="#" class="sort" rel="capacity"></a>Объем <span class="unit">(л)</span></th>
                    <th class="cell4"><a href="#" class="sort" rel="top_diameter"></a>Верхний диаметр <span class="unit">(мм)</span></th>
                    <th class="cell5"><a href="#" class="sort" rel="height"></a>Высота <span class="unit">(мм)</span></th>
                    <th class="last cell6">Спецификация</th>
                </tr>
                <? foreach($products as $prod):?>
            <tr>
                
                <td class="image cell2">
                    <a href="/store/<?=$prod->category->slug?>/<?=$prod->slug?>.html">
                        <img style="width:100px;height:75px" src="<?=$prod->getImageUrl()?>" alt="Ведро пластиковое с крышкой JETB 12 1,2 л" title="Ведро пластиковое с крышкой JETB 12 1,2 л" />
                    </a>
                </td>
                <td class="cell3"><a href="/store/<?=$prod->category->slug?>/<?=$prod->slug?>.html"><?=$prod->name?></a></td>
                <td class="cell4"><?=$prod->weight?></td>
                <td class="cell5"><?=$prod->length?></td>
                <td class="cell6"><?=$prod->height?></td>
                <td class="last cell7">
                    <div class="specification"><a href="../webroot/delivery/files/JETB_12.pdf"><img src="../webroot/delivery/i/pdf-icon.png" alt="" /></a> 290 Kb</div>
                </td>
            </tr>
        <? endforeach;?>
            </table>
            <input type="hidden" value="" id="sort_fld" />
            <input type="hidden" value="" id="sort_direction" />
            <input type="hidden" value="series_list" id="tpl" />
        </div>
        <table class="products" id="products_list">
            



        </table>
    </div>
</div>