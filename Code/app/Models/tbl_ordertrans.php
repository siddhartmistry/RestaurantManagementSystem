<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class tbl_ordertrans extends Model
{
    protected $table = 'tbl_ordertrans';
    protected $fillable = [
        'order_id',
        'item_id',
        'qty',
        'rate',
        'discount1',
        'discount2',
        'amount',
        'disc_amt1',
        'disc_amt2',
        'no_of_qty',
        'sgst_tax',
        'sgst_amt',
        'cgst_tax',
        'cgst_amt',
        'igst_tax',
        'igst_amt',
        'meter_lt',
        'serial1',
        'serial2',
        'insert_time',
        'insert_sys',
        'update_time',
        'update_sys',
        'remarks',
        'is_free_qty',
        'item_order',
    ];
}
