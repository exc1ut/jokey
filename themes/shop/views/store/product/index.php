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
            <h1>Пластиковые ведра с герметичной крышкой</h1>
            <div class="filterCols">
                <div class="col">
                    <div class="caption">Объем</div>
                    <div class="label">от</div>
                    <div class="field"><input type="text" id="search_min_capacity" class="search_fld" /> (л)</div>
                    <div class="label">до</div>
                    <div class="field"><input type="text" id="search_max_capacity" class="search_fld" /> (л)</div>
                </div>
                <div class="col">
                    <div class="caption">Форма ведра</div>
                    <ul class="params">
                        <li><a href="#" rel="shape" id="shape_1">круглая<span class="remove">x</span></a></li>
                        <li><a href="#" rel="shape" id="shape_2">овальная<span class="remove">x</span></a></li>
                        <li><a href="#" rel="shape" id="shape_3">прямоугольная<span class="remove">x</span></a></li>
                        <li><a href="#" rel="shape" id="shape_4">квадратная<span class="remove">x</span></a></li>
                    </ul>
                </div>
                <div class="col">
                    <div class="caption">Промышленность</div>
                    <ul class="params">
                        <li><a href="#" rel="industry" id="industry_1">строительная<span class="remove">x</span></a></li>
                        <li><a href="#" rel="industry" id="industry_2">пищевая<span class="remove">x</span></a></li>
                        <li><a href="#" rel="industry" id="industry_3">медицинская<span class="remove">x</span></a></li>
                        <li><a href="#" rel="industry" id="industry_4">химическая<span class="remove">x</span></a></li>
                    </ul>
                </div>
                <div class="col">
                    <div class="caption">Дополнительные параметры</div>
                    <ul class="params">
                        <li><a href="#" rel="packaging" id="packaging_1">Расфасовка в горячем состоянии<span class="remove">x</span></a></li>
                        <li><a href="#" rel="packaging" id="packaging_2">Расфасовка в холодном состоянии<span class="remove">x</span></a></li>
                        <li><a href="#" rel="packaging" id="packaging_3">Использование в шейкере<span class="remove">x</span></a></li>
                    </ul>
                </div><a href="#" class="moreLink">
                    <span>Подробнее</span>
                </a>
                <!--div class="filterClear" ><a href="#" class="clearLink">Очистить фильтр</a></div-->
                <div class="hidden">
                    <div class="hiddenContent">
                        <h2>
                            Пластиковые ведра с герметичной крышкой от Jokey</h2>
                        <p>
                            Прочные и легкие пластиковые ведра с крышкой для пищевых и непищевых продуктов разных объемов&nbsp;и конфигураций необходимы производителям самых разных товаров. Упаковочная тара &laquo;Джокей&raquo; подходит для содержимого объемами от 1 до 33 литров.&nbsp;Немецкие технологии строго соблюдаются на всех дочерних предприятиях компании.&nbsp;</p>
                        <h3>
                            Показатель качества</h3>
                        <p>
                            Изделия Jokey станут идеальной тарой для упаковки вашей продукции, ведь они:</p>
                        <ul>
                            <li>
                                устойчивы к деформации при небольшой толщине стенок;</li>
                            <li>
                                эластичны и не дают трещин даже при сильных ударах и использовании скоростных шейкеров;</li>
                            <li>
                                герметичные пластиковые ведра снабжены крышками, которые могут запаиваться, снабжаться замком, системой легкого открывания, приспособлены к многократному закрыванию;</li>
                            <li>
                                термоустойчивы в диапазоне от -25&deg; до +75&deg;.</li>
                        </ul>
                        <h2>
                            Сферы применения</h2>
                        <p>
                            В пищевой промышленности пластмассовые пищевые ведра с крышкой используются для различных продуктов: майонез, мясо, рыба, овощные полуфабрикаты. Для того чтобы продукты выглядели более привлекательными для покупателей.</p>
                        <p>
                            На предприятиях бытовой химии ведра используются для ЛКМ, других жидких и сыпучих смесей и считаются примером высокого уровня производства и его соответствия современным стандартам.</p>
                        <p>
                            Упаковывая свою продукцию в пластиковые ведра для пищевых и непищевых продуктов Jokey, вы заботитесь о ее сохранности и успешности ваших продаж.</p>
                        <h3>
                            Преимущества покупки пластиковых ведер Jokey</h3>
                        <ol>
                            <li>
                                В производстве ведер используется химически стойкая пластмасса, которая не реагирует с содержимым.</li>
                            <li>
                                Вы можете купить ведра пластиковые&nbsp;оптом любого объема от 1 до 33 литров.</li>
                            <li>
                                Мы готовы&nbsp;учесть все ваши пожелания по дизайну: офсетная или трафаретная печать наклеек, впаивание этикетки. Такое изделие станет для вас не только тарой, но и рекламой.</li>
                        </ol>
                        <h2>
                            Доставка и покупка пластиковых ведер</h2>
                        <p style="text-align: justify;">
                            Поставки производятся в больших объемах. Заводы группы компаний Джокей в СНГ находятся во многих регионах: Беларусь(Могилев), Россия(Москва, Санкт-Петербург, Смоленск, Ростов-на-Дону, Воронеж, Нижний Новгород,&nbsp;Новосибирск, Екатеринбург, Ульяновск), Казахстан(Алматы, Караганда), Узбекистан(Ташкент), Украина(Киев). У нашей компании большой опыт в выборе подходящей продукции для различных видов промышленности, поэтому для того, чтобы купить подходящее пластиковое ведро с герметичной крышкой - проконсультируйтесь.</p>

                    </div>
                </div>
            </div>
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
                    <a href="/store/<?=$prod->category->slug?>/<?=$prod->name?>.html">
                        <img style="width:100px;height:75px" src="<?=$prod->getImageUrl()?>" alt="Ведро пластиковое с крышкой JETB 12 1,2 л" title="Ведро пластиковое с крышкой JETB 12 1,2 л" />
                    </a>
                </td>
                <td class="cell3"><a href="boxes/0000127/index.html"><?=$prod->name?></a></td>
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