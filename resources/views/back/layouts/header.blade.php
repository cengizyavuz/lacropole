<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>@yield('title')</title>

<link href="https://fonts.googleapis.com/css2?family=Abril+Fatface&display=swap" rel="stylesheet">
@yield('css')
<link rel="stylesheet" href="{{asset('css')}}/admin_style.css" type="text/css" media="all"/>
@toastr_css
<script src="https://cdn.tiny.cloud/1/wm70p25tglspwng4jjovtw9jv04tf3l2kouxtbefn00hpxw8/tinymce/5/tinymce.min.js" referrerpolicy="origin"></script>

<!-- 

<script src="https://cdn.tiny.cloud/1/no-api-key/tinymce/5/tinymce.min.js" referrerpolicy="origin"></script>
<script>
      tinymce.init({
        selector: '#editor',
		menubar: false,
		
      });
    </script>

-->

</head>
<body>
<div id="top-line" align="right">{{Auth::user()->first_name}} {{Auth::user()->last_name}} /  <a href="{{route('admin.logout')}}" class="nav">Çıkış</a></div>