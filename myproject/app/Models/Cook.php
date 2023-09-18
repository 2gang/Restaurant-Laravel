<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Cook extends Model
{
    use HasFactory;
	
	protected $fillable = [
		'majors_id16',
		'name16',
		'career16',
		'pic16',
	];
}
