<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "users".
 *
 * @property integer $users_id
 * @property string $users_email
 * @property string $users_login
 * @property string $users_password
 * @property string $users_firstname
 * @property string $users_lastname
 * @property string $date_added
 */
class Users extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'users';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['users_email', 'users_login', 'users_password', 'date_added'], 'required'],
            [['date_added'], 'safe'],
            [['users_email', 'users_login', 'users_password', 'users_firstname', 'users_lastname'], 'string', 'max' => 200],
            [['users_email'], 'unique'],
            [['users_login'], 'unique']
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'users_id' => 'Users ID',
            'users_email' => 'Users Email',
            'users_login' => 'Users Login',
            'users_password' => 'Users Password',
            'users_firstname' => 'Users Firstname',
            'users_lastname' => 'Users Lastname',
            'date_added' => 'Date Added',
        ];
    }
}
