
@include('back.layouts.header')
<div id="container">
	<div id="nav-area">@include('back.layouts.menu')</div>
	<div id="content-area">@yield('content')</div>
</div>
@include('back.layouts.footer')