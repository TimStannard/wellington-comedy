<?php

namespace SilverStripe\WellingtonComedy;

use SilverStripe\ORM\DataObject;
use SilverStripe\Assets\Image;
use SilverStripe\AssetAdmin\Forms\UploadField;

class Comedian extends DataObject 

{

    private static $table_name = 'IndividualComedian';

    private static $db = [
        'Name' => 'Varchar',
        'Blurb' => 'Varchar',
        'Profile' => 'Text',
    ];

       private static $has_one = [
        'Photo' => Image::class
    ];
        private static $owns = [
        'Photo'
    ];

        private static $searchable_fields = [
        'Name'
    ];


}