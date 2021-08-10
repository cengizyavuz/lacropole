<!doctype html>
<html lang="tr">
<head>
<meta charset="utf-8">
<title>@yield('title')</title>
<link rel="stylesheet" href="{{asset('css')}}/style.css" type="text/css" media="all"/>
<style>
html, body{ 
			height: 100%;
			padding: 0;
			font-family: Times, "Times New Roman", Cambria, "Hoefler Text", "Liberation Serif", serif;
			/*font-family:Segoe, "Segoe UI", "DejaVu Sans", "Trebuchet MS", Verdana, sans-serif;*/
			font-size: 18px; 
			color: #333; 
			font-weight: normal; 
			text-decoration: none; 
			background-color:#e6eaf0; 
		}
	.motto{ font-family:Segoe, "Segoe UI", "DejaVu Sans", "Trebuchet MS", Verdana, sans-serif; font-size:14px}
#content{
    -webkit-column-count: 3;
    -moz-column-count: 3;
    column-count: 3;     
}

.column4{
    -webkit-column-count: 4;
    -moz-column-count: 4;
    column-count: 4;     
}

</style>
</head>

<body>
<div align="center" style="padding:30px 0px">
	<div style="width:calc(90% - 200px); background-color:white; padding:75px 100px">
	<div id="logo">
    	<div style="float:left; width:calc((100% - 440px) / 2); height:182px">
        	<div style="height:182px; width:calc(100% - 20px); margin-right:20px; background-color:#f9f9f9"></div>
        </div>
        <div style="float:left; width:440px" align="center">
            <div><img src="{{asset('img')}}/lacropole-logo.png"/></div>
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
    	<div style="float:left; width:33%" align="left">Sayı : {{$periods[0]->issue}} / {{$periods[0]->name}}</div>
    	<div style="float:left; width:34%" align="center">{{$calendar->month_gr}} - {{$calendar->day_gr}} </div>
        <div style="float:left; width:33%" align="right">Vol : 54667</div>
        <div style="clear:both"></div>
    </div>
    <div style="height:2px; background-color:black; width:100%; margin-top:2px"></div>