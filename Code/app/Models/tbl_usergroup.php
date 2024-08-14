<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class tbl_usergroup extends Model
{
    protected $table = 'tbl_usergroup';
    protected $fillable = [
        'name',
        'description',
        // Add other columns as needed
    ];
    public function userDetails()
    {
        return $this->hasMany(tbl_userdetail::class, 'UserGroup_Id');
    }
}
