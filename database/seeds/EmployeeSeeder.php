<?php

use Illuminate\Database\Seeder;

class EmployeeSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //


        $Emlpoyees=['Galal','tarek','Sara','Hatem ','Waleed','mohamed','Ahmed','tamer','Faras','Heba'];
$Company_Id =0;
$admin=0;
        foreach($Emlpoyees as $Emlpoyee){
    $Company_Id++;
      $admin++;
    \App\Employee::create([

    'first_name'=>$Emlpoyee,
    'Company_Id'=>$Company_Id,
    'last_name'=>'Default',
    'email'=>'Employee@'.$admin.'.com',
   'Phone'=>'555 555 55',

    ]);


            }

    }
}
