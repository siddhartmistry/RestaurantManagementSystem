<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class tbl_salesmaster extends Model
{
    protected $table = 'tbl_salesmaster';
    protected $fillable = [
        'Bill_No',
        'PreBill_No',
        'Bill_Date',
        'Total_Amount',
        'Discount',
        'Net_Amount',
        'Advance_Amount',
        'Pending_Amount',
        'SysAccount_Id',
        'Account_Id',
        'Year_Id',
        'Comp_Id',
        'User_Id',
        'Account_TransId',
        'DeliveryTo',
        'OrderNo',
        'OrderDate',
        'InsertTime',
        'InsertSys',
        'UpdateTime',
        'UpdateSys',
    ];
}
