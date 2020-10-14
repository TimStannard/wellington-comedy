<?php

namespace SilverStripe\WellingtonComedy;

use Page; 
use PageController;     

class ComedianHolder extends Page 
{


}


class ComedianHolderController extends PageController 
{
	public function ViewComics() 
  { 
    // return Comedian::get()
    //        ->sort('Created', 'DESC')
    //        ->limit(3);
  } 
}

