<?php

namespace frontend\controllers;


use common\models\Image;
use common\models\Page;
use yii\data\Pagination;

class PageController extends \yii\web\Controller
{
    public $defaultAction = 'listPages';

    /**
     * Список разделов
     *
     * @param string $type
     * @return string
     */
    public function actionListPages($type = 'grid')
    {
        $query = Page::find()->orderBy('count_images');
        $countQuery = clone $query;
        $pages = new Pagination(['totalCount' => $countQuery->count(), 'pageSizeLimit' => [1, 5]]);
        $modelsPages = $query->offset($pages->offset)
            ->limit($pages->limit)
            ->all();

        return $this->render('list-pages-'.$type.'.twig', [
            'modelsPages' => $modelsPages,
            'pages'       => $pages,
        ]);
    }

    /**
     * Показ конкретного раздела
     *
     * @param integer $pageId
     * @param string $typeShow
     * @return string
     */
    public function actionListImages($pageId, $typeShow = 'grid')
    {
        $query = Image::find()
            ->where(['pages_id' => $pageId])
            ->orderBy('images_id');

        $countQuery   = clone $query;
        $pages        = new Pagination(['totalCount' => $countQuery->count(), 'pageSizeLimit' => [1, 5]]);
        $modelImages = $query->offset($pages->offset)
            ->limit($pages->limit)
            ->all();
        
        return $this->render('list-images-'.$typeShow.'.twig', [
            'modelImages' => $modelImages,
            'pages'       => $pages,
        ]);
    }

    /**
     * Добавление комментария по сущносности
     *
     * @param string $component - компонент к которому добавляется комментарий
     * @param integer $objectId - id сущности к которой добавляется комментарий
     * @param string $comment - собственно сам комментарий
     */
    public function actionAddComment($component, $objectId, $comment)
    {
        $result = Comment::addComment($component, $objectId, $comment);

        if ($result) {
            // ajax helper
        } else {
            // ajax helper
        }
    }

    /**
     * Загрузка изображений
     *
     * @param integer $pageId - ID раздела в который льётся изображение
     */
    public function actionUploadImages($pageId)
    {
        var_dump($_FILES);
    }

    /**
     * Добавление комментария по сущносности
     */
    public function actionTesttest($pageId)
    {
        $objectPage = Page::find()->where(['pages_id' => $pageId])->one();

        if (empty($objectPage)) {
            throw new Exception('Не найдена страница с №'.$pageId);
        }

        return $this->render('testtest.php', ['objectPage' => $objectPage]);
    }

}
