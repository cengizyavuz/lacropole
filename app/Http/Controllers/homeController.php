<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Calendar;
use App\Models\Contact;
use App\Models\Period;
use App\Models\Post;
use App\Models\Setting;
use Mail;

class homeController extends Controller
{
	public function __construct(){
		view()->share('setting', Setting::where('id', 1)->first());
		view()->share('calendar', Calendar::where('month', date('m'))->where('day', date('d'))->first());
		view()->share('issues', Period::where('publish', 1)->get()); 
	}
	
    public function periodControl(){
		$periods = Period::where('publish', 1)->orderBy('issue', 'DESC')->get();
		$last_period = $periods[0]->slug;
		return redirect('/' . $last_period);
	}
	
	public function home($period){
		$periods = Period::where('slug', $period)->where('publish', 1)->first();
		if($periods){
			$issue = $periods->issue;
			$posts = Post::where('issue', $issue)->where('kind', 1)->where('status', 1)->where('headline', 0)->get();
			$shorts = Post::where('issue', $issue)->where('kind', 7)->where('status', 1)->get();
			$headlines = Post::where('issue', $issue)->where('headline', 1)->get();
			$arts = Post::where('issue', $issue)->where('kind', 8)->where('status', 1)->get();
			$corners = Post::where('issue', $issue)->where('kind', 3)->where('status', 1)->get();
			return view('front.home', compact('periods', 'posts', 'headlines', 'shorts', 'arts', 'corners'));
		} else {
			$result = 'Böyle bir sayfa bulunamadı';
			return view('front.dortyuzdort', compact('result'));
		}
	}
	
	public function post($period, $post_slug){
		$periods = Period::where('slug', $period)->where('publish', 1)->first();
		$shorts = Post::where('issue', $periods->issue)->where('kind', 7)->where('status', 1)->get();
		$post  = Post::where('issue', $periods->issue)->where('slug', $post_slug)->first();
		return view('front.post', compact('post', 'periods', 'shorts'));
		
	}
	
	public function contact($period){
		$periods = Period::where('slug', $period)->where('publish', 1)->first();
		return view('front.contact', compact('periods'));
	}
	
	public function contactPost(Request $request){
		
		$contact = new Contact;
		$contact->name = $request->name;
		$contact->email = $request->email;
		$contact->message = $request->message;
		$contact->save();
		
		Mail::send([],[], function($message) use($request){
			$message->from('iletisim@lacropole.net', 'Lacropole');
			$message->to('editor@lacropole.net');
			$message->setBody('Mesajı gönderen : ' . $request->name . '<br />
				Mesajı Gönderen Mail : ' . $request->email . '<br />
				Mesaj : ' . $request->message . '<br /><br />
				Mesaj gönderilme tarihi : ' . now() . '', 'text/html');
			$message->subject($request->name . ' iletişimden mesaj gönderdi');
		});
		
		
		toastr()->success('Mesajınız başarıyla alındı');
		return redirect()->back();
	}
	
	
	public function getDowload($period, $issue){
		$file= public_path(). "/download/" . $issue . ".pdf";
    	$headers = array(
              'Content-Type: application/pdf',
            );

    	return response()->download($file, $issue .'.pdf', $headers);
	}
	
}
