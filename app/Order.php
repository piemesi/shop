<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Order extends Model
{
    public function userId(){
        return $this->belongsTo(User::class);
    }
}
