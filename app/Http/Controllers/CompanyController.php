<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Illuminate\Validation\Rule;
use Illuminate\Notifications\Notification;
use Intervention\Image\ImageManager;
 use Intervention\Image\Facades\Image;
use App\Employee;
use App\Company;

class CompanyController extends Controller
{

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
$companies= Company ::paginate(10);
return view('Company.index',compact('companies'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
      $companies = Company::all();
      return view('Company.create',compact('companies'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
        $rules=[
          'name'=>'required',
          'email'=>'email|unique:companies',
          'website'=>'url',
        //  'logo'=>'dimensions:width=100,height=100',
        ];


                $request->validate($rules);

      $request_data =$request->all();
//dd($request->image);
//dd(storage_path('app\public\\'.$request->logo->hashName()));
      if($request->logo){


          Image::make($request->logo)->resize(100,null,function($constraint){


          $constraint->aspectRatio();

        })->save(storage_path('app\public\\'.$request->logo->hashName()));

          $request_data['logo']=$request->logo->hashName();

        }     $company= Company::create($request_data);


$company->notify(new \App\Notifications\CompanyAdd());

session()->flash('success',__('Add Company successfully'));


return redirect()->route('Company.index');






    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //

$company = Company::findOrFail($id);

    return view('Company.edit',compact('company'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
      $company = Company::findOrFail($id);

  //    dd($company);
       $rules=[

         'name'=>'required',
         'email'=>'unique:companies,email,'.$company->id,
//  'logo'=>'dimensions:width=100,height=100',
         'website'=>'url',];

                           $request_data =$request->all();

                           $request->validate($rules);


         if($request->logo){
       Image::make($request->logo)->resize(300,null,function($constraint){


             $constraint->aspectRatio();

           })->save(storage_path('app\public\\'.$request->logo->hashName()));

             $request_data['logo']=$request->logo->hashName();

           }      $company->update($request_data);

                   session()->flash('success',__(' Update Company  successfully'));
                  return redirect()->route('Company.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
        $company = Company::findOrFail($id);

        if($company->image != 'default.png')
    {
      Storage ::disk('public_uploads')->delete($company->logo);
    }
    $company->delete();
    session()->flash('success',__('Delete  Company successfully'));
    return redirect()->route('Company.index');


    }
}
