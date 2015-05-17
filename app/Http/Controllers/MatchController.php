<?php

namespace App\Http\Controllers;
use App\TamanoCancha;
use App\Partido;


class MatchController extends Controller {

    public function match(){

        $post = \Input::get();
        $data = array();

        $tamanos_canchas = TamanoCancha::all();
        foreach ($tamanos_canchas as $t) {
            $data['tamano_cancha'][$t->tamano_cancha_id] = $t;
        }


        $data['tamano_cancha'] = TamanoCancha::all();

        if ( $post ){

            $partido = new Partido();
            $partido->user_id = null;
            $partido->cancha_id = null;
            $partido->fecha = new \DateTime();
            $partido->resultado_equipo_1 = null;
            $partido->resultado_equipo_2 = null;

            $partido->save();
        }

        return \View::make("match/index", $data);
    }
}
