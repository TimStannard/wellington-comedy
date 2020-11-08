<?php

namespace SilverStripe\WellingtonComedy;

use PageController;
use UncleCheese\EventCalendar\Pages\CalendarEvent;

class HomePageController extends PageController 
{
	public function TodaysEvents()
	{
		return CalendarEvent::get()
		->filter([
			'DateTimes.StartDate' => date('Y-m-d'),
			'DateTimes.StartTime:GreaterThan' => time(),
			'IsFeatured' => false
		]);

	}
	public function TodaysFeaturedEvents()
	{
		return CalendarEvent::get()
		->filter([
			'DateTimes.StartDate' => date('Y-m-d'),
			'DateTimes.StartTime:GreaterThan' => time(),
			'IsFeatured' => true
		]);

	}

}

