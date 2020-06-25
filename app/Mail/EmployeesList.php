<?php

namespace App\Mail;
use App\Employee;
use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;

class EmployeesList extends Mailable
{
    use Queueable, SerializesModels;

    /**
     * Create a new message instance.
     *
     * @return void
     */
     public $employees;
    public function __construct(Employee $employees)
    {
        //
        this->employees = $employees;
    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {

      $data['foo'] = 'bar';
$employees=Employee ::all();
return markdown('emails.list');
      //  return $this->view('emails.list');
    }
}
