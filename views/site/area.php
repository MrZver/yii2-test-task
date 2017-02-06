<?php

/* @var $this yii\web\View */

use yii\helpers\Html;
use yii\widgets\LinkPager;
use yii\helpers\StringHelper;

$image = 'no-image.jpg';
if ($area->image) $image = $area->image;
?>
<div class="site-index">

    <div class="media">
        <div class="media-left">
            <a href="#">
                <?= Html::img("images/{$image}", ['alt'=>'', 'style'=>'height: 350px; width: 900px; display: block;']); ?>
            </a>
        </div>
        <div class="media-body">
            <h4 class="media-heading"><?= $area->name ?></h4>
            <?= Html::encode($area->description);?>
        </div>
    </div>
    <div class="page-header">
    </div><br><br>

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
                        <?= Html::a($event->area->name, ['site/area', 'id' => $event->area->id], ['class' => '']) ?><br>
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
