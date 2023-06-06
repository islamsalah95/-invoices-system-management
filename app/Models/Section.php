<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Section extends Model
{
    use HasFactory;

    protected $fillable = [
        'section_name',
        'description',
        'Created_by',
    ];


    public function product()
    {
        return $this->hasMany(product::class,'section_id');
    }

    public function Invoice()
    {
        return $this->hasMany(Invoice::class,'section_id');
    }
}
