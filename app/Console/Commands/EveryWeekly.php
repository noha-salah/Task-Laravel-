<?php

namespace App\Console\Commands;
use Illuminate\Support\Facades\Mail;
use Illuminate\Console\Command;
use App\Company;
class EveryWeekly extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'command:sendlist';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'email to company for employees';

    /**
     * Create a new command instance.
     *
     * @return void
     */
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * Execute the console command.
     *
     * @return mixed
     */
    public function handle()
    {

//list for All employes in system
$resultemployees =\DB::table('companies')
->select('employees.first_name','companies.name')
->join('employees','employees.Company_Id','=','companies.id')
->get();
//Show Result
//echo $resultemployees;
//Send  Email Companies
$resultemailcompanies =\DB::table('companies')->select('email')->get();
//print_r($resultemailcompanies);
//
echo "good";



    }
}
