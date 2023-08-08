<?php

//include js for create button
function add_tinymce_plugin_js($array)
{
////    video short code
//    $array['video'] = get_template_directory_uri() . '/assets/js/tinymce-buttons.js';
//
////    quote short code
//    $array['quote'] = get_template_directory_uri() . '/assets/js/tinymce-buttons.js';


//    اگر از منو استافده کنیم نیازی به ساختن دکمه های بالا نیست
    $array['menu'] = get_template_directory_uri() . '/assets/js/tinymce-buttons.js';

//    for tinymce
    $array['image'] = get_template_directory_uri() . '/assets/js/tinymce-buttons.js';

//    echo '<pre>';
//    var_dump($array);
//    echo '</pre>';

    return $array;


}

function register_custom_button_for_tinymce($buttons)
{
//    زمانی که از منو استافده میکنیم میتونیم video و quote هم نزاریم اینجا به عنوان یادداشت گذاشتم حذف نکردم
    array_push($buttons, 'video', 'quote', 'menu', 'image');


//    var_dump($buttons);
    return $buttons;
}

//میتونیم کل تولبار  حذف کنیم چیز هایی که میخوایم خودمون بزاریم
//function format_tinymce($in)
//{
//    $in['toolbar1'] = 'bold,menu,italic,formatselect';
//    return $in;
//}



add_filter('mce_external_plugins', 'add_tinymce_plugin_js');
add_filter('mce_buttons', 'register_custom_button_for_tinymce');

//میتونیم کل تولبار  حذف کنیم چیز هایی که میخوایم خودمون بزاریم
//add_filter('tiny_mce_before_init','format_tinymce');