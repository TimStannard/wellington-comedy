<?php

namespace SilverStripe\WellingtonComedy;

use PageController;    

class ComedianController extends PageController
{

	public function GetComicEvents()
	{	
		$ce = CalendarEvent::get()->filter([
		'DateTimes.StartTime:GreaterThan' => time(),
		'IsFeatured' => true
		]);
		$r = new ArrayList();	
		foreach( $ce as $e ){
			if ($e){
				foreach($e->DateTimes() as $dt) {
					$date = $dt->dbObject('StartDate');
					if($date->IsToday()){ 
						$r->push($dt);
					} 
				}			
			}
		}
		return $r;
	}

}