<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class tbl_company extends Model
{
    protected $table = 'tbl_company';
    protected $fillable = [
        'Company_Name',
        'Company_Email',
        'Password',
        'Company_Desc',
        'Address',
        'City',
        'Phone1',
        'Mobile1',
        'Remarks',
        'EmailAddress',
        'WebSite',
        'FreeSalesRemarks',
        // Add other columns as needed
    ];
}
