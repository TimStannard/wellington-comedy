<?php

namespace SilverStripe\WellingtonComedy;

use SilverStripe\View\Requirements;
use UncleCheese\EventCalendar\Pages\CalendarEvent;
use SilverStripe\Assets\Image;
use SilverStripe\AssetAdmin\Forms\UploadField;
use SilverStripe\Forms\TextareaField;
use SilverStripe\Forms\TextField;
use SilverStripe\Assets\File;
use SilverStripe\Forms\HTMLEditor\HTMLEditorField;

use Page; 

class VenuePage extends Page 
{

    private static $table_name = 'VenueData';

    private static $db = [
        'Website' => 'Varchar'
    ];

    private static $has_one = [
        'Logo' => Image::class
    ];

    private static $owns = [
        'Logo'
    ];

    private static $can_be_root = false;

    private static $belongs_many_many = array(
        'Events' => CalendarEvent::class
    );

    private static $searchable_fields = [
        'Name'
    ];

   private static $icon_class = 'font-icon-block-content';

    public function getCMSFields() 
  	{

        $fields = parent::getCMSFields();

    	$fields->addFieldToTab('Root.Main', TextField::create('Website','Link to website'), 'Metadata');

        $fields->addFieldToTab('Root.Main', $logoimage =UploadField::create('Logo','Venue logo'), 'Metadata');

        $logoimage->setFolderName('Venue-logos');

        $fields->removeByName([
            'MenuTitle',
            'URLSegment',
            'Content',
            'Metadata'
        ]);

        return $fields;

  	}

}