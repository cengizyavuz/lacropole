@extends('back.layouts.master')
@section('title', 'Makaleler')
@section('content')

<div id="page-content">
 <div id="page-title">
        <div class="page-title">{{$period->name}} / Makaleler</div>
        <div class="title-right" align="right">
        	<a href="{{route('admin.post.create')}}" class="nav">
        	<img src="{{asset('img')}}/plus.png" width="24" title="Yeni Makale">
            </a>
        </div>
        <div style="clear:both"></div>
    </div>
    <div class="page-content">
    @if(count($posts) > 0 )
    	@foreach($posts as $post)
        @php if($post->headline == 1) $durum = 0; else $durum = 1;  @endphp
        <div class="row">
        	<div style="float:left; width:120px">
                @if($post->image)
                <img src="{{asset('media/images')}}/{{$post->image}}" width="100">
                @else 
                <img src="{{asset('media/images')}}/no-image.jpg" width="100">
                @endif
            </div>
            <div style="float:left; width:40%">{{$post->title}}</div>
            <div style="float:left; width:10%">
            <a href="{{route('admin.period.posts.headline', [$post->id, $post->issue])}}" class="nav">
                <div @if($post->headline == 1) class="circle-green" @else class="circle-red" @endif></div>
            </a>
            </div>
            <div style="float:left; width:10%">Sayı : {{$post->issue}}</div>
            <div style="float:left; width:15%">{{$post->getKind->name}}</div>
            <div style="float:right; width:calc(25% - 120px)" align="right">
            	<a href="{{route('admin.post.update', $post->id)}}" class="nav">
                	<img src="{{asset('img')}}/edit.png" width="24">
                </a>
                <a href="{{route('admin.post.delete', $post->id)}}" class="nav">
            	<img src="{{asset('img')}}/remove.png" width="24">
                </a>
            </div>
            <div style="clear:both"></div>
        </div>
        @endforeach
     @else
     	Sayıya ilişkin kayıtlı makale bulunmuyor. Hemen bir tane oluşturabilirsin
     @endif   
    </div>

</div>

@endsection
