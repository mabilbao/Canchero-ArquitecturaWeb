<?php namespace App\Http\Controllers;

class PlayerController extends Controller {

    public function add()
    {
        return \View::make("player/add");
    }

    public function register(){
//        var_dump("Hola");
        return \Response::json(["success" => true, "jugador_id" => 1]);


    }

}
