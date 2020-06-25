

@extends('layouts-inc.app')


@section('content')

    <div class="content-wrapper">

        <section class="content-header">

            <h1>  Companies </h1>

            <ol class="breadcrumb">
                <li><a href="#"><i class="fa fa-dashboard"></i> Companies</a></li>
                <li class="active"></li>
            </ol>
        </section>

        <section class="content">

            <div class="box box-primary">

                <div class="box-header with-border">

                    <h3 class="box-title" style="margin-bottom: 15px"><small></small></h3>

                    <form method="get">

                        <div class="row">

                            <div class="col-md-4">

                            </div>

                            <div class="col-md-4">


                            </div>



                            <div class="col-md-4">



                                @if(auth()->user()->haspermission('create_companies'))

   <a href="{{ route('Company.create')}}" class="btn btn-primary btn-sm"><i class="fa fa-plus"></i>  Add  Company</a>
   @else
<a href="#" class="btn btn-info btn-sm disabled"><i class="fa fa-plus"></i> Add </a>
@endif




                            </div>

                        </div>
                    </form><!-- end of form -->

                </div><!-- end of box header -->

                <div class="box-body">

                @if($companies->count() > 0)
                        <table class="table table-hover">

                            <thead>
                            <tr>
                                <th>#</th>

                             <th> Name Of Company</th>
                             <th> Email </th>
                             <th> Logo</th>
                             <th> Website</th>
                             <th> Number Of Employees</th>

                           <th> Action</th>

                            </tr>
                            </thead>

                            <tbody>
                        @foreach($companies as $company)
                                <tr>
                                <td>{{ $company->id }}</td>
                                    <td>{{ $company->name }}</td>
                                    <td>{{ $company->email }}</td>


                            <td><img src="{{ asset('storage/'.$company->logo) }}" width="60px" hieght="60px"  alt="no-image" class="img-thumnail"></td>


                                    <td>{{ $company->website}}</td>


                                    <td>{{ $company->employee()->count() }}</td>


                                     <td>


                                     @if(auth()->user()->haspermission('update_companies'))

                                     <a href="{{route('Company.edit',$company->id  )}}" class="btn btn-info btn-sm"> Edit</a>

                                     @else

                                     <a href="#" class="btn btn-info btn-sm disabled"> Edit </a>


                                     @endif




    <form action="{{ route('Company.destroy',$company)}}" method="post" style="display:inline-block">
    {{ csrf_field() }}
    {{ method_field('DELETE') }}
    <button type="submit" class="btn btn-danger delete btn-sm">Delete </button>


</button>

</form>






                                     </td>



                                </tr>
                            @endforeach

                            </tbody>

                        </table><!-- end of table -->


                        @else

                        <h2>No Available Records</h2>
                        @endif

        {{ $companies->links() }}
                </div><!-- end of box body -->


            </div><!-- end of box -->

        </section><!-- end of content -->

    </div><!-- end of content wrapper -->


@endsection
