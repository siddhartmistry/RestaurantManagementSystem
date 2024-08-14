<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class tbl_userdetail extends Model
{
    protected $table = 'tbl_userdetails';
    protected $fillable = [
        'UserGroup_Id',
        'User_Name',
        'Password',
        'Email',
        'Type',
        'IsDisable',
        'Comp_Id',
        // Add other columns as needed
    ];

    public function userGroup()
    {
        return $this->belongsTo(tbl_usergroup::class, 'UserGroup_Id');
    }
}
