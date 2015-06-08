<?php namespace App;

use Illuminate\Database\Eloquent\Model;


class Equipo extends Model {

	protected $table = 'equipos';
	protected $primaryKey = "equipo_id";
    protected $timestamp = true;

    public function jugadores(){
        return $this->belongsToMany('App\Jugador','equipos_jugadores');
    }

}
