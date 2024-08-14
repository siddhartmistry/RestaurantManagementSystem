<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class tbl_salestransaction extends Model
{
    protected $table = 'tbl_salestransaction';
    protected $fillable = [
        'Sales_Id',
        'Item_Id',
        'Qty',
        'Rate',
        'Discount1',
        'Discount2',
        'Amount',
        'DiscAmt1',
        'DiscAmt2',
        'NoOfQty',
        'SGSTTax',
        'SGSTAmt',
        'CGSTTax',
        'CGSTAmt',
        'IGSTTax',
        'IGSTAmt',
        'MeterLT',
        'Serial1',
        'Serial2',
        'InsertTime',
        'InsertSys',
        'UpdateTime',
        'UpdateSys',
        'Remarks',
        'IsFreeQty',
        'ItemOrder',
    ];
}
