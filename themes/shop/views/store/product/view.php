<style>
    #carousel-example-generic {
        display: inline-block;
    }

    /*****************************/

    /* Plugin styles */
    ul.thumbnails-carousel {
        padding: 5px 0 0 0;
        margin: 0;
        list-style-type: none;
        text-align: center;
    }

    ul.thumbnails-carousel .center {
        display: inline-block;
    }

    ul.thumbnails-carousel li {
        margin-right: 5px;
        float: left;
        cursor: pointer;
    }

    .controls-background-reset {
        background: none !important;
    }

    .active-thumbnail {
        opacity: 0.4;
    }

    .indicators-fix {
        bottom: 70px;
    }

    .box {
        width: 100%;
        margin: 0 auto;
        background: rgba(255, 255, 255, 0.2);
        padding: 35px;
        border: 2px solid #fff;
        border-radius: 20px/50px;
        background-clip: padding-box;
        text-align: center;
    }

    .button {
        font-size: 1em;
        padding: 10px 70px;
        color: #7C8488;
        border: 2px solid #7C8488;
        text-decoration: none !important;
        cursor: pointer;
        transition: all 0.3s ease-out;
        font-weight: bold;
    }

    .button:hover {
        background: #7C8488;
        color:#fff;
    }

    .overlay {
        position: fixed;
        top: 0;
        bottom: 0;
        left: 0;
        right: 0;
        background: rgba(0, 0, 0, 0.7);
        transition: opacity 500ms;
        visibility: hidden;
        opacity: 0;
    }

    .overlay:target {
        visibility: visible;
        opacity: 1;
    }

    .popup {
        margin: 70px auto;
        padding: 20px;
        background: rgba(0, 0, 0, 0);
        border-radius: 5px;
        width: 30%;
        position: relative;
        transition: all 5s ease-in-out;
    }

    .popup h2 {
        margin-top: 0;
        color: #333;
        font-family: Tahoma, Arial, sans-serif;
    }

    .popup .close {
        position: absolute;
        top: 20px;
        right: 30px;
        transition: all 200ms;
        font-size: 30px;
        font-weight: bold;
        text-decoration: none;
        color: #333;
    }

    .popup .close:hover {
        color: #7C8488;
    }

    .popup .modelContent {
        max-height: 30%;
        overflow: auto;
    }

    @media screen and (max-width: 700px) {
        .box {
            width: 70%;
        }

        .popup {
            width: 70%;
        }
    }



    #feedback-page {
        text-align: center;
    }

    #form-main {
        width: 100%;
        float: left;
        padding-top: 0px;
    }

    #form-div {
        background-color: rgba(72, 72, 72, 0.6);
        padding-left: 35px;
        padding-right: 35px;
        padding-top: 35px;
        padding-bottom: 50px;
        width: 450px;
        float: left;
        left: 50%;
        position: absolute;
        margin-top: 30px;
        margin-left: -260px;
        -moz-border-radius: 7px;
        -webkit-border-radius: 7px;
    }

    .feedback-input {
        color: #3c3c3c;
        font-family: Helvetica, Arial, sans-serif;
        font-weight: 500;
        font-size: 18px;
        border-radius: 0;
        line-height: 22px;
        background-color: #fbfbfb;
        padding: 13px 13px 13px 54px;
        margin-bottom: 10px;
        width: 100%;
        -webkit-box-sizing: border-box;
        -moz-box-sizing: border-box;
        -ms-box-sizing: border-box;
        box-sizing: border-box;
        border: 3px solid rgba(0, 0, 0, 0);
    }

    .feedback-input:focus {
        background: #fff;
        box-shadow: 0;
        border: 3px solid #7C8488;
        color: #7C8488;
        outline: none;
        padding: 13px 13px 13px 54px;
    }

    .focused {
        color: #7C8488;
        border: #7C8488 solid 3px;
    }

    /* Icons ---------------------------------- */
    #name {
        background-image: url(http://rexkirby.com/kirbyandson/images/name.svg);
        background-size: 30px 30px;
        background-position: 11px 8px;
        background-repeat: no-repeat;
    }

    #name:focus {
        background-image: url(http://rexkirby.com/kirbyandson/images/name.svg);
        background-size: 30px 30px;
        background-position: 8px 5px;
        background-position: 11px 8px;
        background-repeat: no-repeat;
    }

    #email {
        background-image: url(http://rexkirby.com/kirbyandson/images/email.svg);
        background-size: 30px 30px;
        background-position: 11px 8px;
        background-repeat: no-repeat;
    }

    #email:focus {
        background-image: url(http://rexkirby.com/kirbyandson/images/email.svg);
        background-size: 30px 30px;
        background-position: 11px 8px;
        background-repeat: no-repeat;
    }

    #comment {
        background-image: url(http://rexkirby.com/kirbyandson/images/comment.svg);
        background-size: 30px 30px;
        background-position: 11px 8px;
        background-repeat: no-repeat;
    }

    textarea {
        width: 100%;
        height: 150px;
        line-height: 150%;
        resize: vertical;
    }

    input:hover,
    textarea:hover,
    input:focus,
    textarea:focus {
        background-color: white;
    }

    #button-blue {
        font-family: 'Montserrat', Arial, Helvetica, sans-serif;
        float: left;
        width: 100%;
        border: #fbfbfb solid 4px;
        cursor: pointer;
        background-color: #7C8488;
        color: white;
        font-size: 24px;
        padding-top: 22px;
        padding-bottom: 22px;
        -webkit-transition: all 0.3s;
        -moz-transition: all 0.3s;
        transition: all 0.3s;
        margin-top: -4px;
        font-weight: 700;
    }

    #button-blue:hover {
        background-color: rgba(0, 0, 0, 0);
        color: #0493bd;
    }

    .submit:hover {
        color: #3498db;
    }

    .ease {
        width: 0px;
        height: 74px;
        background-color: #fbfbfb;
        -webkit-transition: .3s ease;
        -moz-transition: .3s ease;
        -o-transition: .3s ease;
        -ms-transition: .3s ease;
        transition: .3s ease;
    }

    .submit:hover .ease {
        width: 100%;
        background-color: white;
    }

    @media only screen and (max-width: 580px) {
        #form-div {
            left: 3%;
            margin-right: 3%;
            width: 88%;
            margin-left: 0;
            padding-left: 3%;
            padding-right: 3%;
        }
    }
