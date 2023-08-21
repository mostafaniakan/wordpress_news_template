<?php
function dwt_default_post_thumbnail($class=null): string
{
    $class_img="img-responsive";
    if(isset($class)){
     $class_img=$class;
    }
    $thumb_logo=get_template_directory_uri().'/assets/img/404.png';
    return "<img class=$class_img src='$thumb_logo' alt='image'>";
}
