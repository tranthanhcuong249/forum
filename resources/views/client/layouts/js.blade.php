<script src="assets/client/js/jquery-2.2.3.min.js"></script>
<script src="assets/client/js/jquery.magnific-popup.js"></script>
<script src="assets/client/js/minicart.js"></script>
<script src="assets/client/js/scroll.js"></script>
<script src="assets/client/js/SmoothScroll.min.js"></script>
<script src="assets/client/js/move-top.js"></script>
<script src="assets/client/js/easing.js"></script>
<script src="assets/client/js/bootstrap.js"></script>
<script src="{{asset('libraries/admin/js/toastr.min.js')}}"></script>
<script src="{{asset('assets/client/js/custom.js')}}"></script>
<script src="{{asset('assets/client/js/ajax.js')}}"></script>
<!--Start of Tawk.to Script-->
<script type="text/javascript">
    var Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();
    (function(){
        var s1=document.createElement("script"),s0=document.getElementsByTagName("script")[0];
        s1.async=true;
        s1.src='https://embed.tawk.to/5e07503027773e0d832afcc0/default';
        s1.charset='UTF-8';
        s1.setAttribute('crossorigin','*');
        s0.parentNode.insertBefore(s1,s0);
    })();
</script>
<!--End of Tawk.to Script-->
@if(session('thongbao'))
    <script type="text/javascript">
        toastr.success('{{session('thongbao')}}','Thông báo', {timeOut:5000})
    </script>
@endif
@if(session('error'))
    <script type="text/javascript">
        toastr.error('{{session('error')}}','Thông báo', {timeOut:5000})
    </script>
@endif
