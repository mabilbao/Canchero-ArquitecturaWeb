<?php namespace App;

use Illuminate\Database\Eloquent\Model;

class Partido extends Model {

	protected $table = 'partidos';
	protected $primaryKey = "partido_id";
    protected $imestamp = true;

}
