<?php

use SilverStripe\ORM\DataObject;
use SilverStripe\Assets\Image;
use SilverStripe\AssetAdmin\Forms\UploadField;

class Comedian extends DataObject 
{

    private static $db = [
        'Name' => 'Varchar',
        'Short Blurb' => 'Varchar',
        'Profile' => 'Text',
    ];

       private static $has_one = [
        'Photo' => Image::class
    ];

        // private static $has_one = [
    //     'Category' => 'Category'
    // ];
}