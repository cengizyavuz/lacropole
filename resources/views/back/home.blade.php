@extends('back.layouts.master')
@section('title', 'Yönetim Paneli')
@section('content')

<div id="page-content">
 <div id="page-title">
        <div class="page-title">Anasayfa</div>
        <div class="title-right"></div>
        <div style="clear:both"></div>
    </div>
    <div class="page-content">
    	<a href="#" class="nav">
    	<div class="widget">
        	<div class="widget-title">Siparişler</div>
            <div class="widget-count">&nbsp;</div>
            <div class="widget-txt">Yeni Sipariş</div>
        </div>
        </a>
        <a href="#" class="nav">
        <div class="widget">
        	<div class="widget-title">Rezervasyonlar</div>
            <div class="widget-count">&nbsp;</div>
            <div class="widget-txt">Yeni Rezervasyon</div>
        </div>
        </a>
        <a href="#" class="nav">
        <div class="widget">
        	<div class="widget-title">iletişim</div>
            <div class="widget-count">&nbsp;</div>
            <div class="widget-txt">Yeni E-posta</div>
        </div>
        </a>
        <div style="clear:both"></div>
    </div>

</div>

@endsection
