<?php

namespace SilverStripe\WellingtonComedy;

use PageController;
use SilverStripe\Control\HTTPRequest;
use UncleCheese\EventCalendar\Pages\CalendarEvent;
use SilverStripe\WellingtonComedy\ComedianPage;
use SilverStripe\WellingtonComedy\VenuePage;
use SilverStripe\ORM\ArrayList;

class SearchResultsPageController extends PageController
{

	public function index(HTTPRequest $request)
    {
        $comedians = ComedianPage::get();
		$ce = CalendarEvent::get();
		$keywords = $request->getVar('Keywords');

       if ($search = $request->getVar('Keywords')) {
    		$ce = $ce->filter([
        	'Title:PartialMatch' => $search             
    		]);
		}

		$r = new ArrayList();	
		foreach( $ce as $e ){
			if ($e){      
				$grabbed = false;								
				foreach($e->DateTimes() as $dt) { 			
					$date = $dt->dbObject('StartDate');			
					if($date->InFuture() && $grabbed == false ){ 
						$grabbed = true;				
						$r->push($dt);
					} 
				}			
			}
		}
		$sortedevents = $r->sort('StartDate ASC');

        if ($search = $request->getVar('Keywords')) {
    		$comedians = $comedians->filter([
        	'Title:PartialMatch' => $search             
    		]);
		}

		$numberresults = count($comedians) + count($sortedevents);
		$noresult = null;
		if ($numberresults == 1){
			$singleresult = true;
			$manyresult = false;
		} else if ($numberresults > 1) {
			$singleresult = false;
			$manyresult = true;
		} else {
			$noresult = true;
		}

		if (!$noresult) {
			return [
            'Comics' => $comedians,
            'Events' => $sortedevents,
            'Keywords' => $keywords,
            'ResultsCount' => $numberresults,
            'SingleResult' => $singleresult,
            'ManyResult' => $manyresult
        	];

		}else {
			return [
            'NoResult' => $noresult,
            'Keywords' => $keywords
        	];
		}
        
    }
    
}