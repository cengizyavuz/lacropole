<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Support\Facades\Auth;

class AuthController extends Controller
{
    public function login(){
		return view('back.login');	
	}
	
	public function loginPost(Request $request){
		if(Auth::attempt(['email' => $request->email, 'password' => $request->password])){
			//toastr()->success('Tekrar Hoşgeldiniz  ' . Auth::user()->first_name);
			return redirect()->route('admin.home');
		} else {
			return redirect()->route('admin.login')->withErrors('Email adresi ya da şifre hatalı');
		}
	}
	
	public function logout(){
		Auth::logout();
		return redirect()->route('admin.login');
	}
}
