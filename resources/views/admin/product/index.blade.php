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
                            <th>Product Name</th>
                            <th>Description</th>
                            <th>Price</th>
                            <th>Discount Price</th>
                            <th>Product Quantity</th>
                            <th>Image</th>
                            <th>Category</th>
                            <th>Action</th>
                        </tr>

                        </thead>
                        <tbody>
                        @foreach($products as $product)
                            <tr>
                                <td>{{$loop->iteration}}</td>
                                <td>{{$product->title}}</td>

                                <td>{!! \Illuminate\Support\Str::words($product->description,5,'...') !!}</td>
                                <td>{{$product->price}}</td>
                                <td>{{$product->discount_price}}</td>
                                <td>{{$product->quantity}}</td>
                                <td>
                                    <img src="{{$product->image}}" class="" alt="" style="height: 80px;width: 80px ;border-radius: 0">
                                </td>
                                <td>{{$product->category}}</td>



                                <td>
                                    <a href="{{route('products.edit',$product->id)}}" class="btn btn-success float-left">edit</a>
                                    <form action="{{route('products.destroy',$product->id)}}" onclick="return confirm('Are you sure to delete this?')"  method="post">
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

