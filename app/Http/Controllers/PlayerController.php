<?php namespace App\Http\Controllers;

use Log;
use App\Jugador;

class PlayerController extends Controller {

    public function add()
    {
        return \View::make("player/add");
    }

    public function register(){

        Log::info(\Input::get());
        Log::info(\Input::file());

        $jugador = new Jugador();

        $jugador->nombre = \Input::get("nombre",null);
        $jugador->apodo = \Input::get("apodo",null);
        $jugador->email = \Input::get("email",null);

        $upload_success = null;

        $perfil = \Input::file('file');

        if ($perfil) {
            $destinationPath = 'filesystem';
            $filename = time() ."_" . rand(0,1000000);
            $upload_success = $perfil->move($destinationPath, $filename);
            if ( !$upload_success ) {
                return Response::json( ['success' => false] );
            }
            $jugador->foto_url = $filename;
        }

        $jugador->save();
        return \Response::json(["success" => true, "jugador_id" => $jugador->jugador_id]);
    }

}
