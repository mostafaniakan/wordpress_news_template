<?php
function theme_setup(){
//remove  admin bar
    add_filter('show_admin_bar','__return_false');

//    Register menu
    register_nav_menu('top nav','منوی اصلی بالای سایت');
//    add Navwalker menu bootstrap class
    require_once get_template_directory() . '/class/nav-walker/WP_Bootstrap_Navwalker.php';

//    add thumbnails
    add_theme_support('post-thumbnails');

//    add size img
    add_image_size('my-size','200','250',['center','center']);

  date_default_timezone_set("Asia/Tehran");
}
add_action('after_setup_theme','theme_setup');


function lt_excerpt_limit($excerpt): string
{
    return mb_substr($excerpt, 0, 100) . ' ' . '...';
}
function lt_excerpt_img_author_single($excerpt){
    return  mb_substr($excerpt, 0, 300) . ' ' . '...';
}
function lt_excerpt_title_post_tech($excerpt): string
{
    return mb_substr($excerpt, 0, 40) . ' ' . '...';
}

function dwt_post_thumbnail($class=null){
    $class_img="img-responsive";
    if(isset($class)){
        $class_img=$class;
    }
    if(has_post_thumbnail()) {
        return get_the_post_thumbnail('', '', ['class' => $class_img, 'alt' => get_the_title()]);

    }else{
return  dwt_default_post_thumbnail($class_img);
    }

}