<?php

namespace app\modules\admin\models;

use Yii;

/**
 * This is the model class for table "event".
 *
 * @property integer $id
 * @property string $date
 * @property integer $show_id
 * @property integer $area_id
 *
 * @property Show $show
 * @property Area $area
 */
class Event extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'event';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['date', 'show_id', 'area_id'], 'required'],
            [['date'], 'safe'],
            [['show_id', 'area_id'], 'integer'],
            [['show_id'], 'exist', 'skipOnError' => true, 'targetClass' => Show::className(), 'targetAttribute' => ['show_id' => 'id']],
            [['area_id'], 'exist', 'skipOnError' => true, 'targetClass' => Area::className(), 'targetAttribute' => ['area_id' => 'id']],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'date' => 'Date',
            'show_id' => 'Show ID',
            'area_id' => 'Area ID',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getShow()
    {
        return $this->hasOne(Show::className(), ['id' => 'show_id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getArea()
    {
        return $this->hasOne(Area::className(), ['id' => 'area_id']);
    }
}
