<div style="height:2px; background-color:black; width:100%"></div>

<div>
    <div align="left" style=" float:left; width:50%; font-size:10px; font-family:Segoe, 'Segoe UI', 'DejaVu Sans', 'Trebuchet MS', Verdana, sans-serif">L'Acropole - CopyLeft MMXXI - {{$setting->email}} - <a href="{{route('contact', $periods->slug)}}" class="nav">İletişim Formu</a></div>
	<div style="float:right; width:50%" align="right"><img src="{{asset('img')}}/cmyk.png"/></div>
    <div style="clear:both"></div>
</div>

<div style="width:100%" align="center"><img src="{{asset('img')}}/cross.png"/></div>

</div>
</div>

@yield('js')
<script src="{{asset('js')}}/jquery-3.6.0.min.js"></script>
@toastr_js
    @toastr_render

</body>
</html>