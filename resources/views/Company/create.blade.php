

@extends('layouts-inc.app')


@section('content')

    <div class="content-wrapper">

        <section class="content-header">

            <h1> Add Company  </h1>

            <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Dashboard</a></li>
            <li><a href="#">  Companies</a></li>
                <li class="active"><a href="#">Add </a></li>
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
 <form action="{{ route('Company.store') }}" method="post" enctype="multipart/form-data">


{{ csrf_field() }}
{{ method_field('post') }}






<div class="form-group">
    <label> Name Of Company</label>
    <input type="text" name="name" class="form-control" value="{{ old('name') }}">
</div>

<div class="form-group">
    <label> Email </label>
    <input type="email" name="email" class="form-control" value="{{ old('email') }}">
</div>

<div class="form-group">
    <label> Website </label>
    <input type="url" name="website" class="form-control" value="{{ old('website') }}">
</div>
<div class="form-group">
    <label> Logo :</label>
    <input type="file" name="logo" class="form-control">
</div>









<div class="form-group">
    <button type="submit" class="btn btn-primary"><i class="fa fa-plus"></i> Add Company</button>
</div>

</form><!-- end of form -->




                </div><!-- end of box body -->


            </div><!-- end of box -->

        </section><!-- end of content -->

    </div><!-- end of content wrapper -->


@endsection
