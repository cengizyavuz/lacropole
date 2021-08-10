@extends('back.layouts.master')
@section('title', 'Ressam Ekle')
@section('content')

<div id="page-content">
 <div id="page-title">
        <div class="page-title">Ressam Ekle</div>
        <div class="title-right" align="right">&nbsp;</div>
        <div style="clear:both"></div>
    </div>
    
    <div class="page-content" style="padding-bottom:100px">
    	<form method="post" enctype="multipart/form-data" action="{{route('admin.painter.create.save')}}"> 
        @csrf
        
        <div>
             <div class="frm-rows">
            	<input type="text" name="name" class="form-input" placeholder="Adını yazınız"></input>
            </div>
            <div class="frm-rows">
                <input type="text" name="graecus" class="form-input" placeholder="Yunancasını yazınız"></input>
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
