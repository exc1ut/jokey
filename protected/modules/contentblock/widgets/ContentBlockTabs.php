<?php
/**
 * Виджет для отрисовки блока контента:
 *
 * @category YupeWidgets
 * @package  yupe.modules.contentblock.widgets
 * @author   Yupe Team <team@yupe.ru>
 * @license  BSD http://ru.wikipedia.org/wiki/%D0%9B%D0%B8%D1%86%D0%B5%D0%BD%D0%B7%D0%B8%D1%8F_BSD
 * @link     https://yupe.ru
 *
 **/
Yii::import('application.modules.contentblock.models.ContentBlock');
Yii::import('application.modules.contentblock.ContentBlockModule');

/**
 * Class ContentBlockTabs
 */
class ContentBlockTabs extends yupe\widgets\YWidget
{
    /**
     * @var
     */
    public $code;
    /**
     * @var bool
     */
    public $silent = false;
    /**
     * @var string
     */
    public $view = 'contentblock';

    /**
     * @throws CException
     */
    public function init()
    {
        if (empty($this->code)) {
            throw new CException(
                Yii::t(
                    'ContentBlockModule.contentblock',
                    'Insert content block title for ContentBlockTabs!'
                )
            );
        }

        $this->silent = (bool)$this->silent;
    }

    /**
     * @throws CException
     */
    public function run()
    {
        $criteria = new CDbCriteria();
        $criteria->with = 'category';
        $criteria->compare('category.slug', 'taby');
        $block = ContentBlock::model()->findAll($criteria);


        $this->render($this->view, ['block'=>$block]);
    }
}
