<?php
use yupe\components\controllers\FrontController;

/**
 * Class CategoryController
 */
class CategoryController extends FrontController
{
    /**
     * @var ProductRepository
     */
    protected $productRepository;

    /**
     * @var StoreCategoryRepository
     */
    protected $categoryRepository;

    /**
     * @var AttributeFilter
     */
    protected $attributeFilter;

    /**
     *
     */
    public function init()
    {
        parent::init();
        $this->productRepository = Yii::app()->getComponent('productRepository');
        $this->attributeFilter = Yii::app()->getComponent('attributesFilter');
        $this->categoryRepository = Yii::app()->getComponent('categoryRepository');
    }

    /**
     *
     */
    public function actionIndex()
    {
        $this->render(
            'index',
            [
                'dataProvider' => $this->categoryRepository->getAllDataProvider(),
            ]
        );
    }

    /**
     * @param $path
     * @throws CHttpException
     */
    public function actionView($path)
    {
        $category = $this->categoryRepository->getByPath($path);

        if (null === $category) {
            throw new CHttpException(404);
        }

        $typesSearchParam = $this->attributeFilter->getTypeAttributesForSearchFromQuery(Yii::app()->getRequest());

        $mainSearchParam = $this->attributeFilter->getMainAttributesForSearchFromQuery(
            Yii::app()->getRequest(),
            [
                AttributeFilter::MAIN_SEARCH_PARAM_CATEGORY => Yii::app()->getRequest()->getQuery('category',
                    [$category->id]),
            ]
        );

        if (!empty($mainSearchParam) || !empty($typesSearchParam)) {
            $data = $this->productRepository->getByFilter($mainSearchParam, $typesSearchParam);
        } else {
            $data = $this->productRepository->getListForCategory($category);
        }
        $categories = StoreCategory::model()->findAll();
        $criteria = new CDbCriteria();
        $criteria->with = 'category';

        $criteria->compare('category.slug',$path);
        $products = Product::model()->findAll($criteria);
        $crit = new CDbCriteria();
        $crit->compare('slug',$path);
        $catName = StoreCategory::model()->findAll($crit);
        $name = (string)$catName[0]->name;
        
        $this->render(
            $category->view ?: 'view',
            [
                'dataProvider' => $data,
                'category' => $categories,
                'products' => $products,
                'name' => $name,
            ]
        );
    }
}