<?php
function lt_default_post_thumbnail(): string
{
    $thumb_logo=get_template_directory_uri().'/assets/img/404.png';
    return "<img class='img-responsive ' src='$thumb_logo' alt='image'>";
}
