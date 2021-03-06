<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model common\models\Comment */

$this->title = 'Update Comment: ' . ' ' . $model->comments_id;
$this->params['breadcrumbs'][] = ['label' => 'Comments', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->comments_id, 'url' => ['view', 'id' => $model->comments_id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="comment-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
