<?php

use SilverStripe\Admin\ModelAdmin;

class ManageVenues extends ModelAdmin 
{

    private static $managed_models = [
        'Venue'
    ];

    private static $url_segment = 'venues';
    private static $menu_title = 'Manage Venues';
    private static $menu_icon_class = 'font-icon-happy';
}