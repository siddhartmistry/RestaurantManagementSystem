<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class tabletransactions extends Model
{
    protected $table = 'tabletransactions';

    protected $fillable = [
        'table_id',
        'order_id',
        'user_id',
        'total_amount',
        'paid_amount',
        'change_amount',
        'status',
        'items',
    ];
}
