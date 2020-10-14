<?php

// namespace SilverStripe\WellingtonComedy;
// use Page; 
// use PageController; 

use SilverStripe\ORM\DataObject;    

// class ComedianPage extends Page 
// {

// 	private static $can_be_root = false;
//     private static $table_name = 'ComedianData';
// 	//Tell the system that we have multiple data elements relating to this page
//     private static $has_many = [
//     'ComedianData' => ComedianContent::class
//     ];

// }


// class ComedianPageController extends PageController 
// {

// }


class Comedian extends DataObject 
{

    private static $db = [
        'Name' => 'Varchar',
        'Blurb' => 'Varchar',
    ];

    private static $has_one = [
        'Category' => 'Category'
    ];
}
