<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\File;
use App\Models\Post;
use App\Models\Period;
use App\Models\Post_kind;
use App\Models\Author;
use App\Models\Category;
use App\Models\Painter;
use App\Models\Setting;

class adminController extends Controller
{
    public function home(){
		return view('back.home');	
	}
	
	public function postList(){
		$posts = Post::orderBy('created_at', 'DESC')->get();
	 	return view('back.post', compact('posts'));	
	}
	
	public function postCreate(){
		$periods = Period::orderBy('issue', 'ASC')->get();
		$kinds = Post_kind::orderBy('id', 'ASC')->get();
		$authors = Author::orderBy('first_name', 'ASC')->get();
		$categories = Category::orderBy('name', 'ASC')->get();
		$painters = Painter::orderBy('name', 'ASC')->get();
		return view('back.postcreate', compact('periods', 'kinds', 'authors', 'categories', 'painters'));	
	}
	
	public function postCreateSave(Request $request){
		$post = new Post;
		$post->issue = $request->period;
		$post->kind = $request->kind;
		$post->author = $request->author;
		$post->category = $request->category;
		$post->title = $request->title;
		$post->slug = Str::slug($request->title);
		$post->spot = $request->spot;
		$post->headline = $request->headline;
		$post->painter = $request->painter;
		$post->status = $request->status;
		$post->content = $request->content;
		
		if($request->hasFile('image')){
			$imageName = Str::slug($request->title) . '.' . $request->image->getClientOriginalExtension();
			$request->image->move(public_path('media/images'), $imageName);
			$post->image = $imageName;
		}
		$post->save();
		$posts = Post::orderBy('created_at', 'DESC')->get();
		toastr()->success('Makale başarılı bir biçimde oluşturuldu');
	 	return view('back.post', compact('posts'));	
	}
	
	public function postUpdate($id){
		$periods = Period::orderBy('issue', 'ASC')->get();
		$kinds = Post_kind::orderBy('id', 'ASC')->get();
		$authors = Author::orderBy('first_name', 'ASC')->get();
		$categories = Category::orderBy('name', 'ASC')->get();
		$painters = Painter::orderBy('name', 'ASC')->get();
		$post = Post::find($id);
		return view('back.postupdate', compact('periods', 'kinds', 'authors', 'categories', 'painters', 'post'));
	}
	
	public function postUpdateSave(Request $request){
		$post = Post::findOrFail($request->id);
		$post->issue = $request->period;
		$post->kind = $request->kind;
		$post->author = $request->author;
		$post->category = $request->category;
		$post->title = $request->title;
		$post->slug = Str::slug($request->title);
		$post->spot = $request->spot;
		$post->headline = $request->headline;
		$post->painter = $request->painter;
		$post->status = $request->status;
		$post->content = $request->content;
		
		if($request->hasFile('image')){
			$image = 'media/images/' . $post->image;
			if(File::exists($image)){
				File::delete(public_path($image));
			}
			
			$imageName = Str::slug($request->title) . '.' . $request->image->getClientOriginalExtension();
			$request->image->move(public_path('media/images'), $imageName);
			$post->image = $imageName;
		}
		$post->save();
		toastr()->success('Güncelleme işlemi başarıyla gerçekleşti');
		return redirect()->back();
	}
	
	public function postDelete($id){
		Post::find($id)->delete();
		toastr()->success('Makale başarıyla geri dönüşüme taşındı');
		return redirect()->back();
	}
	
	public function postDeleted(){
		$posts = Post::onlyTrashed()->orderBy('deleted_at', 'DESC')->get();
		return view('back.posttrashed', compact('posts'));
	}
	
	public function postRecycle($id){
		Post::onlyTrashed()->find($id)->restore();
		toastr()->success('Makale başarıyla geri dönüştürüldü');
		return redirect()->route('admin.post.list');
	}
	
	public function postHardDelete($id){
		$post = Post::onlyTrashed()->find($id);
		$image = 'media/images/' . $post->image;
		if(File::exists($image)){
			File::delete(public_path($image));
		}
		$post->forceDelete();
		toastr()->success('Makale başarıyla silindi');
		return redirect()->back();
	}
	
	
	/*
	 * 
	 * Author fonksiyonları
	 *
	*/
	public function authorsList(){
		$authors = Author::orderBy('first_name', 'ASC')->get();
		return view('back.authors', compact('authors'));
	}
	
	public function authorCreate(){
		return view('back.authorcreate');
	}
	
	public function authorCreateSave(Request $request){
		$author = new Author;
		$author->first_name = $request->first_name;
		$author->last_name = $request->last_name;
		$author->slug = Str::slug($request->first_name);
		$author->graecus = $request->graecus;
		$author->description = $request->description;
		
		if($request->hasFile('image')){
			$imageName = Str::slug($request->first_name) . '.' . $request->image->getClientOriginalExtension();
			$request->image->move(public_path('media/images'), $imageName);
			$author->image = $imageName;
		}
		
		$author->save();
		toastr()->success('Yazar başarıyla eklendi');
		return redirect()->route('admin.authors.list');
	}
	
	public function authorUpdate($id){
		$author = Author::find($id);
		return view('back.authorupdate', compact('author'));
	}
	
