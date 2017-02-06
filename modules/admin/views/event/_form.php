<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use yii\helpers\ArrayHelper;
use app\modules\admin\models\Show;
use app\modules\admin\models\Area;

/* @var $this yii\web\View */
/* @var $model app\modules\admin\models\Event */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="event-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'date')->textInput() ?>

    <?= $form->field($model, 'show_id')->dropDownList(ArrayHelper::map(Show::find()->all(), 'id', 'name')) ?>

    <?= $form->field($model, 'area_id')->dropDownList(ArrayHelper::map(Area::find()->all(), 'id', 'name')) ?>

    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? 'Create' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
