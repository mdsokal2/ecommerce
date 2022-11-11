@extends('admin.master')
@section('title')
    Create Product
@endsection
@section('body')
    <div class="main-panel">
        <div class="content-wrapper">
            <h3 class="text-center">Add Product</h3>

            <div class="row">
                <div class="col-md-8 mx-auto">

                    <form action="{{route('products.store')}}" method="post" enctype="multipart/form-data">
                        @csrf
                        <div class="form-group row mt-3">
                            <label for="" class="col-md-8">Product Title</label>
                            <div class="col-md-8 mt-2">
                                <input type="text" class="form-control" name="title"/>
                            </div>
                        </div>
                        <div class="form-group row mt-3">
                            <label for="" class="col-md-8">Product Description</label>
                            <div class="col-md-8 mt-2">
                                <textarea name="description" id="" cols="30" rows="10"></textarea>
                            </div>
                        </div>
                        <div class="form-group row mt-3">
                            <label for="" class="col-md-8">Price</label>
                            <div class="col-md-8 mt-2">
                                <input type="number" class="form-control" name="price"/>
                            </div>
                        </div>
                        <div class="form-group row mt-3">
                            <label for="" class="col-md-8">Quantity</label>
                            <div class="col-md-8 mt-2">
                                <input type="number" min="0" class="form-control" name="quantity"/>
                            </div>
                        </div>
                        <div class="form-group row mt-3">
                            <label for="" class="col-md-8">Discount Price</label>
                            <div class="col-md-8 mt-2">
                                <input type="number" class="form-control" name="discount_price"/>
                            </div>
                        </div>
                        <div class="form-group row mt-3">
                            <label for="" class="col-md-8">Category</label>
                            <div class="col-md-8">

                                <select name="category" id=""  class="text-primary" >
                                    @foreach($categories as $category)
                                    <option value="{{$category->category_name}}">{{$category->category_name}}</option>
                                    @endforeach

                                </select>
                            </div>
                        </div>
                        <div class="form-group row mt-3">
                            <label for="" class="col-md-8">Image</label>
                            <div class="col-md-8 mt-2">
                                <input type="file" class="form-control-file" name="image"/>
                            </div>
                        </div>



                        <div class="form-group row mt-3">
                            <label for="" class="col-md-5"></label>
                            <div class="col-md-8">
                                <input type="submit" value="Create Product" class="btn btn-success "/>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
@endsection


