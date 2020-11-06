<?php

namespace SilverStripe\WellingtonComedy;

use SilverStripe\View\Requirements;
use UncleCheese\EventCalendar\Models\CachedCalendarEntry;
use UncleCheese\EventCalendar\Models\CalendarAnnouncement;
use UncleCheese\EventCalendar\Models\ICSFeed;
use UncleCheese\EventCalendar\Pages\CalendarController;
use UncleCheese\EventCalendar\Pages\CalendarEvent;
use UncleCheese\EventCalendar\Pages\Calendar;
use UncleCheese\EventCalendar\Views\CalendarWidget;
use UncleCheese\EventCalendar\Models\CalendarDateTime;

use Page; 

class HomePage extends Page 
{
    public function ViewEvents() 
  { 
    return CalendarEvent::get();
  } 
}