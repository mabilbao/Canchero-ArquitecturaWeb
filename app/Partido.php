<?php namespace App;

use Illuminate\Database\Eloquent\Model;

class Partido extends Model {

	protected $table = 'partidos';
	protected $primaryKey = "partido_id";
    protected $timestamp = true;

    public function equipo_1(){
        return $this->hasOne('Equipo', "equipo_1_id", "equipo_id");
    }

    public function equipo_2(){
        return $this->hasOne('Equipo', "equipo_2_id", "equipo_id");
    }


}
