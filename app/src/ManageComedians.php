<?php

use SilverStripe\Admin\ModelAdmin;

class ManageComedians extends ModelAdmin 
{

    private static $managed_models = [
        'Comedian',
        'Category'
    ];

    private static $url_segment = 'comedians';
    private static $menu_title = 'Manage Comedians';
    private static $menu_icon_class = 'font-icon-happy';
}