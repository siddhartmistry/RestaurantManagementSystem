<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
class tbl_tablegroup extends Model
{
    protected $table = 'tbl_tablegroup';

    protected $fillable = [
        'roomtype',
        'tabletype',
        'person',
        'isactive',
    ];
}

