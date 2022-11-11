@extends('admin.master')
@section('title')
    View Category
@endsection
@section('body')
    <div class="main-panel">
        <div class="content-wrapper">
            <div class="row">
                <div class="col-md-8 mx-auto">

                    <form action="{{route('categories.update',$category->id)}}" method="post">
                        @csrf
                        @method('put')
                        <div class="form-group row">
                            <label for="" class="col-md-8">Category Name</label>
                            <div class="col-md-8 mt-2">
                                <input type="text" class="form-control" name="category_name" value="{{$category->category_name}}"/>
                            </div>
                        </div>
                        <div class="form-group row mt-2">
                            <label for="" class="col-md-5"></label>
                            <div class="col-md-8">
                                <input type="submit" value="Update Category" class="btn btn-success "/>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
@endsection


