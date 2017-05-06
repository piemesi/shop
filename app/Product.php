<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Models\Category;

class Product extends Model
{
    public function categoryId(){
        return $this->belongsTo(Category::class);
    }

    public function brandId(){
        return $this->belongsTo(Brand::class,'brand_id','id');
    }

    public function accessoryId(){
        return $this->belongsTo(AccessosaryType::class,'accessory_id','id');
    }
}
