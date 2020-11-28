<?php

namespace SilverStripe\WellingtonComedy;

use SilverStripe\ORM\PaginatedList;
use SilverStripe\ORM\GroupedList;
use PageController;    

class ComedianHolderController extends PageController
{

	public function ShowChildren() {
        $r = $this->Children()
            ->sort('Title','asc');
            $pages = new PaginatedList($r, $this->getRequest());
            $pages->setPageLength(12);
            return $pages;
    }

    	public function getGroupedChildren() {
        $r = $this->Children()
            ->sort('Title','asc');
        return GroupedList::create($r);
    }

}