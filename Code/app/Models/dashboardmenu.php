<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class dashboardmenu extends Model
{
    protected $table = 'dashboardmenu';
    protected $fillable = ['name', 'route', 'icon', 'parent_id','usergroup_id'];
    public function children()
    {
        return $this->hasMany(dashboardmenu::class, 'parent_id');
    }
}
