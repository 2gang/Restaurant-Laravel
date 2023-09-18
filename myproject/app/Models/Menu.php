<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Menu extends Model
{
    use HasFactory;
	
	protected $fillable = [
		'kidns_id16',
		'name16',
		'price16',
		'descrip16',
		'pic16',
	];
}
