<?php

namespace SilverStripe\WellingtonComedy;

use PageController;
use UncleCheese\EventCalendar\Pages\CalendarEvent;
use SilverStripe\ORM\ArrayList;

class HomePageController extends PageController 
{
	public function TodaysEvents()
	{	
		$ce = CalendarEvent::get()->filter([
		'DateTimes.StartTime:GreaterThan' => time(),
		'IsFeatured' => false
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

	public function TodaysFeaturedEvents()
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

	public function GetWeekEvents()
	{	
		$ce = CalendarEvent::get();
		$dtime = strtotime("01/02/2021");
		$r = new ArrayList();	
		foreach( $ce as $e ){
			if ($e){      									//for each event
				foreach($e->DateTimes() as $dt) { 			//loop over date times of event
					$date = $dt->dbObject('StartDate');		//loop over each date as $date
					if($date->InFuture() && $date < $dtime ){ 					
						$r->push($dt);
					} 
				}			
			}
		}
		// loop over all $r and filter by earliest date
		$sorted = $r->sort('StartDate ASC');
		return $sorted;
	}
}

// $ce = CalendarEvent::get()->filter(['Title' => 'Raw Meat Monday']);

// echo '<script type="text/javascript">
// console.log("test");
// </script>'; 