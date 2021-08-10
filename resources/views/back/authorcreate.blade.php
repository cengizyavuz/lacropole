@extends('back.layouts.master')
@section('title', 'Yazar Ekle')
@section('content')

<div id="page-content">
 <div id="page-title">
        <div class="page-title">Yazar Ekle</div>
        <div class="title-right" align="right">&nbsp;</div>
        <div style="clear:both"></div>
    </div>
    
    <div class="page-content" style="padding-bottom:100px">
    	<form method="post" enctype="multipart/form-data" action="{{route('admin.author.create.save')}}"> 
        @csrf
        
        <div>
             <div class="frm-rows">
            	<input type="text" name="first_name" class="form-input" placeholder="İlk adını yazınız"></input>
            </div>
            <div class="frm-rows">
                <input type="text" name="last_name" class="form-input" placeholder="İkinci adını yazınız"></input>
            </div>
            <div style="clear:both"></div>
        </div>
        
        <div>
             <div class="frm-rows">
            	<input type="file" name="image" class="form-input"></input>
            </div>
            <div class="frm-rows">
                <input type="text" name="graecus" class="form-input" placeholder="Yunanca adını yazınız"></input>
            </div>
            <div style="clear:both"></div>
        </div>

        
        <div><textarea id="editor" class="form-input" name="description"></textarea></div>
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
