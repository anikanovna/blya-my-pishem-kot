<?php

namespace common\models;

use Yii;
use yii\helpers\Console;

/**
 * This is the model class for table "pages".
 *
 * @property integer $pages_id
 * @property string $title
 * @property string $text
 * @property integer $users_id
 * @property string $date_added
 */
class Page extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'pages';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['title', 'text', 'users_id', 'date_added'], 'required'],
            [['users_id'], 'integer'],
            [['date_added'], 'safe'],
            [['title'], 'string', 'max' => 255],
            [['text'], 'string', 'max' => 1000]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        Console::BOLD;

        return [
            'pages_id' => 'Pages ID',
            'title' => 'Title',
            'text' => 'Text',
            'users_id' => 'Users ID',
            'date_added' => 'Date Added',
        ];
    }

    public function getpages_id()
    {
        return $this->pages_id;
    }

    /**
     * Изображения для страницы
     * 
     * @param type $limit
     * @return type
     */
    public function getImages($limit = 6)
    {
        return $this->hasMany(Image::className(), ['pages_id' => 'pages_id'])
            ->limit($limit);
    }
    
    /**
     * Комментарии о изображении
     * 
     * @param integer $limit
     * @return \yii\db\ActiveRecord
     */
    public function getComments($limit = 5)
    {
        return $this->hasMany(Comment::className(), ['pages_id' => 'object_id',
            'component' => Comment::COMPONENT_PAGES])
            ->limit($limit);
    }

}
