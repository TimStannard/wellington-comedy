<?php

namespace SilverStripe\WellingtonComedy;

use Page;    

class ComedianHolder extends Page 
{
   private static $allowed_children = [
      ComedianPage::class
    ];
}