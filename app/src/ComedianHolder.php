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
}

class ComedianHolderController extends PageController 
{
	public function ViewComics() 
  { 
    return Comedian::get()
            ->limit(6);
  } 


}
