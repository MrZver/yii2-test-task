<?php

/* @var $this yii\web\View */

use yii\helpers\Html;
use yii\widgets\LinkPager;
use yii\helpers\StringHelper;
use yii\helpers\Url;

?>
<div class="site-index">
    <div class="row">
        <?php
        foreach ($areas as $area) {
            $image = 'no-image.jpg';
            if ($area->image) $image = $area->image;?>
            <div class="col-sm-6 col-md-4">
                <div class="thumbnail">
                    <?= Html::img("images/$image", ['alt'=>'', 'style'=>'']); ?>
                    <div class="caption">
                        <h3><?= Html::encode($area->name) ?></h3>
                        <p><?= StringHelper::truncate(Html::encode($area->description), 150, '...');?></p>
                        <p class="text-center"><a href="<?= Url::to(['site/area', 'id' => $area->id]) ?>" class="btn btn-primary" role="button">View Area Events</a></p>
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