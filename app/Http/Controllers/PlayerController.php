<?php namespace App\Http\Controllers;

class PlayerController extends Controller {

    public function add()
    {
        return \View::make("player/add");
    }

}
