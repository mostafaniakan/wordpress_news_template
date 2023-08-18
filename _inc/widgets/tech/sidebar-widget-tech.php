<?php
function register_sidebar_widgets_tech($name,$id,$description,){
//    create sidebar for widgets
    register_sidebar([
        'name'=>$name,
        'id'=>$id,
        'description'=>$description,
        'before_widget'=>'<li id="%1$s" class="%2$s">',
        'after_widget'=>'</li>',
        'before_title'=>'<h4 class="title">',
        'after_title'=>'</h4>',
    ]);


}
function multiple_widget_init_tech(){

//    categories
    register_sidebar_widgets_tech('my_theme_sidebar_tech4','sidebar_4','ساید بار سفارشی قالب');

//    hat post
    register_sidebar_widgets_tech('my_theme_sidebar_tech5','sidebar_5','ساید بار سفارشی 2 قالب');

//    tags
    register_sidebar_widgets_tech('my_theme_sidebar_tech6','sidebar_6','ساید بار سفارشی 3 قالب');

}


add_action('widgets_init','multiple_widget_init_tech');