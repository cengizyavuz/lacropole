@extends('back.layouts.master')
@section('title', 'Ressamlar')
@section('content')

<div id="page-content">
 <div id="page-title">
        <div class="page-title">Ressamlar</div>
        <div class="title-right" align="right">
        	<a href="{{route('admin.painter.list')}}" class="nav">
               <img src="{{asset('img')}}/list.png" width="20">
            </a>
        	<a href="{{route('admin.painter.create')}}" class="nav">
        	<img src="{{asset('img')}}/plus.png" width="24" title="Yeni Makale">
            </a>
        </div>
        <div style="clear:both"></div>
    </div>
    <div class="page-content">
            @if(count($painters) > 0 )
                @foreach($painters as $painter)
                <div class="row">
                    <div style="float:left; width:50%">{{$painter->name}}</div>
                    <div style="float:left; width:30%">{{$painter->graecus}}</div>
                    <div style="float:right; width:20%" align="right">
                    	<a href="{{route('admin.painter.recycle', $painter->id)}}" class="nav">
                    		<img src="{{asset('img')}}/recycle.png" width="20">
                        </a>
                        <a href="{{route('admin.painter.hard.delete', $painter->id)}}" class="nav">
                    	<img src="{{asset('img')}}/trash.png" width="20">
                        </a>
                    </div>
                    <div style="clear:both"></div>
                </div>
                @endforeach
             @else
                Silinmiş ressam bulunmuyor.
             @endif 
    </div>

</div>

@endsection
