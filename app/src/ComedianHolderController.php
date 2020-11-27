<?php

namespace SilverStripe\WellingtonComedy;

use SilverStripe\ORM\PaginatedList;
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

}