	public function authorUpdateSave(Request $request){
		$author = Author::find($request->id);
		$author->first_name = $request->first_name;
		$author->last_name = $request->last_name;
		$author->slug = Str::slug($request->first_name);
		$author->graecus = $request->graecus;
		$author->description = $request->description;
		
		$image = 'media/images/' . $author->image;
		if(File::exists($image)){
			File::delete(public_path($image));
		}
		if($request->hasFile('image')){
			$imageName = Str::slug($request->first_name) . '.' . $request->image->getClientOriginalExtension();
			$request->image->move(public_path('media/images'), $imageName);
			$author->image = $imageName;
		}
		
		$author->save();
		toastr()->success('Yazar başarıyla güncellendi');
		return redirect()->route('admin.authors.list');
	}
	
	public function authorDelete($id){
		Author::find($id)->delete();
		toastr()->success('Yazar başarıyla geri dönüşüme taşındı');
		return redirect()->back();
	}
	
	public function authorDeleted(){
		$authors = Author::onlyTrashed()->orderBy('deleted_at', 'DESC')->get();
		return view('back.authortrashed', compact('authors'));
	}
	
	public function authorRecycle($id){
		Author::onlyTrashed()->find($id)->restore();
		toastr()->success('Yazar başarıyla geri dönüştürüldü');
		return redirect()->route('admin.authors.list');
	}
	
	public function authorHardDelete($id){
		$author = Author::onlyTrashed()->find($id);
		$image = 'media/images/' . $author->image;
		if(File::exists($image)){
			File::delete(public_path($image));
		}
		$author->forceDelete();
		toastr()->success('Yazar tümüyle silindi');
		return redirect()->back();
	}
	
	/*
	 *
	 * Painter functions
	 *
	*/
	
	public function painterList(){
		$painters = Painter::orderBy('name', 'ASC')->get();
		return view('back.painter', compact('painters'));
	}
	
	public function painterCreate(){
		return view('back.paintercreate');
	}
	
	public function painterCreateSave(Request $request){
		$painters = new Painter;
		$painters->name = $request->name;
		$painters->graecus = $request->graecus;
		$painters->description = $request->description;
		$painters->save();
		toastr()->success('Ressam başarıyla kaydedildi');
		return redirect()->route('admin.painter.list'); 
	}
	
	public function painterUpdate($id){
		$painter = Painter::find($id);
		return view('back.painterupdate', compact('painter'));
	}
	
	public function painterUpdateSave(Request $request){
		$painter = Painter::find($request->id);
		$painter->name = $request->name;
		$painter->graecus = $request->graecus;
		$painter->description = $request->description;
		$painter->save();
		toastr()->success('Ressam başarıyla güncellendi');
		return redirect()->back(); 
	}
	
	public function painterDelete($id){
		Painter::find($id)->delete();
		toastr()->success('Ressam başarıyla geri dönüşümee taşındı');
		return redirect()->back();
	}
	
	public function painterDeleted(){
		$painters = Painter::onlyTrashed()->orderBy('deleted_at', 'DESC')->get();
		return view('back.paintertrashed', compact('painters'));
	}
	
	public function painterRecycle($id){
		Painter::onlyTrashed()->find($id)->restore();
		toastr()->success('Ressam başarıyla geri dönüştürüldü');
		return redirect()->route('admin.painter.list');
	}
	
	public function painterHardDelete($id){
		$painter = Painter::onlyTrashed()->find($id);
		$painter->forceDelete();
		toastr()->success('Ressam tümüyle silindi');
		return redirect()->back();
	}
	
	/*
	 *
	 * Period functions
	 *
	*/
	
	public function periodList(){
		$periods = Period::orderBy('issue', 'ASC')->get();
		return view('back.period', compact('periods'));
	}
	
	public function periodPublishUpdate($id, $durum){
		$period = Period::find($id);
		$period->publish = $durum;
		$period->save();
		toastr()->success('Güncelleme işlemi başarıyla yapıldı.');
		return redirect()->back();
	}
	
	public function periodPosts($issue){
		$posts = Post::where('issue', $issue)->orderBy('created_at', 'DESC')->get();
		$period = Period::where('issue', $issue)->first();
		return view('back.periodpost', compact('posts', 'period'));
	}
	
	public function periodPostsHeadline($id, $issue){
		DB::table('posts')->where('issue', $issue)->update(array('headline' => 0));

		$post = Post::find($id);
		$post->headline = 1;
		$post->save();
		toastr()->success('Başarıyla güncellendi');
		return redirect()->back();

	}
	
	/*
	 *
	 * Setting functions
	 *
	*/
	
	public function setting(){
		$setting = Setting::where('id', 1)->first();
		return view('back.setting', compact('setting'));
	}
	
	public function settingUpdate(Request $request){
		$setting = Setting::find(1);
		$setting->email = $request->email;
		$setting->motto = $request->motto;
		$setting->facebook = $request->facebook;
		$setting->twitter = $request->twitter;
		$setting->instagram = $request->instagram;
		$setting->youtube = $request->youtube;
		$setting->save();
		toastr()->success('Başarıyla güncellendi');
		return redirect()->back();	
	}
}
