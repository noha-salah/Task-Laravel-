

@extends('layouts-inc.app')


@section('content')

    <div class="content-wrapper">

        <section class="content-header">

            <h1> Employees </h1>

            <ol class="breadcrumb">
                <li><a href="#"><i class="fa fa-dashboard"></i> employees</a></li>
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




   <a href="{{ route('Employee.create')}}" class="btn btn-primary btn-sm"><i class="fa fa-plus"></i>  Add  employee</a>






                            </div>

                        </div>
                    </form><!-- end of form -->

                </div><!-- end of box header -->


                </div>



                <div class="box-body">

                @if($employees->count() > 0)
                        <table class="table table-hover">

                            <thead>
                            <tr>
                                <th>#</th>

                             <th> First  Name </th>
                             <th> Email </th>
                             <th>  Name Of Company </th>
                             <th>  Phone </th>


                           <th> Action</th>

                            </tr>
                            </thead>

                            <tbody>
                        @foreach($employees as $employee)
                                <tr>
                                <td>{{ $employee->id }}</td>
                                    <td>  {{ $employee->first_name }}</td>
                                    <td>{{ $employee->email }}</td>
                                    <td> {{  $employee->company->name }}</td>



                                    <td>{{ $employee->phone }}</td>


                                     <td>


                                     <a href="{{route('Employee.edit',$employee->id  )}}" class="btn btn-info btn-sm"> Edit</a>




    <form action="{{route('Employee.destroy',$employee->id  )}}" method="post" style="display:inline-block">
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

                        <h2> No Available Records</h2>
                        @endif

        {{ $employees->links() }}
                </div><!-- end of box body -->


            </div><!-- end of box -->

        </section><!-- end of content -->

    </div><!-- end of content wrapper -->


@endsection
