<?php

namespace SilverStripe\WellingtonComedy;

use Page; 
use PageController;     

class ComedianHolder extends Page 
{

	  private static $allowed_children = [
      ComedianPage::class
    ];
     private static $hide_ancestor = 'ComedianHolder';

}


class ComedianHolderController extends PageController 
{

}

