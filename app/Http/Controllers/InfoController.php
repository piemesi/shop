<?php

namespace App\Http\Controllers;

use App\Tag;
use Illuminate\Http\Request;
use TCG\Voyager\Models\Post;

class InfoController extends Controller
{
    public function showItems($item){
//.$item

        $tags = Tag::all()->toArray();
        $data = Post::where('category_id',1)->with('tags')->get()->toArray();

        return view('info.list',[
            'tags'=>$tags,
            'data' => $data,
            'item' => $item
        ]);
    }
}
