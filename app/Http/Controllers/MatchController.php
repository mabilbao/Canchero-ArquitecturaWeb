<?php namespace App\Http\Controllers;

class MatchController extends Controller {

    public function match(){

        $post = \Input::get();
        $data = array();

        $data['tamano_cancha'] = array(
            "5" => "Cancha de 5",
            "6" => "Cancha de 6",
            "7" => "Cancha de 7",
            "9" => "Cancha de 9",
            "11" => "Cancha de 11",

        );


        if ( $post ){




        }

        return \View::make("match/index", $data);
    }

}
