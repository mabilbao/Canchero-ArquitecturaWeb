<?php namespace App;

use Illuminate\Database\Eloquent\Model;

class Jugador extends Model {

	protected $table = 'jugadores';
	protected $primaryKey = "jugador_id";
    protected $timestamp = true;

}
