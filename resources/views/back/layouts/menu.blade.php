<div id="nav-content" align="center">
	<a href="{{route('admin.home')}}">
	<div style="margin:20px 0px; border-bottom:1px solid #333; padding:20px 0px">
    	<img src="{{asset('img')}}/lacropole-logo-min.png" width="160">
    </div>
    </a>
    <div class="panel-title" style="margin-bottom:40px">Yönetim Paneli</div>
    
    <a href="{{route('admin.post.list')}}" class="nav"> 
    	<div @if(Request::segment(2)=="makale") class="nav-item-act transition" @else class="nav-item transition" @endif align="left">Makale İşlemleri</div>
    </a>
    
       <a href="{{route('admin.authors.list')}}" class="nav">
    	<div @if(Request::segment(2)=="yazarlar") class="nav-item-act transition" @else class="nav-item transition" @endif align="left">Yazarlar</div>
    </a>

    
    
    <a href="{{route('admin.painter.list')}}" class="nav">
    	<div @if(Request::segment(2)=="ressamlar") class="nav-item-act transition" @else class="nav-item transition" @endif align="left">Ressamlar</div>
    </a>
    
    <a href="{{route('admin.period.list')}}" class="nav">
    	<div @if(Request::segment(2)=="sayilar") class="nav-item-act transition" @else class="nav-item transition" @endif align="left">Sayılar</div>
    </a>
    
     <a href="#" class="nav">
    	<div @if(Request::segment(2)=="galeri") class="nav-item-act transition" @else class="nav-item transition" @endif align="left">Yorumlar</div>
    </a>
    
    <a href="#" class="nav">
    	<div @if(Request::segment(2)=="musteriler") class="nav-item-act" @else class="nav-item" @endif align="left">İletişim</div>
    </a>
    
    <a href="{{route('admin.setting')}}" class="nav">
    	<div @if(Request::segment(2)=="ayarlar") class="nav-item-act transition" @else class="nav-item transition" @endif align="left">Ayarlar</div>
    </a>
</div>