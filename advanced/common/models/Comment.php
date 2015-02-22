<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "comments".
 *
 * @property integer $comments_id
 * @property string $component
 * @property integer $object_id
 * @property string $comment
 * @property integer $users_id
 * @property string $date_added
 */
class Comment extends \yii\db\ActiveRecord
{   
    const COMPONENT_IMAGES = 'images';
    const COMPONENT_PAGES  = 'pages';

    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'comments';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['component'], 'string'],
            [['object_id', 'users_id', 'date_added'], 'required'],
            [['object_id', 'users_id'], 'integer'],
            [['date_added'], 'safe'],
            [['comment'], 'string', 'max' => 300]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'comments_id' => 'Comments ID',
            'component' => 'Component',
            'object_id' => 'Object ID',
            'comment' => 'Comment',
            'users_id' => 'Users ID',
            'date_added' => 'Date Added',
        ];
    }
}
