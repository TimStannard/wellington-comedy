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
		$r = new ArrayList();	
		foreach( $ce as $e ){
			if ($e){
				foreach($e->DateTimes() as $dt) {
					$date = $dt->dbObject('StartDate');
					if($date->InFuture()){ 
						$r->push($dt);
					} 
				}			
			}
		}
		$sorted = $r->sort('StartDate ASC');
		return $sorted;
	}
}