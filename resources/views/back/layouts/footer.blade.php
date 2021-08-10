@yield('js')
<script src="{{asset('js')}}/jquery-3.6.0.min.js"></script>
@toastr_js
    @toastr_render
</body>
</html>