<?php

namespace SilverStripe\WellingtonComedy;


use UncleCheese\EventCalendar\Pages\CalendarEvent;  
use UncleCheese\EventCalendar\Models\CalendarDateTime;
use SilverStripe\ORM\ArrayList;
use PageController;  

class ComedianPageController extends PageController
{

 public function GetComedianEvents()
 	{	
		$ce = CalendarEvent::get();
		$r = new ArrayList();	
		foreach( $ce as $e ){
			if ($e){      							
				foreach($e->DateTimes() as $dt) { 			
					$date = $dt->dbObject('StartDate');
					$cpages = $dt->DateTimeComics();			
					if($date->InFuture()){ 	
						foreach( $cpages as $c ){
							if($c){
								$cname = $c->dbObject('Title');
								foreach($cname as $ctitle) {
									if ($cname == $this->Title){
										$r->push($dt);
										}	
									}
								}
							}
						}
					}
				}
			}
		$sorted = $r->sort('StartDate ASC');
		return $sorted;
	}
}


