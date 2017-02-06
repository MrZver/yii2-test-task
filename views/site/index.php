<?php

/* @var $this yii\web\View */

use yii\helpers\Html;
use yii\widgets\LinkPager;
use yii\helpers\StringHelper;

?>
<div class="site-index">
    <div class="page-header">
        <h1>Home page <small>Coming Events</small></h1>
    </div>
    <div class="row">
        <?php foreach ($events as $event) {
            $image = 'no-image.jpg';
            if ($event->show->image) $image = $event->show->image;
            ?>
        <div class="col-sm-6 col-md-4">
            <div class="">
                <?= Html::img("images/$image", ['alt'=>'', 'style'=>'height: 200px; width: 100%; display: block;']); ?>
                <div class="caption">
                    <h3><?= Html::encode($event->show->name) ?></h3>
                    <h4><?= Html::encode($event->date) ?></h4>
                    <?= Html::a($event->area->name, ['site/area', 'id' => $event->area->id]) ?><br>
                    <p><?= StringHelper::truncate(Html::encode($event->show->description), 150, '...');?></p>
                </div>
            </div>
        </div>
        <?php } ?>
    </div>

    <div class="text-center">
    <?php
    echo LinkPager::widget(['pagination' => $pagination]);
    ?>
    </div>
</div>
