<?php
function register_sidebar_widgets($name,$id,$description,){
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
function multiple_widget_init(){

//    categories
    register_sidebar_widgets('my_theme_sidebar','sidebar_1','ساید بار سفارشی قالب');

//    hat post
    register_sidebar_widgets('my_theme_sidebar2','sidebar_2','ساید بار سفارشی 2 قالب');

//    tags
    register_sidebar_widgets('my_theme_sidebar3','sidebar_3','ساید بار سفارشی 3 قالب');

}


add_action('widgets_init','multiple_widget_init');