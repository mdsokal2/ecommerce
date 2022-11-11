<!DOCTYPE html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>  @yield('title')</title>
    <!-- plugins:css -->
    <link rel="stylesheet" href="{{asset('/')}}admin/assets/vendors/mdi/css/materialdesignicons.min.css">
    <link rel="stylesheet" href="{{asset('/')}}admin/assets/vendors/css/vendor.bundle.base.css">
    <!-- endinject -->
    <!-- Plugin css for this page -->
@include('admin.css')
<!-- End layout styles -->
    <link rel="shortcut icon" href="{{asset('/')}}admin/assets/images/favicon.png" />
</head>
<body>
<div class="container-scroller">
    <!-- partial:partials/_sidebar.html -->
@include('admin.sidebar-menu')
<!-- partial -->
    <div class="container-fluid page-body-wrapper">
        <!-- partial:partials/_navbar.html -->
    @include('admin.navbar')
    <!-- partial -->
    @yield('body')
    <!-- main-panel ends -->
    </div>
    <!-- page-body-wrapper ends -->
</div>
<!-- container-scroller -->
<!-- plugins:js -->
<script src="{{asset('/')}}admin/assets/vendors/js/vendor.bundle.base.js"></script>
<!-- endinject -->
<!-- Plugin js for this page -->
@include('admin.js')
<!-- End custom js for this page -->
@if(Session::has('error'))
    <script>
        toastr.error('{{Session::get('error')}}')
    </script>
    {{Session::forget('error')}}

@endif
@if(Session::has('success'))
    <script>
        toastr.success('{{Session::get('success')}}')
    </script>
    {{Session::forget('success')}}

@endif

<script src="https://cdn.ckeditor.com/4.20.0/standard/ckeditor.js"></script>
<script>
    $(document).ready(function () {
        CKEDITOR.replace( 'description' );

    })

</script>
</body>
</html>

