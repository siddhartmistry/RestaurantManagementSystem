<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class tbl_itemgroup extends Model
{
    protected $table = 'tbl_itemgroup';
    protected $fillable = [
        'ItemGroupName',
        'Comp_Id',
    ];
}
