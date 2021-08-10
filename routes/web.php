<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\homeController;
use App\Http\Controllers\adminController;
use App\Http\Controllers\AuthController;


/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

/*  admin routes */
Route::prefix('admin')->name('admin.')->middleware('isLogin')->group(function(){
	Route::get('giris', [AuthController::class, 'login'])->name('login');
	Route::post('giris',[AuthController::class, 'loginPost'])->name('login.post');
	Route::get('/', [AuthController::class, 'login']);
});


Route::prefix('admin')->name('admin.')->middleware('isAdmin')->group(function(){
	Route::get('cikis', [AuthController::class, 'logout'])->name('logout');
	Route::get('panel', [adminController::class, 'home'])->name('home');
	Route::get('makale', [adminController::class, 'postList'])->name('post.list');
	Route::get('makale/olustur', [adminController::class, 'postCreate'])->name('post.create');
	Route::post('makale/olustur', [adminController::class, 'postCreateSave'])->name('post.create.save');
	Route::get('makale/guncelle/{id}', [adminController::class, 'postUpdate'])->name('post.update');
	Route::post('makale/guncelle', [adminController::class, 'postUpdateSave'])->name('post.update.save');
	Route::get('makale/sil/{id}', [adminController::class, 'postDelete'])->name('post.delete');
	Route::get('makale/tumsil/{id}', [adminController::class, 'postHardDelete'])->name('post.hard.delete');
	Route::get('makale/silinen', [adminController::class, 'postDeleted'])->name('post.deleted');
	Route::get('recycle/{id}', [adminController::class, 'postRecycle'])->name('post.recycle');
	Route::get('yazarlar', [adminController::class, 'authorsList'])->name('authors.list');
	Route::get('yazarlar/ekle', [adminController::class, 'authorCreate'])->name('author.create');
	Route::post('yazarlar/ekle', [adminController::class, 'authorCreateSave'])->name('author.create.save');
	Route::get('yazarlar/guncelle/{id}', [adminController::class, 'authorUpdate'])->name('author.update');
	Route::post('yazarlar/guncelle', [adminController::class, 'authorUpdateSave'])->name('author.update.save');
	Route::get('yazarlar/sil/{id}', [adminController::class, 'authorDelete'])->name('author.delete');
	Route::get('yazarlar/silinen',  [adminController::class, 'authorDeleted'])->name('author.deleted');
	Route::get('yazarlar/recycle/{id}', [adminController::class, 'authorRecycle'])->name('author.recycle');
	Route::get('yazarlar/tumsil/{id}', [adminController::class, 'authorHardDelete'])->name('author.hard.delete');
	Route::get('ressamlar', [adminController::class, 'painterList'])->name('painter.list');
	Route::get('ressamlar/ekle', [adminController::class, 'painterCreate'])->name('painter.create');
	Route::post('ressamlar/ekle', [adminController::class, 'painterCreateSave'])->name('painter.create.save');
	Route::get('ressamlar/guncelle/{id}', [adminController::class, 'painterUpdate'])->name('painter.update');
	Route::post('ressamlar/guncelle', [adminController::class, 'painterUpdateSave'])->name('painter.update.save');
	Route::get('ressamlar/sil/{id}', [adminController::class, 'painterDelete'])->name('painter.delete');
	Route::get('ressamlar/silinen', [adminController::class, 'painterDeleted'])->name('painter.deleted');
	Route::get('ressamlar/recycle/{id}', [adminController::class, 'painterRecycle'])->name('painter.recycle');
	Route::get('ressamlar/tumsil/{id}', [adminController::class, 'painterHardDelete'])->name('painter.hard.delete');
	Route::get('sayilar', [adminController::class, 'periodList'])->name('period.list');
	Route::get('sayilar/yayinla/{id}/{durum}', [adminController::class, 'periodPublishUpdate'])->name('period.publish.update');
	Route::get('sayilar/{issue}/makaleler', [adminController::class, 'periodPosts'])->name('period.posts');
	Route::get('sayilar/manset/{id}/{issue}', [adminController::class, 'periodPostsHeadline'])->name('period.posts.headline');
	Route::get('setting', [adminController::class, 'setting'])->name('setting');
	Route::post('setting', [adminController::class, 'settingUpdate'])->name('setting.update');
});


/*  front routes */

Route::get('/', [homeController::class, 'periodControl'])->name('period.control');
Route::get('/{period}', [homeController::class, 'home'])->name('home');
Route::get('/{period}/{slug}', [homeController::class, 'post'])->name('post');

