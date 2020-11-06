<?php

namespace SilverStripe\WellingtonComedy;

use SilverStripe\View\Requirements;
use UncleCheese\EventCalendar\Models\CachedCalendarEntry;
use UncleCheese\EventCalendar\Models\CalendarAnnouncement;
use UncleCheese\EventCalendar\Models\ICSFeed;
use UncleCheese\EventCalendar\Pages\CalendarController;
use UncleCheese\EventCalendar\Pages\CalendarEvent;
use UncleCheese\EventCalendar\Pages\Calendar;
use UncleCheese\EventCalendar\Views\CalendarWidget;
use UncleCheese\EventCalendar\Models\CalendarDateTime;
use SilverStripe\Assets\Image;
use SilverStripe\AssetAdmin\Forms\UploadField;
use SilverStripe\Forms\TextareaField;
use SilverStripe\Forms\TextField;
use SilverStripe\Assets\File;
use SilverStripe\Forms\HTMLEditor\HTMLEditorField;

use Page; 

class ComedianPage extends Page 
{

    public function CurrentPageURL()
    {
        return $this->URLSegment;
    }

    private static $can_be_root = false;

    private static $table_name = 'ComedianData';

    private static $db = [
        'Blurb' => 'Text',
        'Profile' => 'Text',
    ];

    private static $belongs_many_many = array(
        'Events' => CalendarEvent::class
    );

    private static $has_one = [
        'Photo' => Image::class
    ];

    private static $owns = [
        'Photo'
    ];

    private static $searchable_fields = [
        'Name'
    ];

   private static $icon_class = 'font-icon-block-user';

    public function getCMSFields() 
  	{

        $fields = parent::getCMSFields();

    	$fields->addFieldToTab('Root.Main', TextField::create('Blurb','Short blurb')
    		->setDescription('E.g. Winner of Raw Quest 2020'), 'Content');  

    	$fields->addFieldToTab('Root.Main', TextareaField::create('Profile','Profile info')
    		->setDescription('Longer profile and bio'), 'Content');  

        $fields->addFieldToTab('Root.Main', $photo =UploadField::create('Photo','Headshot photo'), 'Metadata');

        $photo->setFolderName('comedian-photos');

        $fields->removeByName([
            'MenuTitle',
            'URLSegment',
            'Content',
        ]);

        return $fields;

  	}

}