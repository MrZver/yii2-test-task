<?php

namespace app\modules\admin\models;

use Yii;

/**
 * This is the model class for table "area".
 *
 * @property integer $id
 * @property string $name
 * @property string $image
 * @property string $description
 * @property integer $sorting
 *
 * @property Event[] $events
 */
class Area extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'area';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['name'], 'required'],
            [['description'], 'string'],
            [['sorting'], 'integer'],
            [['name', 'image'], 'string', 'max' => 100],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'name' => 'Name',
            'image' => 'Image',
            'description' => 'Description',
            'sorting' => 'Sorting',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getEvents()
    {
        return $this->hasMany(Event::className(), ['area_id' => 'id']);
    }
}
