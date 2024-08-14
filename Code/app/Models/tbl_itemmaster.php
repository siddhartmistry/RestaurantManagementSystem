<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class tbl_itemmaster extends Model
{
    protected $table = 'tbl_itemmaster';
    protected $fillable = [
        'ItemName',
        'Description',
        'Group_Id',
        'Comp_Id',
        'Rate',
        'Discount',
        'TAX',
        'Amount',
    ];
}
