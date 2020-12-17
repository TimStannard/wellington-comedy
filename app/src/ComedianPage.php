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
use UncleCheese\EventCalendar\Models\CalendarDateTime;
use SilverStripe\ORM\GroupedList;
use Page; 

class ComedianPage extends Page 
{   
    
    // private static $show_in_sitetree = false;
    // private static $allowed_children = [];

    public function getChildFirstLetter() {
        return $this->Title[0];
    }

    public function CurrentPageURL()
    {
        return $this->URLSegment;
    }

    private static $can_be_root = false;

    private static $table_name = 'ComedianData';

    private static $db = [
        'Blurb' => 'Text',
        'Profile' => 'HTMLText',
        'Name' => 'Varchar'
    ];

    private static $belongs_many_many = array(
        'EventDateTime' => CalendarDateTime::class
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

    	$fields->addFieldToTab('Root.Main', HTMLEditorField::create('Profile','Profile info')
    		->setDescription('Longer profile and bio'), 'Content');  

        $fields->addFieldToTab('Root.Main', $photo =UploadField::create('Photo','Headshot photo'), 'Metadata');

        $fields->addFieldToTab('Root.Main', $name =TextField::create('Name','Name'), 'Blurb');

        $photo->setFolderName('comedian-photos');

        $fields->removeByName([
            'MenuTitle',
            'URLSegment',
            'Content',
            'Title'
        ]);

        return $fields;

  	}
        public function onBeforeWrite()
    {
        $this->owner->Title = $this->owner->Name;
        $this->owner->MenuTitle = $this->owner->Name;
        $this->owner->URLSegment = $this->owner->generateURLSegment($this->owner->Name);
        parent::onBeforeWrite();
    }

}