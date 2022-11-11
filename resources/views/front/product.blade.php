<section class="product_section layout_padding">
    <div class="container">
        <div class="heading_container heading_center">
            <h2>
                <span>products</span>
            </h2>
        </div>

        <div class="row">
            @foreach($products as $product)
                <div class="col-sm-6 col-md-4 col-lg-4">
                    <div class="box">
                        <div class="option_container">
                            <div class="options">
                                <a href="{{route('product-details',$product->id)}}" class="option1">

                                    Product Detail  </a>

                                <form action="{{route('add-to-cart',$product->id)}}" method="post">
                                    @csrf
                                    <div class="row">
                                        <div class="col-md-4 ">
                                            <input type="number" name="quantity" value="1" min="1" style="width: 100px">
                                        </div>
                                        <div class="col-md-8 ml-0">
                                            <input type="submit" value="Add To Cart">

                                        </div>
                                    </div>

                                </form>

                            </div>
                        </div>
                        <div class="img-box">
                            <img src="{{$product->image}}" alt="">
                        </div>
                        <div class="detail-box">
                            <h5>
                                {{$product->title}}
                            </h5>

                        </div>

                        @if($product->discount_price !=null)
                            <div class="detail-box">
                                <h6 class="text-danger">
                                    Discount Price: {{$product->discount_price}} BDT
                                </h6>
                            </div>
                            <div class="detail-box">
                                <h6 style="text-decoration: line-through;color: blue">
                                    Regular Price:{{$product->price}} BDT
                                </h6>

                            </div>
                        @else
                            <div class="detail-box">
                                <h6 class="" style="color: blue">
                                    Price:{{$product->price}} BDT
                                </h6>
                            </div>

                        @endif

                    </div>
                </div>
            @endforeach
            <div class="col-12 ">
                <div class="align-content-center mt-3">
                    {{$products->links('pagination::bootstrap-5')}}
                </div>
            </div>

        </div>

        <div class="btn-box">
            <a href="">
                View All products
            </a>
        </div>
    </div>
</section>




