<?php

namespace {

use SilverStripe\CMS\Controllers\ContentController;
use SilverStripe\View\Requirements;
use SilverStripe\Forms\FieldList;
use SilverStripe\Forms\TextField;
use SilverStripe\Forms\EmailField;
use SilverStripe\Forms\TextareaField;
use SilverStripe\Forms\LiteralField;
use SilverStripe\Forms\FormAction;
use SilverStripe\Forms\Form;
use SilverStripe\Forms\RequiredFields;
use SilverStripe\Control\Email\Email;

use SilverStripe\ORM\ArrayLib;

    class PageController extends ContentController
    {

        public function SearchForm() 
        { 
            $fields = new FieldList( 
                TextField::create('Keywords','')->setAttribute('placeholder', 'Search...'),
            ); 
            $actions = new FieldList( 
            new FormAction('submit', 'Search') 
            ); 
            $required = new RequiredFields([
            'Keywords'
            ]);
            $form = Form::create($this, 'SearchForm', $fields, $actions, $required);
            $form->setFormMethod('GET')
                ->setFormAction("search-results", "See the results page")
                ->disableSecurityToken();
            $form->setTemplate('SearchFormTemplate');
            return $form;
        }

        /**
         * An array of actions that can be accessed via a request. Each array element should be an action name, and the
         * permissions or conditions required to allow the user to access it.
         *
         * <code>
         * [
         *     'action', // anyone can access this action
         *     'action' => true, // same as above
         *     'action' => 'ADMIN', // you must have ADMIN permissions to access this action
         *     'action' => '->checkAction' // you can only access this action if $this->checkAction() returns true
         * ];
         * </code>
         *
         * @var array
         */

        // private static $allowed_actions = [];

        protected function init()
        {
            parent::init();
            Requirements::css('css/bootstrap.min.css');
            Requirements::css('css/animate.css');
            Requirements::css('css/font-awesome.min.css');
            Requirements::css('css/style.css');
            Requirements::javascript('js/jquery.js');
            Requirements::javascript('js/bootstrap.min.js');
            Requirements::javascript('js/smoothscroll.js');
            Requirements::javascript('js/wow.min.js');
            Requirements::javascript('js/custom.js');
            Requirements::javascript('js/debounce.min.js');
        }

    }
}

