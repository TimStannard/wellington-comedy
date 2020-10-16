<?php

namespace SilverStripe\WellingtonComedy;
use SilverStripe\Admin\ModelAdmin;

class ManageComedians extends ModelAdmin 
{

    private static $managed_models = [
        Comedian::class
    ];

    private static $url_segment = 'manage-comedians';
    private static $menu_title = 'Manage Comedians';
    private static $menu_icon_class = 'font-icon-happy';
}