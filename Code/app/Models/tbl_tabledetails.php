<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
class tbl_tabledetails extends Model
{
    protected $table = 'tbl_tabledetails';

    protected $fillable = [
        'name',
        'tablegroupid',
        'isactive',
        'isdeleted',
        'charges',
        'userid',
        'assignuserid',
    ];
}
