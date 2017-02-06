<?php
use \yii\helpers\Html;
?>
<div class="admin-default-index">
    <h1>Admin Section</h1>
    <p>
        <?= Html::a('Events CRUD', ['event/index']) ?><br>
        <?= Html::a('Shows CRUD', ['show/index']) ?><br>
        <?= Html::a('Areas CRUD', ['area/index']) ?><br>
    </p>
</div>
