@extends('front.layouts.master')
@section('title', 'L\'Acropole')
@section('content')

<div align="left" style="margin-top:20px">
	<div style="float:left; width:calc(70% - 41px); padding-right:20px; border-right:1px solid #ccc; margin-right:20px">
        @foreach($headlines as $headline)
        <div><h1>{{$headline->title}}</h1></div>
        <div align="justify"><h3>{{$headline->spot}}</h3></div>
        <div style="margin-bottom:30px"><img src="{{asset('media/images')}}/{{$headline->image}}" style="width:100%"/></div>
        <div id="content" align="left">{!!Str::limit($headline->content, 1500)!!}<br /><br />
        	<a href="{{route('post', [$periods->slug, $headline->slug])}}"><img src="{{asset('img')}}/arrow.png" /></a></div>
        @endforeach
    </div>
    <div style="float:left; width:calc(30% - 40px); padding:0px 20px;">
    @foreach($shorts as $short)
	<div><h2>{{$short->title}}</h2></div>
    <div style="margin-bottom:20px">{!!$short->content!!}</div>
@endforeach
    </div>
    <div style="clear:both"></div>
</div>
<div style="border-top:1px solid #ccc; border-bottom:1px solid #ccc; height:3px; width:100%"></div>

@foreach($arts as $art)
<div style="margin:20px 0px">
    <div align="left"><h1>{{$art->title}}</h1></div>
    <div id="art" align="left">{!!Str::limit($art->content, 1500)!!}<br /><br />
        	<a href="{{route('post', [$periods->slug, $art->slug])}}"><img src="{{asset('img')}}/arrow.png" /></a>
    </div>
</div>
@endforeach

<div style="border-top:1px solid #ccc; border-bottom:1px solid #ccc; height:3px; width:100%"></div>

<div align="left">
@foreach($posts as $post)
	<div style="float:left; width:calc(33.3% - 42px); margin:20px 10px; padding:10px; border:1px solid #ccc;">
	<div style="padding:0px"><h3>{{$post->title}}</h3></div>		
    <div><img src="{{asset('media/images')}}/{{$post->image}}" style="width:100%"></div>
    <div align="left">{!!Str::limit($post->content, 500)!!} <br /><br />
        	<a href="{{route('post', [$periods->slug, $post->slug])}}"><img src="{{asset('img')}}/arrow.png" /></a></div>
    </div>
@endforeach
	<div style="clear:both"></div>
</div>



<div style="border-top:1px solid #ccc; border-bottom:1px solid #ccc; height:3px; width:100%"></div>

@foreach($corners as $corner)
<div style="margin:20px 0px">
    <div align="left"><h1>{{$corner->title}}</h1></div>
    <div id="art" align="left">{!!Str::limit($corner->content, 1500)!!}<br /><br />
        	<a href="{{route('post', [$periods->slug, $corner->slug])}}"><img src="{{asset('img')}}/arrow.png" /></a>
    </div>
</div>
@endforeach



@endsection