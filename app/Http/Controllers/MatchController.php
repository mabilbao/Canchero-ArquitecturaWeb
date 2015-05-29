<?php

namespace App\Http\Controllers;
use App\TamanoCancha;
use App\Partido;
use Illuminate\Support\Facades\Session;


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

//            var_dump($post);die;

            //Equipo 1
            foreach ($post["equipo-1"] as $jugador) {

            }

            //Equipo 2
            foreach ($post["equipo-2"] as $jugador) {

            }

//            $partido = new Partido();
//            $partido->user_id = null;
//            $partido->cancha_id = null;
//            $partido->fecha = new \DateTime();
//            $partido->resultado_equipo_1 = null;
//            $partido->resultado_equipo_2 = null;
//            $partido->direccion = $post["direccion"];
//
//            $partido->save();

            Session::put("partido_id", /*$partido->patido_id*/1);
            return \Redirect::to("match/congratulation");

        }
        return \View::make("match/index", $data);
    }

    public function congratulation(){
        $partido_id = Session::pull('partido_id', null);

        if ( !$partido_id ){
            return \View::make("/");
        }

//        var_dump($partido_id);

        return \View::make("match/congratulation");
    }
}