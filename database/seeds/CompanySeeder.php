<?php

use Illuminate\Database\Seeder;

class CompanySeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //

    $Companies=['Google','technology','Smart','High Tech','Web Designs','Web Development','good-Tech','tech-time','Fast tech','technology-time'];
$companyemail=0;
    foreach($Companies as $Company){
$companyemail++;

\App\Company::create([

'name'=>$Company,
'email'=>'Company@'.$companyemail.'.com',
'website'=>'https://good.company.com',
'logo'=>'default.png',

]);


        }
    }
}
