<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Employee extends Model
{
    //

   public $guarded = [];
//public $fillable=['first_name','last_name','email','phone','Company_ID'];

    public function company(){
 return $this->belongsTo('App\Company','Company_Id');
//return $this->belongsTo('App\Company')->withDefault();
  // return $this->belongsTo(company ::class);
  }


}
