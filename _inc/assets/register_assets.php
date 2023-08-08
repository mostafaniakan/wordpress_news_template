<?php
defined('ABSPATH') || exit;
function wp_register_assets()
{
//    Register Css
    wp_register_style('bootstrap-5', 'https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.rtl.min.css', '', '5.2.0');

    wp_register_style('main-style', get_stylesheet_directory_uri() . '/style.css', '1.0.0');

    wp_register_style('main_colors', get_stylesheet_directory_uri() . '/assets/css/colors.css', '1.0.0');


    wp_enqueue_style('bootstrap-5');
    wp_enqueue_style('main-style');
    wp_enqueue_style('main_colors');

//    Register Js
    wp_register_script('popper', get_stylesheet_directory_uri() . '/assets/js/popper.min.js', ['jquery'], '1.0.0', true);

    wp_register_script('bootstrap', get_stylesheet_directory_uri() . '/assets/js/bootstrap.min.js', ['jquery'], '4.5.1', true);

    wp_register_script('select', get_stylesheet_directory_uri() . '/assets/js/select2.min.js', ['jquery'], '1.0.0', true);

    wp_register_script('slick', get_stylesheet_directory_uri() . '/assets/js/slick.js', ['jquery'], '1.0.0',true);

    wp_register_script('counter_up', get_stylesheet_directory_uri() . '/assets/js/counterup.min.js', ['jquery'], '1.0.0',true);

    wp_register_script('custom', get_stylesheet_directory_uri() . '/assets/js/custom.js', ['jquery'], '1.0.0',true);

    wp_register_script('front-ajax', get_stylesheet_directory_uri() . '/assets/js/front-ajax', ['jquery'], '1.0.0',true);

    wp_enqueue_script('main',get_stylesheet_directory_uri().'/assets/js/main.js',['jquery'],'1.0.0',true);

    wp_enqueue_script('popper');
    wp_enqueue_script('bootstrap');
    wp_enqueue_script('select');
    wp_enqueue_script('slick');
    wp_enqueue_script('counter_up');
    wp_enqueue_script('custom');
    wp_enqueue_script('front-ajax');

//    ajax and nonce

    wp_localize_script('front_ajax','ajax',['ajax_url'=>admin_url('admin-ajax.php'),'_nonce'=>wp_create_nonce(),]);

//

}

function register_jquery_in_footer(){
    wp_dequeue_script('jquery');
    wp_dequeue_script('jquery-core');
    wp_dequeue_script('jquery-migrate');

    wp_enqueue_script('jquery',false,[],false,true);
    wp_enqueue_script('jquery-core',false,[],false,true);
    wp_enqueue_script('jquery-migrate',false,[],false,true);
}

add_action('wp_enqueue_scripts', 'wp_register_assets');
add_action('wp_enqueue_scripts', 'register_jquery_in_footer');