<?php

namespace SilverStripe\WellingtonComedy;

use Page;    
// use SilverStripe\Lumberjack\Model\Lumberjack;

class ComedianHolder extends Page
{

	// private static $extensions = [
 //        Lumberjack::class,
 //    ];

 //        public function getLumberjackTitle() {
 //        return _t(__CLASS__ . '.TabTitle', 'Comedian list');
 //    }

	private static $allowed_children = [
	  ComedianPage::class
	];

	private static $icon_class = 'font-icon-torsos-all';


}