@extends('back.layouts.master')
@section('title', 'Silinen Makaleler')
@section('content')

<div id="page-content">
 <div id="page-title">
        <div class="page-title">Silinen Makaleler</div>
        <div class="title-right" align="right">
        	<a href="{{route('admin.post.list')}}" class="nav">
        	<img src="{{asset('img')}}/list.png" width="24" title="Silinen Makaleler">
            </a>
        	<a href="{{route('admin.post.create')}}" class="nav">
        	<img src="{{asset('img')}}/plus.png" width="24" title="Yeni Makale">
            </a>
        </div>
        <div style="clear:both"></div>
    </div>
    <div class="page-content">
    @if(count($posts) > 0 )
    	@foreach($posts as $post)
        <div class="row">
        	<div style="float:left; width:120px">
                @if($post->image)
                <img src="{{asset('media/images')}}/{{$post->image}}" width="100">
                @else 
                <img src="{{asset('media/images')}}/no-image.jpg" width="100">
                @endif
            </div>
            <div style="float:left; width:45%">{{$post->title}}</div>
            <div style="float:left; width:15%">Sayı : {{$post->issue}}</div>
            <div style="float:left; width:15%">{{$post->getKind->name}}</div>
            <div style="float:right; width:calc(25% - 120px)" align="right">
            	<a href="{{route('admin.post.recycle', $post->id)}}" class="nav">
                	<img src="{{asset('img')}}/recycle.png" width="24">
                </a>
                <a href="{{route('admin.post.hard.delete', $post->id)}}" class="nav">
            	<img src="{{asset('img')}}/trash.png" width="24">
                </a>
            </div>
            <div style="clear:both"></div>
        </div>
        @endforeach
     @else
     	Silinmiş makale bulunmuyor.
     @endif   
    </div>

</div>

@endsection
