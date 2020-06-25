<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Notifications\Notifiable;
class Company extends Model
{
    //

    use Notifiable;

public $guarded = [];
//public $fillable=['name','email','logo','Website'];

    public function Employee(){

      return $this->hasMany(Employee :: class);
  }


}
