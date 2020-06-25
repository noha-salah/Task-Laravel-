

@extends('layouts-inc.app')


@section('content')

    <div class="content-wrapper">

        <section class="content-header">

            <h1>Edit Employee  </h1>

            <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Dashboard</a></li>
            <li><a href="#">  Employees</a></li>
                <li class="active"><a href="#">Edit </a></li>
                <li ></li>
            </ol>
        </section>

        <section class="content">

            <div class="box box-primary">

                <div class="box-header with-border">

                    <h3 class="box-title" style="margin-bottom: 15px"><small></small></h3>



                </div><!-- end of box header -->

    <div class="box-body">

@include('partials._errors')
 <form action="{{ route('Employee.update',$Employee->id ) }}" method="post" enctype="multipart/form-data">


   {{ csrf_field() }}
   {{ method_field('put') }}








   <div class="form-group">
       <label> First Name </label>
       <input type="text" name="first_name" class="form-control" value="{{ $Employee ? $Employee->first_name : old('first_name') }}">
   </div>



   <div class="form-group">
       <label> Last Name </label>
       <input type="text" name="last_name" class="form-control" value="{{ $Employee ? $Employee->last_name : old('last_name') }}">
   </div>
   <div class="form-group">
       <label> Email </label>
       <input type="email" name="email" class="form-control" value=" {{ $Employee ? $Employee->email : old('email') }}">
   </div>


   <div class="form-group">
       <label> phone </label>
       <input type="text" name="phone" class="form-control" value=" {{ $Employee ? $Employee->phone : old('phone') }}">
   </div>


   <div class="form-group">
   <label> Company  </label>
   <select name="Company_Id" class="form_control" >
   <option value=""> Choose Company</option>

   @foreach($companies as $company)
 <option value="{{ $company->id }}">{{ $company->name }}</option>


   @endforeach
   </select>
   </div>









<div class="form-group">
    <button type="submit" class="btn btn-primary"><i class="fa fa-plus"></i> Update Employee</button>
</div>

</form><!-- end of form -->




                </div><!-- end of box body -->


            </div><!-- end of box -->

        </section><!-- end of content -->

    </div><!-- end of content wrapper -->


@endsection
