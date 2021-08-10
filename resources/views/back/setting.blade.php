@extends('back.layouts.master')
@section('title', 'Ayarlar')
@section('content')

<div id="page-content">
    <div id="page-title">
        <div class="page-title">Ayarlar</div>
        <div class="title-right">&nbsp;</div>
        <div style="clear:both"></div>
    </div>

    <div class="page-content">
    <form method="post" action="{{route('admin.setting.update')}}">
    @csrf
    <div>
    	<div style="float:left; width:calc(50% - 20px); padding:10px">
        	<div><label class="label-txt">E-posta adresini yazınız</label>
            <input type="email" class="form-input" name="email" value="{{$setting->email}}"></div>
            <div><label class="label-txt">Facebook sayfanızın linkini yazınız</label>
            <input type="text" class="form-input" name="facebook" value="{{$setting->facebook}}"></div>
            <div><label class="label-txt">Instagram profil linkinizi yazınız</label>
            <input type="text" class="form-input" name="instagram" value="{{$setting->instagram}}"></div>
        </div>
       
        <div style="float:left; width:calc(50% - 20px);  padding:10px">
        	
            <div><label class="label-txt">Site sloganını yazınız</label>
            <input type="text" class="form-input" name="motto" value="{{$setting->motto}}"></div>
            <div><label class="label-txt">Twitter profil linkinizi yazınız</label>
            <input type="text" class="form-input" name="twitter" value="{{$setting->twitter}}"></div>
            <div><label class="label-txt">Youtube profil linkinizi yazınız</label>
            <input type="text" class="form-input" name="youtube" value="{{$setting->youtube}}"></div>
        </div>
        <div style="clear:both"></div>
    </div>
    <div class="form-row"><button type="submit" class="form-btn">Verileri Kaydet</button></div>
    </form>
    </div>
</div>
@endsection