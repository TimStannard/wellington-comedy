<?php

namespace SilverStripe\WellingtonComedy;

use Page;   
use PageController;   

class ComedianHolder extends Page 
{
    private static $has_many = [
    'Comedians' => Comedian::class,
	];

    private static $owns = [
    'Comedians'
    ];

    public function ViewComics() 
  { 
    return Comedian::get();
  } 
}

class ComedianHolderController extends PageController 
{



}
