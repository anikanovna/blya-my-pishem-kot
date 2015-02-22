<?php

namespace common\models;

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
            [['name', 'path', 'users_id', 'date_added', 'pages_id'], 'required'],
            [['users_id', 'pages_id'], 'integer'],
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
            'pages_id' => 'Pages ID',
            'name' => 'Name',
            'path' => 'Path',
            'users_id' => 'Users ID',
            'date_added' => 'Date Added',
        ];
    }

    /**
     * Страница на которой расположено изображение
     * 
     * @return \yii\db\ActiveRecord
     */
    public function getPage()
    {
        return $this->hasOne(Page::className(), ['pages_id' => 'pages_id']);
    }
    
    /**
     * Комментарии о изображении
     * 
     * @param integer $limit
     * @return \yii\db\ActiveRecord
     */
    public function getComments($limit = 5)
    {
        return $this->hasMany(Comment::className(), ['images_id' => 'object_id',
            'component' => Comment::COMPONENT_IMAGES])
            ->limit($limit);
    }

}
