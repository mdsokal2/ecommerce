
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
    <title>E-commerce-Front</title>
    <!-- bootstrap core css -->
    @include('front.css')
</head>
<body>
<div class="hero_area">
    <!-- header section strats -->
@include('front.header')
<!-- end header section -->
    <!-- slider section -->
@include('front.slider')
<!-- end slider section -->
</div>
<!-- why section -->
@include('front.why')
<!-- end why section -->

<!-- arrival section -->
@include('front.arrival')
<!-- end arrival section -->

<!-- category section -->
@include('front.product')
<!-- end category section -->

<!-- subscribe section -->
@include('front.subscribe')
<!-- end subscribe section -->
<!-- client section -->
@include('front.clinet')
<!-- end client section -->
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


