<?php

namespace SilverStripe\WellingtonComedy;

use Page;    

class VenueHolder extends Page 
{
   private static $allowed_children = [
      VenuePage::class
    ];

   private static $icon_class = 'font-icon-p-home';

   public function getCMSFields() 
  	{

        $fields = parent::getCMSFields();
        $fields->removeByName([
            'MenuTitle',
            'Title',
            'URLSegment',
            'Content'
        ]);

        return $fields;

  	}
}