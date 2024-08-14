<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
class tbl_systemaccount extends Model
{
    protected $table = 'tbl_systemaccount';

    protected $fillable = [
        'SysAccountName',
        'Year_Id',
        'Comp_Id',
        'Remarks',
    ];
}

