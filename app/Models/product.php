<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class product extends Model
{
    use HasFactory;
    protected $fillable = [
        'id',
        'Product_name',
        'description',
        'section_id',
    ];

     public function section()
    {
        return $this->belongsTo(Section::class, 'section_id');
    }

}
