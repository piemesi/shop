<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Models\Post;


class Tag extends Model
{
    public function posts(){
        return $this->belongsToMany(Post::class, 'post_tag');
    }
}
