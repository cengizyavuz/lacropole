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
}
