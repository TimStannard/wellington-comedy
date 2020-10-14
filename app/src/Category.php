<?php

use SilverStripe\ORM\DataObject;

class Category extends DataObject 
{

    private static $db = [
        'Title' => 'Text'
    ];

    private static $has_many = [
        'Comedians' => 'Comedian'
    ];
}