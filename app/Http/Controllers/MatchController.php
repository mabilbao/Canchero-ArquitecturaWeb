<?php

namespace App\Http\Controllers;
use App\TamanoCancha;
use App\Partido;
use App\Jugador;
use App\Equipo;
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

            if ( \Auth::check() ) {

                // Creacion del equipo 1
                $equipo_1 = new Equipo();
                $equipo_1->nombre = $post["nombre_equipo_1"] == "" ? "Equipo 1" : $post["nombre_equipo_1"];
                $equipo_1->save();
                //Agrego jugadores al equipo 1
                $equipo_1->jugadores()->sync($post["equipo-1"]);

                // Creacion del equipo 2
                $equipo_2 = new Equipo();
                $equipo_2->nombre = $post["nombre_equipo_2"] == "" ? "Equipo 2" : $post["nombre_equipo_2"];
                $equipo_2->save();
                //Agrego jugadores al equipo 2
                $equipo_2->jugadores()->sync($post["equipo-2"]);

                //Creacion del partido
                $partido = new Partido();
                $partido->user_id = \Auth::user()->user_id;
                $partido->cancha_id = null;
                $partido->equipo_1_id = $equipo_1->equipo_id;
                $partido->equipo_2_id = $equipo_2->equipo_id;
                $partido->fecha = new \DateTime();
                $partido->resultado_equipo_1 = null;
                $partido->resultado_equipo_2 = null;
                $partido->direccion = $post["direccion"];
                $partido->save();

                //Envio mail con informacion
                //Equipo 1
                foreach ( $post["equipo-1"] as $j ) {
                    $jugador = Jugador::find( $j );
                    if ( $jugador->email ) {
                        $mails_equipo_1[] = $jugador->email;
                    }
                    if ( $jugador->apodo ){
                        $nombre_jugadores_equipo_1 = $jugador->apodo;
                    } else {
                        $nombre_jugadores_equipo_1 = $jugador->nombre;
                    }
                }
                //Equipo 2
                foreach ( $post["equipo-2"] as $j ) {
                    $jugador = Jugador::find( $j );
                    if ( $jugador->email ) {
                        $mails_equipo_2[] = $jugador->email;
                    }
                    if ( $jugador->apodo ){
                        $nombre_jugadores_equipo_2 = $jugador->apodo;
                    } else {
                        $nombre_jugadores_equipo_2 = $jugador->nombre;
                    }
                }
                $this->armarYEnviarMail( $mails_equipo_1,
                    $mails_equipo_2,
                    $nombre_jugadores_equipo_1,
                    $nombre_jugadores_equipo_2,
                    $equipo_1->nombre,
                    $equipo_2->nombre,
                    $partido->direccion,
                    $partido->fecha
                );

                Session::put("partido_id", $partido->patido_id);

            }else{

                //Envio mail con informacion
                $this->armarYEnviarMail( $post["equipo-1"]["mails"],
                    $post["equipo-2"]["mails"],
                    $post["equipo-1"]["nombres"],
                    $post["equipo-2"]["nombres"],
                    $post["nombre_equipo_1"] == "" ? "Equipo 1" : $post["nombre_equipo_1"],
                    $post["nombre_equipo_2"] == "" ? "Equipo 2" : $post["nombre_equipo_2"],
                    $post["direccion"],
                    new \DateTime()
                );
            }
            return \Redirect::to("match/congratulation");
        }
        return \View::make("match/index", $data);
    }

    public function congratulation(){
        $partido_id = Session::pull('partido_id', null);
        $data = array();

        if ( $partido_id ){
            $data["partido"] = Partido::find($partido_id);
        }

        return \View::make("match/congratulation", $data);
    }

    private function armarYEnviarMail( $mails_equipo_1,
                                       $mails_equipo_2,
                                       $nombre_jugadores_equipo_1,
                                       $nombre_jugadores_equipo_2,
                                       $equipo_1_nombre,
                                       $equipo_2_nombre,
                                       $direccion,
                                       $fecha){

        //Logica para armar el mail a enviar

    }
}