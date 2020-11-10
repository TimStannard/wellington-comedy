<?php

namespace SilverStripe\WellingtonComedy;

use Page; 
use PageController;     

class VenueHolder extends Page 
{

	private static $allowed_children = [
     	Venue::class
    ];

    private static $hide_ancestor = 'VenueHolder';

}


class VenueHolderController extends PageController 
{

}