<?php

namespace SilverStripe\WellingtonComedy;

use SilverStripe\View\Requirements;
use SilverStripe\Forms\TextareaField;
use SilverStripe\Assets\Image;
use SilverStripe\AssetAdmin\Forms\UploadField;

use Page; 

class HomePage extends Page 
{

  private static $table_name = 'HomePageData';

	private static $db = [
        'HomePageBlurb' => 'Text'
    ];

 private static $has_one = [
        'HomeImage' => Image::class
    ];

    private static $owns = [
        'HomeImage'
    ];


     public function getCMSFields() 
  	{

        $fields = parent::getCMSFields();

    	$fields->addFieldToTab('Root.Main', TextareaField::create('HomePageBlurb','Short blurb')
    		->setDescription('This sits by default on the front page when there are no gigs on today'), 'Content');  

      $fields->addFieldToTab('Root.Main', $homeimage =UploadField::create('HomeImage','Default image')
        ->setDescription('Image for the front page when there are no gigs on today'), 'Metadata');

      $homeimage->setFolderName('Home-page-slider-images');

        $fields->removeByName([
            'Content'
        ]);

        return $fields;

  	}
}