<?php

use Illuminate\Database\Seeder;


class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //

        $user= \App\User::create([

    'name'=>'admin',

    'email'=>'admin@admin.com',
    'password'=> bcrypt('123456'),




    ]);

    $user->attachRole('administrator');

    }
}
