<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Post extends Model
{
	use SoftDeletes;
    use HasFactory;
	public function getKind(){
		return $this->hasOne('App\Models\Post_kind', 'id', 'kind');
	}
	
	public function getAuthor(){
		return $this->hasOne('App\Models\Author', 'id', 'author');
	}
	
	public function getPainter(){
		return $this->hasOne('App\Models\Painter', 'id', 'painter');	
	}
}
