@extends('front.layouts.master')
@section('title', 'L\'Acropole')
@section('content')


<div align="center" style="margin-top:20px">

	<div style=" width:calc(60% - 102px); border-right:1px solid #ccc; border-left:1px solid #ccc; margin-bottom:50px; padding:20px 50px 50px 50px">
		<div style="margin-bottom:30px; font-family:Segoe, 'Segoe UI', 'DejaVu Sans', 'Trebuchet MS', Verdana, sans-serif; font-size:18px">İletişim Formu</div>
		<form method="post" action="{{route('contact.post')}}">
        	@csrf
        	<div><input type="text" required class="form-input" name="name" placeholder="Adınızı soyadınızı yazınız..." ></div>
        	<div><input type="email" required class="form-input" name="email" placeholder="E-posta adresinizi yazınız..."></div>
            <div><textarea id="message" class="form-input" name="message" rows="8" placeholder="İletinizi yazınız..."></textarea></div>
        	<div><button type="submit" class="form-btn">İletiyi Gönder</button></div>
        </form>
    
    </div>
    
</div>



@endsection