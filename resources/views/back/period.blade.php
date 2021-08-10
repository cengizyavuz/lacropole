@extends('back.layouts.master')
@section('title', 'Sayılar')
@section('content')

<div id="page-content">
 <div id="page-title">
        <div class="page-title">Sayılar</div>
        <div class="title-right" align="right">
        	<a href="#" class="nav">
        	<img src="{{asset('img')}}/plus.png" width="24" title="Yeni Makale">
            </a>
        </div>
        <div style="clear:both"></div>
    </div>
    <div class="page-content">
            @if(count($periods) > 0 )
                @foreach($periods as $period)
                @php if($period->publish == 1) $durum = 0; else $durum = 1;  @endphp
                <div class="row">
                    <div style="float:left; width:50%">Sayı : {{$period->issue}} {{$period->name}}</div>
                    <div style="float:left; width:20%">{{$period->getPost->count()}}  makale</div>
                    <div style="float:left; width:10%">
                    	<a href="{{route('admin.period.publish.update', [$period->id, $durum])}}" class="nav">
                        <div @if($period->publish == 1) class="circle-green" @else class="circle-red" @endif></div>
                        </a>
                    </div>
                    <div style="float:right; width:20%" align="right">
                    	<a href="{{route('admin.period.posts', $period->issue)}}" class="nav">
                    		<img src="{{asset('img')}}/list.png" width="20" title="Sayıya ait makaleler">
                        </a>
                        <img src="{{asset('img')}}/edit.png" width="20" title="Güncelle">
                    	<img src="{{asset('img')}}/remove.png" width="20" title="Sil">
                    </div>
                    <div style="clear:both"></div>
                </div>
                @endforeach
             @else
                Kayıtlı ressam bulunmuyor.
             @endif 
    </div>

</div>

@endsection
