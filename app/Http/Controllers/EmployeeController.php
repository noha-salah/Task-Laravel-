<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Illuminate\Validation\Rule;
use Intervention\Image\ImageManager;
 use Intervention\Image\Facades\Image;
use App\Employee;
use App\Company;

class EmployeeController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
   $employees= Employee ::paginate(10);

        return view('Employee.index',compact('employees'));

    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
        $Employees = Employee::all();
        $companies = Company::all();
        return view('Employee.create',compact(['Employees','companies']));

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
          'first_name'=>'required',
          'last_name'=>'required',
          'email'=>'email|unique:employees',
        'Company_Id'=>'required',
        'phone'=>'max:20'

  ];


                $request->validate($rules);

      $request_data =$request->all();
//dd($request->all());
       $Employee= Employee ::create($request_data);
//SendMail::dispatch($Employee);

session()->flash('success',__('Add Employee successfully'));


return redirect()->route('Employee.index');





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

        $Employee = Employee::findOrFail($id);
  $companies = Company::all();
            return view('Employee.edit',compact(['Employee','companies']));
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
        //
        $Employee = Employee::findOrFail($id);

    //    dd($company);
         $rules=[
           'first_name'=>'required',
           'last_name'=>'required',
            'email'=>'unique:employees,email,'.$Employee->id,
         'Company_Id'=>'required',
         'phone'=>'max:20'


         ];
 $request->validate($rules);
       $request_data =$request->all();
    //   dd($request_data);
    $Employee->update($request_data);

                     session()->flash('success',__(' Update Employee  successfully'));
                    return redirect()->route('Employee.index');
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
        $Employee = Employee::findOrFail($id);


    $Employee->delete();
    session()->flash('success',__('Delete  Employee successfully'));
    return redirect()->route('Employee.index');
    }
}
