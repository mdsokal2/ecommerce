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
<script src="{{asset('/')}}home/js/jquery-3.4.1.min.js"></script>
<!-- popper js -->
<script src="{{asset('/')}}home/js/popper.min.js"></script>
<!-- bootstrap js -->
<script src="{{asset('/')}}home/js/bootstrap.js"></script>
<!-- custom js -->
<script src="{{asset('/')}}home/js/custom.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js" integrity="sha512-VEd+nq25CkR676O+pLBnDW09R7VQX9Mdiij052gVCp5yVH3jGtH70Ho/UUv4mJDsEdTvqRCFZg0NKGiojGnUCw==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>

