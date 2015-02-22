<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "images".
 *
 * @property integer $images_id
 * @property string $name
 * @property string $path
 * @property integer $users_id
 * @property string $date_added
 */
class Image extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'images';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['name', 'path', 'users_id', 'date_added'], 'required'],
            [['users_id'], 'integer'],
            [['date_added'], 'safe'],
            [['name'], 'string', 'max' => 100],
            [['path'], 'string', 'max' => 255]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'images_id' => 'Images ID',
            'name' => 'Name',
            'path' => 'Path',
            'users_id' => 'Users ID',
            'date_added' => 'Date Added',
        ];
    }
}
