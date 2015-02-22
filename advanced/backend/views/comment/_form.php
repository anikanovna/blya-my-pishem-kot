<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model common\models\Comment */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="comment-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'component')->dropDownList([ 'images' => 'Images', 'pages' => 'Pages', ], ['prompt' => '']) ?>

    <?= $form->field($model, 'object_id')->textInput() ?>

    <?= $form->field($model, 'comment')->textarea(['maxlength' => 300]) ?>

    <?= $form->field($model, 'users_id')->textInput() ?>

    <?= $form->field($model, 'date_added')->widget(\yii\widgets\MaskedInput::className(), [
          'mask' => '9999-99-99',
    ]) ?>

    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? 'Create' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
