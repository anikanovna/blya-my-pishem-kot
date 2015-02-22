<?php
namespace frontend\models;

use common\models\User;
use yii\base\Model;
use Yii;

/**
 * Signup form
 */
class SignupForm extends Model
{
    public $users_login;
    public $users_email;
    public $password;

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            ['users_login', 'filter', 'filter' => 'trim'],
            ['users_login', 'required'],
            ['users_login', 'unique', 'targetClass' => '\common\models\User', 'message' => 'This login has already been taken.'],
            ['users_login', 'string', 'min' => 2, 'max' => 255],

            ['users_email', 'filter', 'filter' => 'trim'],
            ['users_email', 'required'],
            ['users_email', 'email'],
            ['users_email', 'unique', 'targetClass' => '\common\models\User', 'message' => 'This email address has already been taken.'],

            ['password', 'required'],
            ['password', 'string', 'min' => 6],
        ];
    }

    /**
     * Signs user up.
     *
     * @return User|null the saved model or null if saving fails
     */
    public function signup()
    {
        if ($this->validate()) {
            $user = new User();
            $user->users_login = $this->users_login;
            $user->users_email = $this->users_email;
            $user->setPassword($this->password);
            $user->generateAuthKey();
            if ($user->save()) {
                return $user;
            }
        }

        return null;
    }
}
