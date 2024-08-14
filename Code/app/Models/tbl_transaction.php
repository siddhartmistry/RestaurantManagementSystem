<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
class tbl_transaction extends Model
{
    protected $table = 'tbl_transaction';

    protected $fillable = [
        'Trans_Date',
        'Trasaction_Id',
        'Trans_Type',
        'Sys_Account_Id',
        'Dr_Amt',
        'Cr_Amt',
        'Cheque',
        'BankDetail',
        'Remarks',
        'Bill_No',
        'Comp_Id',
        'Year_Id',
    ];
}

