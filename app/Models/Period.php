<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Period extends Model
{
	use SoftDeletes;
    use HasFactory;
	
	public function getPost(){
		return $this->hasMany('App\Models\Post', 'issue', 'issue');	
	}
}
