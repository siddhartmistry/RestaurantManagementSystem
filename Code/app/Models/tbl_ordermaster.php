<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class tbl_ordermaster extends Model
{
    protected $table = 'tbl_ordermaster';

    protected $fillable = [
        'Order_No',
        'PreOrder_No',
        'Order_Date',
        'Total_Amount',
        'Discount',
        'Net_Amount',
        'Advance_Amount',
        'Pending_Amount',
        'Account_Id',
        'SysAccount_Id',
        'Year_Id',
        'Comp_Id',
        'User_Id',
        'DeliveryTo',
        'InsertTime',
        'InsertSys',
        'UpdateTime',
        'UpdateSys',
        'status',
    ];
}
