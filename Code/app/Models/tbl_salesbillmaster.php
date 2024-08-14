<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class tbl_salesbillmaster extends Model
{
    protected $table = 'tbl_salesbillmaster';
    protected $fillable = [
        'Account_Id',
        'Sales_Id',
        'Bill_No',
        'PreBill_No',
        'Bill_Date',
        'Net_Amount',
        'Advance_Amount',
        'Pending_Amount',
        'User_Id',
        'Year_Id',
        'Comp_Id',
        'Remarks',
        'PaymentCompleteDate',
    ];
}
