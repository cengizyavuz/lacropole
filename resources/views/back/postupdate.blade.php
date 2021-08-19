@extends('back.layouts.master')
@section('title', 'Makale İşlemleri')
@section('content')

<div id="page-content">
 <div id="page-title">
        <div class="page-title">Makale Güncelle</div>
        <div class="title-right" align="right">&nbsp;</div>
        <div style="clear:both"></div>
    </div>
    
    <div class="page-content" style="padding-bottom:100px">
    <div align="center"><img src="{{asset('media/images')}}/{{$post->image}}" width="400"></div>
    	<form method="post" enctype="multipart/form-data" action="{{route('admin.post.update.save')}}">
            <input type="hidden" value="{{$post->id}}" name="id"> 
            @csrf
        <div>
            <div class="frm-rows">
            	<select name="period" class="form-select">
                	<option value="0">Sayı Seçiniz</option>
                @foreach($periods as $period)
                  	<option value="{{$period->issue}}" @if($post->issue == $period->issue) selected @endif>Sayı : {{$period->issue}} - {{$period->name}}</option> 
                @endforeach
                </select>
            </div>
            <div class="frm-rows">
                <select name="kind" class="form-select">
                	<option value="0">Yazı Türü Seçiniz</option>
                @foreach($kinds as $kind)
                  	<option value="{{$kind->id}}" @if($post->kind == $kind->id) selected @endif> {{$kind->name}}</option> 
                @endforeach
                </select>
            </div>
            <div style="clear:both"></div>
        </div>
        
        <div>
            <div class="frm-rows">
            	<select name="author" class="form-select">
                	<option value="0">Yazar Seçiniz</option>
                @foreach($authors as $author)
                  	<option value="{{$author->id}}" @if($post->author == $author->id) selected @endif> {{$author->first_name}}</option> 
                @endforeach
                </select>
            </div>
            <div class="frm-rows">
                <select name="category" class="form-select">
                	<option value="0">Kategori Seçiniz</option>
                @foreach($categories as $category)
                  	<option value="{{$category->id}}" @if($post->category == $category->id) selected @endif> {{$category->name}}</option> 
                @endforeach
                </select>
            </div>
            <div style="clear:both"></div>
        </div>
        <div><input class="form-input" name="title" placeholder="Yazı Başlığını Yazınız" value="{{$post->title}}"></div>
        <div><input class="form-input" name="spot" placeholder="Spot Yazınız" value="{{$post->spot}}"></div>
        
        <div>
            <div class="frm-rows">
            	<select name="painter" class="form-select" required>
                	<option value="0">Ressam Seçiniz</option>
                @foreach($painters as $painter)
                  	<option value="{{$painter->id}}" @if($post->painter == $painter->id) selected @endif> {{$painter->name}}</option> 
                @endforeach
                </select>
            </div>
            <div class="frm-rows">
                <select name="headline" class="form-select">
                	<option value="0" @if($post->headline == 0) selected @endif>Manşet Değil</option>
                    <option value="1" @if($post->headline == 1) selected @endif>Manşet</option>
                </select>
            </div>
            <div style="clear:both"></div>
        </div>
        
        <div>
            <div class="frm-rows">
            	<input type="file" name="image" class="form-input" ></input>
            </div>
            <div class="frm-rows">
                <select name="status" class="form-select" required>
                	<option value="1" @if($post->status == 1) selected @endif>Aktif</option>
                    <option value="0" @if($post->status == 0) selected @endif>Pasif</option>
                </select>
            </div>
            <div style="clear:both"></div>
        </div>
        <div><input class="form-input" name="image_info" value="{{$post->image_info}}" placeholder="Görsel hakkında yazınız..." ></div>
        <div><textarea id="editor" class="form-input" name="content">{!!$post->content!!}</textarea></div>
        <div><button type="submit" class="form-btn">Kaydet</button>
        </form>  
    </div>
    <!-- /.page-content-->
</div>
<!-- /#page-content-->
 <script>
    tinymce.init({
      selector: '#editor',
	  height:400,
	  entity_encoding : "raw",
      
   });
  </script>
@endsection
