<!doctype html>
<html lang="tr">
<head>
<meta charset="utf-8">
<title>@yield('title')</title>
<link rel="stylesheet" href="{{asset('css')}}/style.css" type="text/css" media="all"/>
@toastr_css

</head>

<body>
<div align="center" style="padding:30px 0px">
	<div style="width:calc(90% - 200px); background-color:white; padding:75px 100px 25px 100px">
	<div id="logo">
    	<div style="float:left; width:calc((100% - 440px) / 2); height:182px">
        	<div style="height:182px; width:calc(100% - 20px); margin-right:20px; background-color:#f9f9f9"></div>
        </div>
        <div style="float:left; width:440px" align="center">
            <div>
            	<a href="{{route('home', $periods->slug)}}">
            	<img src="{{asset('img')}}/lacropole-logo.png"/>
                </a>
            </div>
            <div class="motto">{{$setting->motto}}</div>
        </div>
        <div style="float:left; width:calc((100% - 440px) / 2); height:182px">
        	<div style="height:182px; width:calc(100% - 20px); margin-left:20px; background-color:#f9f9f9"></div>
        </div>
        <div style="clear:both"></div>
	</div>
    <!-- /logo -->
    
    <div style="width:100%; height:2px; border-top:0px solid #ccc;  border-bottom:1px solid #ccc;"></div>
    <div style="width:100%;  padding:15px 0px; border-bottom:1px solid #666;">
    	<div style="float:left; width:33%" align="left">
        
        	<div onmouseover="show_hide('issues')" onmouseout="show_hide('issues')">
        		<div style="float:left; margin-right:20px; cursor:pointer">Sayı : {{$periods->issue}} / {{$periods->name}}</div> 
                <div style="float:left; margin-top:-3px"><img src="{{asset('img')}}/arrow-bottom.png"/></div>
                <div style="clear:both"></div>
            </div>
            
            <div onmouseover="show_hide('issues')" onmouseout="show_hide('issues')" id="issues" style="position:absolute; background-color:white; padding:20px; border:1px solid #ccc; display:none">
            	@foreach($issues as $issue)
            	<div>
                	<a href="/{{$issue->slug}}" class="nav">
                	<div class="issue-menu">
                		Sayı : {{$issue->issue}} / {{$issue->name}}
                    </div>
                    </a>
                    <a href="{{route('download', [$periods->slug, $issue->slug])}}" class="nav">
                    <div class="pdf-menu">
                    	PDF Olarak İndir
                    </div>
                    </a>
                    <div style="clear:both"></div>
              	</div>
                @endforeach
            </div>
        </div>
    	<div style="float:left; width:34%" align="center">{{$calendar->month_gr}} - {{$calendar->day_gr}} </div>
        <div style="float:left; width:33%" align="right">Vol : 54667</div>
        <div style="clear:both"></div>
    </div>
    <div style="height:2px; background-color:black; width:100%; margin-top:2px"></div>
    
    
    <script>
	
	function show_hide(blockId){
		if ( document.getElementById(blockId).style.display == 'none' ){
			document.getElementById(blockId).style.display = 'block';
		} else if ( document.getElementById(blockId).style.display == 'block' ){
			document.getElementById(blockId).style.display = 'none';
		}
	}
	</script>