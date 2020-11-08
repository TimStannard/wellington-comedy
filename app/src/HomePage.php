<?php

namespace SilverStripe\WellingtonComedy;

use SilverStripe\View\Requirements;
use SilverStripe\Forms\TextareaField;

use Page; 

class HomePage extends Page 
{
	private static $db = [
        'HomePageBlurb' => 'Text'
    ];

     public function getCMSFields() 
  	{

        $fields = parent::getCMSFields();

    	$fields->addFieldToTab('Root.Main', TextareaField::create('HomePageBlurb','Short blurb')
    		->setDescription('This sits by default on the front page when there are no gigs on today'), 'Content');  

        $fields->removeByName([
            'Content'
        ]);

        return $fields;

  	}
}