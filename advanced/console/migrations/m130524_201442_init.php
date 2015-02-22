<?php

use yii\db\Schema;
use yii\db\Migration;

class m130524_201442_init extends Migration
{
    public function up()
    {
        $tableOptions = null;
        if ($this->db->driverName === 'mysql') {
            $tableOptions = 'CHARACTER SET utf8 COLLATE utf8_unicode_ci ENGINE=InnoDB';
        }

        $this->createTable('users', [
            'users_id'                   => Schema::TYPE_PK,
            'users_login'                => Schema::TYPE_STRING . ' NOT NULL',
            'users_auth_key'             => Schema::TYPE_STRING . '(32) NOT NULL',
            'users_password'             => Schema::TYPE_STRING . ' NOT NULL',
            'users_password_reset_token' => Schema::TYPE_STRING,
            'users_email'                => Schema::TYPE_STRING . ' NOT NULL',
            'users_status'               => Schema::TYPE_SMALLINT . ' NOT NULL DEFAULT 10',
            'users_date_added'           => Schema::TYPE_DATETIME . ' NOT NULL',
            'users_date_last_update'     => Schema::TYPE_DATETIME . ' NOT NULL',
        ], $tableOptions);
    }

    public function down()
    {
        $this->dropTable('users');
    }
}
