<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/

//My routes

Route::any('/', 'WelcomeController@index');

Route::group(array('prefix'=>'match'),function() {
    Route::any('/', "MatchController@match");
});


Route::group(array('prefix'=>'player'),function() {
    Route::any('/add', "PlayerController@add");
});

/* Necesitamos revisar de que se trata esto dado que aparecio en la version 5.0 de laravel*/
Route::get('home', 'HomeController@index');

Route::controllers([
	'auth' => 'Auth\AuthController',
	'password' => 'Auth\PasswordController',
]);
