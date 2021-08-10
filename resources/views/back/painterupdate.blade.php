@extends('back.layouts.master')
@section('title', 'Ressam Güncelle')
@section('content')

<div id="page-content">
 <div id="page-title">
        <div class="page-title">Ressam Güncelle</div>
        <div class="title-right" align="right">&nbsp;</div>
        <div style="clear:both"></div>
    </div>
    
    <div class="page-content" style="padding-bottom:100px">
    	<form method="post" enctype="multipart/form-data" action="{{route('admin.painter.update.save')}}">
        <input type="hidden" name="id" value="{{$painter->id}}"> 
        @csrf
        
        <div>
             <div class="frm-rows">
            	<input type="text" name="name" class="form-input" value="{{$painter->name}}"></input>
            </div>
            <div class="frm-rows">
                <input type="text" name="graecus" class="form-input" value="{{$painter->graecus}}"></input>
            </div>
            <div style="clear:both"></div>
        </div>
        
        
        <div><textarea id="editor" class="form-input" name="description">{!!$painter->description!!}</textarea></div>
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