</style>
<div class="inside" style="    display: flex;
    justify-content: flex-start;
    
    width: 100%;">

    <div class="sidebar" style="margin-right:50px">

        <ul class="leftNav">
            <? foreach ($category as $cat) : ?>
                <li><a href="/store/<?= $cat->slug ?>"><?= $cat->name ?></a></li>
            <? endforeach; ?>

        </ul>

        <div class="adv"></div>

    </div>

    <div class="content" style="width:100%">

        <div class="serieInfo">
            <div class="back">
                <a href="/products/">К выбору из всех моделей</a></div>
            <div class="hidden">

            </div>
        </div>
        <div class="productName">
            <div class="specification">
                <p><a href="/webroot/delivery/files/JETB_12.pdf"><img src="/webroot/delivery/i/pdf-icon.png" alt="">Спецификация</a></p>
                <p>pdf, 290 Kb</p>
            </div>
            <h1><?= $product->name ?></h1>
            <h2><?= $product->slug ?></h2>
        </div>
        <div class="productReview">
            <div class="leftCol">


                <!-- bootstrap carousel -->
                <div id="carousel-example-generic" class="carousel slide" data-ride="carousel" data-interval="false">
                    <!-- Indicators -->


                    <!-- Wrapper for slides -->
                    <div class="carousel-inner">
                        <div class="item active srle">
                            <img src="<?= $product->getImageUrl(250, 250) ?>" alt="1.jpg" class="img-responsive">
                        </div>
                        <? foreach ($product->images as $key => $image) : ?>
                            <div class="item">
                                <img src="<?= $image->getImageUrl(250, 250) ?>" alt="1.jpg" class="img-responsive">
                            </div>

                        <? endforeach; ?>
                    </div>

                    <!-- Controls -->
                    <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                        <span class="glyphicon glyphicon-chevron-left"></span>
                    </a>
                    <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                        <span class="glyphicon glyphicon-chevron-right"></span>
                    </a>

                    <!-- Thumbnails -->
                    <ul class="thumbnails-carousel clearfix">
                        <li><img src="<?= $product->getImageUrl(50, 50) ?>" alt="1_tn.jpg"></li>
                        <? foreach ($product->images as $key => $image) : ?>
                            <li><img src="<?= $image->getImageUrl(50, 50) ?>" alt="1_tn.jpg"></li>

                        <? endforeach; ?>


                    </ul>
                </div>



               
                <div class="box">
                    <a class="button" href="#popup1">Купить</a>
                </div>
                <div id="popup1" class="overlay">
                    <div class="popup">
                        <a class="close" href="#">&times;</a>
                        <div id="form-main">
                            <div id="form-div">
                                <form class="form" method="post" action="/mail" id="form1">
                                    <input type="hidden" name="<?=Yii::app()->request->csrfTokenName?>" value="<?=Yii::app()->request->csrfToken;?>">
                                    <p class="name">
                                        <input name="name" type="text" class="validate[required,custom[onlyLetter],length[0,100]] feedback-input" placeholder="Name" id="name" />
                                    </p>

                                    <p class="email">
                                        <input name="email" type="text" class="validate[required,custom[email]] feedback-input" id="email" placeholder="Email" />
                                    </p>

                                    <p class="text">
                                        <textarea name="text" class="validate[required,length[6,300]] feedback-input" id="comment" placeholder="Comment"></textarea>
                                    </p>


                                    <div class="submit">
                                        <input type="submit" value="SEND" id="button-blue" />
                                        <div class="ease"></div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>


                <?= $product->description ?>
            </div>
            <?= $product->short_description ?>
            <?= $product->data ?>

        </div>

    </div>
    <script>
        // thumbnails.carousel.js jQuery plugin
        ;
        (function(window, $, undefined) {

            var conf = {
                center: true,
                backgroundControl: false
            };

            var cache = {
                $carouselContainer: $('.thumbnails-carousel').parent(),
                $thumbnailsLi: $('.thumbnails-carousel li'),
                $controls: $('.thumbnails-carousel').parent().find('.carousel-control')
            };

            function init() {
                cache.$carouselContainer.find('ol.carousel-indicators').addClass('indicators-fix');
                cache.$thumbnailsLi.first().addClass('active-thumbnail');

                if (!conf.backgroundControl) {
                    cache.$carouselContainer.find('.carousel-control').addClass('controls-background-reset');
                } else {
                    cache.$controls.height(cache.$carouselContainer.find('.carousel-inner').height());
                }

                if (conf.center) {
                    cache.$thumbnailsLi.wrapAll("<div class='center clearfix'></div>");
                }
            }

            function refreshOpacities(domEl) {
                cache.$thumbnailsLi.removeClass('active-thumbnail');
                cache.$thumbnailsLi.eq($(domEl).index()).addClass('active-thumbnail');
            }

            function bindUiActions() {
                cache.$carouselContainer.on('slide.bs.carousel', function(e) {
                    refreshOpacities(e.relatedTarget);
                });

                cache.$thumbnailsLi.click(function() {
                    cache.$carouselContainer.carousel($(this).index());
                });
            }

            $.fn.thumbnailsCarousel = function(options) {
                conf = $.extend(conf, options);

                init();
                bindUiActions();

                return this;
            }

        })(window, jQuery);

        $('.thumbnails-carousel').thumbnailsCarousel();
    </script>