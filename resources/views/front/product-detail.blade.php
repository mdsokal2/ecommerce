
<!DOCTYPE html>
<html>
<head>
    <!-- Basic -->
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <!-- Mobile Metas -->
    <meta name="viewport" content="{{asset('/')}}home/width=device-width, initial-scale=1, shrink-to-fit=no" />
    <!-- Site Metas -->
    <meta name="keywords" content="" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <link rel="shortcut icon" href="{{asset('/')}}home/images/logo1.png" type="">
    <title>Product Detail</title>
    <!-- bootstrap core css -->
    @include('front.css')
</head>
<body>
@include('front.header')
<main id="main">

    <!-- ======= Portfolio Details Section ======= -->
    <section class="py-5">
        <div class="container">

            <div class="row ">

                <div class="col-md-4  ">
                    {{--                    <img src="{{$product->image}}" alt="" style="height: 350px;width: 400px">--}}
                    <img class="" src="{{asset($product->image)}}" alt="img" style="height: 200px;width: 250px">
                </div>

                <div class="col-md-4">
                    <div class="portfolio-info">
                        <h1 class=" productDetail" ><span style="">{{$product->title}}</span> </h1>
                        <ul>
                            <li><strong>Category</strong>: {{$product->category}}</li>

                            @if($product->discount_price !=null)
                                <li><strong>Discount Price</strong>: {{$product->discount_price}} BDT</li>

                                <li style="text-decoration: line-through"><strong>Price</strong>: {{$product->price}} BDT</li>
                            @else
                                <li><strong> Price</strong>: {{$product->price}} BDT</li>

                            @endif
                            <li><strong>Product Available</strong>: {{$product->quantity}}</li>
                        </ul>
                    </div>

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
                <div class="col-md-4">
                    <div class="portfolio-description">
                        <h1 class=" description" ><span style=""> Description</span> </h1>
                        <p >
                            {!! $product->description !!}
                        </p>
                    </div>
                </div>

            </div>


        </div>
    </section><!-- End Portfolio Details Section -->

</main><!-- End #main -->


<!-- footer start -->
@include('front.footer')

<!-- footer end -->
<div class="cpy_">
    <p class="mx-auto">© 2021 All Rights Reserved By <a href="https://html.design/">Free Html Templates</a><br>

        Distributed By <a href="https://themewagon.com/" target="_blank">ThemeWagon</a>

    </p>
</div>
<!-- jQery -->
@include('front.js')
</body>
</html>


