<?php

namespace App\Console;

use Illuminate\Console\Scheduling\Schedule;
use Illuminate\Foundation\Console\Kernel as ConsoleKernel;
use Illuminate\Support\Facades\Mail;
use App\Company;
class Kernel extends ConsoleKernel
{
    /**
     * The Artisan commands provided by your application.
     *
     * @var array
     */
    protected $commands = [

        //
        Commands\EveryWeekly ::class,
    ];

    /**
     * Define the application's command schedule.
     *
     * @param  \Illuminate\Console\Scheduling\Schedule  $schedule
     * @return void
     */
    protected function schedule(Schedule $schedule)
    {
        // $schedule->command('inspire')->hourly()

//$companyemail=$employee->company->email;

      //  $schedule->exec('php artisan command:sendmail')->Weekly();
//list for All employes in system
      $resultemployees =\DB::table('companies')
      ->select('employees.first_name','companies.name')
      ->join('employees','employees.Company_Id','=','companies.id')
      ->get();
      //Show Result
      //echo $resultemployees;
      //Send  Email Companies
      $resultemailcompanies =\DB::table('companies')->select('email')->get()->ToArray();


        $schedule->command('command:sendmail')
         ->weekly()
         ->sendOutputTo($resultemployees)
         ->emailOutputTo($resultemailcompanies);



    }

    /**
     * Register the commands for the application.
     *
     * @return void
     */
    protected function commands()
    {
        $this->load(__DIR__.'/Commands');

        require base_path('routes/console.php');
    }
}
