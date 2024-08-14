<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
class tbl_tempmaster extends Model
{
    protected $table = 'tbl_tempmaster';

    protected $fillable = [
        'year_id',
        'comp_id',
        'user_id',
        'insert_time',
        'insert_sys',
        'update_time',
        'update_sys',
    ];
}

