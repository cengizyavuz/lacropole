<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Calendar;
use App\Models\Period;
use App\Models\Post;
use App\Models\Setting;
//use Illuminate\Support\Facades\DB; select sorguları için

class homeController extends Controller
{
	public function __construct(){
		view()->share('setting', Setting::where('id', 1)->first());
		view()->share('calendar', Calendar::where('month', date('m'))->where('day', date('d'))->first()); 
	}
	
    public function periodControl(){
		$periods = Period::where('publish', 1)->orderBy('issue', 'DESC')->get();
		$last_period = $periods[0]->slug;
		return redirect('/' . $last_period);
	}
	
	public function home($period){
		$periods = Period::where('slug', $period)->where('publish', 1)->get();
		if(count($periods)){
			$issue = $periods[0]->issue;
			$posts = Post::where('issue', $issue)->where('kind', 1)->where('status', 1)->where('headline', 0)->get();
			$shorts = Post::where('issue', $issue)->where('kind', 7)->where('status', 1)->get();
			$headlines = Post::where('issue', $issue)->where('headline', 1)->get();
			return view('front.home', compact('periods', 'posts', 'headlines', 'shorts'));
		} else {
			$result = 'Böyle bir sayfa bulunamadı';
			return view('front.dortyuzdort', compact('result'));
		}
	}
	
	public function post($period, $post_slug){
		return $period . ' - ' . $post_slug;
	}
	
	/*
	public function test(){
		
		$periods = Period::orderBy('name', 'ASC')->get();
		//$periods = Period::where('publish', 0)->orderBy('name', 'ASC')->get();
		foreach($periods as $period){
			echo $period->name . '<br />';
			echo $period->description. '<br /><br />';
		}
		
		//$period = DB::select('select * from periods where publish=?', [1]);
		//return print_r($period);
	}
	*/
}
