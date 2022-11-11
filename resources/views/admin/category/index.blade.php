@extends('admin.master')
@section('title')
    View Category
@endsection
@section('body')
    <div class="main-panel">
        <div class="content-wrapper">
            <div class="row">
                <div class="col-md-12 mx-auto">
                    <table class="table table-responsive table-striped">
                        <thead>
                         <tr>
                             <th>#</th>
                             <th>Category Name</th>
                             <th>Action</th>
                         </tr>

                        </thead>
                        <tbody>
                        @foreach($categories as $category)
                            <tr>
                                <td>{{$loop->iteration}}</td>
                                <td>{{$category->category_name}}</td>
                                <td>
                                    <a href="{{route('categories.edit',$category->id)}}" class="btn btn-success float-left">edit</a>
                                    <form action="{{route('categories.destroy',$category->id)}}" onclick="return confirm('Are you sure to delete this?')"  method="post">
                                        @csrf
                                        @method('delete')
                                        <input type="submit" class="btn btn-danger ml-2 " value="delete"/>
                                    </form>
                                </td>
                            </tr>
                        @endforeach
                        </tbody>
                    </table>

                </div>
            </div>
        </div>
    </div>
@endsection

