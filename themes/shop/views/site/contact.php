<style>
    #feedback-page {
        text-align: center;
    }

    #form-main {
        width: 100%;
        padding-top: 0px;
    }

    form {
        all: unset;
    }

    #form-div {
        all: unset;
        background-color: rgba(72, 72, 72, 0.6);
        padding-left: 35px;
        padding-right: 35px;
        padding-top: 35px;
        padding-bottom: 50px;
        width: 450px;
        float: left;
        left: 50%;
        position: static;
        -moz-border-radius: 7px;
        -webkit-border-radius: 7px;
        transform: scale(0.75);
    }

    form {
        width: auto !important;
        height: auto !important;
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

    .alignCentera {
        margin: 0;
        padding: 0;
        display: flex;
        align-items: center;
        flex-direction: column;
        transform: translateX(-95px);

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
<div class="alignCentera">

    <h1>Контакты</h1>

    <div class="contact_text_top">

        <?php $this->widget(
            "application.modules.contentblock.widgets.ContentBlockWidget",
            array("code" => "kontakt")
        );
        ?>
    </div>

    <div class="main-map">
        <?php $this->widget(
            "application.modules.contentblock.widgets.ContentBlockWidget",
            array("code" => "yandex-map")
        );
        ?>
    </div>
</div>
<div class="tabs-and-form">
    <div class="tabs">
        <div class="tabs-header">
            <button class="tablinks active" onclick="openTab(event,'main-office')">Главный офис</button>
            <button class="tablinks" onclick="openTab(event,'stock')">Склад</button>
        </div>
        <div id="main-office" class="tabcontent tab" style="display: block;">
            <?php $this->widget(
                "application.modules.contentblock.widgets.ContentBlockWidget",
                array("code" => "sklad")
            );
            ?>
        </div>
        <div id="stock" class="tabcontent tab" style="display: block;">
            <?php $this->widget(
                "application.modules.contentblock.widgets.ContentBlockWidget",
                array("code" => "ofis")
            );
            ?>
        </div>
        


    </div>
    <div class="form">
        <div id="form-main">
            <div id="form-div">
                <form class="form" method="post" action="/mail" id="form1">
                    <input type="hidden" name="<?= Yii::app()->request->csrfTokenName ?>" value="<?= Yii::app()->request->csrfToken; ?>">
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

<div class="contact_text_bottom">
    <p>
        Для оперативной связи с нами используйте форму обратной связи. Наш сотрудник обязательно с Вами
        свяжется и даст ответ на все интересующие вопросы.</p>

</div>
<script>
    openTab(event,'stock')
</script>