@extends('front.layouts.master')
@section('title', 'L\'Acropole')
@section('content')


<div align="center" style="margin-top:20px">

	<div style=" width:calc(60% - 102px); border-right:1px solid #ccc; border-left:1px solid #ccc; margin-bottom:50px; padding:0px 50px 50px 50px">
        <div><h1>{{$post->title}}</h1></div>
        <div align="justify"><h3>{{$post->spot}}</h3></div>
        <div style="margin-bottom:30px">
        @if($post->image)
        	<div><img src="{{asset('media/images')}}/{{$post->image}}" style="width:100%"/></div>
            <div style="font-family:Segoe, 'Segoe UI', 'DejaVu Sans', 'Trebuchet MS', Verdana, sans-serif; font-size:12px; text-align:left">@if($post->getPainter->name) Foto Muhabir : {{$post->getPainter->name}} / @endif {{$post->image_info}}</div>
      	@endif
        </div>
        <div align="left" style="border-bottom:1px solid #ccc; border-top:1px solid #ccc; padding:10px 0px">
        	<div style="float:left; width:100px">
            	<div style="width:60px; height:60px; border-radius:50%; overflow:hidden"><img src="{{asset('media/images')}}/{{$post->getAuthor->image}}" width="60"/></div>
            </div>
        	<div style="float:left; font-family:Segoe, 'Segoe UI', 'DejaVu Sans', 'Trebuchet MS', Verdana, sans-serif; font-size:14px; padding-top:20px; width:calc(100% - 100px)" align="left">{{$post->getAuthor->first_name}} @if($post->getAuthor->graecus)/ {{$post->getAuthor->graecus}} @endif <br />editor@lacropole.net</div>
            <div style="clear:both"></div>
        </div>
        <div id="contents" align="left">{!! $post->content !!} </div>

    </div>
</div>



@endsection