@extends('back.layouts.master')
@section('title', 'Makale İşlemleri')
@section('content')

<div id="page-content">
 <div id="page-title">
        <div class="page-title">Yeni Makale Oluştur</div>
        <div class="title-right" align="right">&nbsp;</div>
        <div style="clear:both"></div>
    </div>
    
    <div class="page-content" style="padding-bottom:100px">
    	<form method="post" enctype="multipart/form-data" action="{{route('admin.post.create.save')}}"> 
        @csrf
        <div>
            <div class="frm-rows">
            	<select name="period" class="form-select">
                	<option value="0">Sayı Seçiniz</option>
                @foreach($periods as $period)
                  	<option value="{{$period->issue}}">{{$period->issue}} - {{$period->name}}</option> 
                @endforeach
                </select>
            </div>
             <div class="frm-rows">
                <select name="kind" class="form-select">
                	<option value="0">Yazı Türü Seçiniz</option>
                @foreach($kinds as $kind)
                  	<option value="{{$kind->id}}"> {{$kind->name}}</option> 
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
                  	<option value="{{$author->id}}"> {{$author->first_name}}</option> 
                @endforeach
                </select>
            </div>
             <div class="frm-rows">
                <select name="category" class="form-select">
                	<option value="0">Kategori Seçiniz</option>
                @foreach($categories as $category)
                  	<option value="{{$category->id}}"> {{$category->name}}</option> 
                @endforeach
                </select>
            </div>
            <div style="clear:both"></div>
        </div>
        <div><input class="form-input" name="title" placeholder="Yazı Başlığını Yazınız" ></div>
        <div><input class="form-input" name="spot" placeholder="Spot Yazınız"></div>
        
        <div>
             <div class="frm-rows">
            	<select name="painter" class="form-select" required>
                	<option value="0">Ressam Seçiniz</option>
                @foreach($painters as $painter)
                  	<option value="{{$painter->id}}"> {{$painter->name}}</option> 
                @endforeach
                </select>
            </div>
             <div class="frm-rows">
                <select name="headline" class="form-select">
                	<option value="0">Manşet Değil</option>
                    <option value="1">Manşet</option>
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
                	<option value="1">Aktif</option>
                    <option value="0">Pasif</option>
                </select>
            </div>
            <div style="clear:both"></div>
        </div>
        
        <div><input class="form-input" name="image_info" placeholder="Görsel hakkında yazınız..." ></div>
        
        <div><textarea id="editor" class="form-input" name="content"></textarea></div>
        <div><button type="submit" class="form-btn">Kaydet</button></div>
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
