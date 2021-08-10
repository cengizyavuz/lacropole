@extends('back.layouts.master')
@section('title', 'Yazarlar')
@section('content')

<div id="page-content">
 <div id="page-title">
        <div class="page-title">Yazarlar</div>
        <div class="title-right" align="right">
        	<a href="{{route('admin.author.deleted')}}" class="nav">
               <img src="{{asset('img')}}/trash.png" width="20">
            </a>
        	<a href="{{route('admin.author.create')}}" class="nav">
        	<img src="{{asset('img')}}/plus.png" width="24" title="Yeni Makale">
            </a>
        </div>
        <div style="clear:both"></div>
    </div>
    <div class="page-content">
            @if(count($authors) > 0 )
                @foreach($authors as $author)
                <div class="row">
                	<div style="float:left; width:20%"><img src="{{asset('media/images')}}/{{$author->image}}" height="75"></div>
                    <div style="float:left; width:20%">{{$author->first_name}}</div>
                    <div style="float:left; width:20%">{{$author->last_name}}</div>
                    <div style="float:left; width:20%">{{$author->graecus}}</div>
                    <div style="float:right; width:20%" align="right">
                    	<a href="{{route('admin.author.update', $author->id)}}" class="nav">
                    		<img src="{{asset('img')}}/edit.png" width="20">
                        </a>
                        <a href="{{route('admin.author.delete', $author->id)}}" class="nav">
                    	<img src="{{asset('img')}}/trash.png" width="20">
                        </a>
                    </div>
                    <div style="clear:both"></div>
                </div>
                @endforeach
             @else
                Kayıtlı yazar bulunmuyor.
             @endif 
    </div>

</div>

@endsection
