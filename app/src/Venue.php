<?php

use SilverStripe\ORM\DataObject;
use SilverStripe\Assets\Image;
use SilverStripe\AssetAdmin\Forms\UploadField;
use UncleCheese\EventCalendar\Pages\CalendarEvent;

class Venue extends DataObject 
{

    private static $db = [
        'Name' => 'Varchar',
        'Website' => 'Varchar'
    ];

    private static $has_one = [
        'Logo' => Image::class
    ];

    private static $owns = [
        'Logo'
    ];

    // private static $belongs_many_many = array(
    //     'Events' => CalendarEvent::class
    // );

} 