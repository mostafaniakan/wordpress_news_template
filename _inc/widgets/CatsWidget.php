<?php

class CatsWidget extends WP_Widget
{
    function __construct()
    {
        parent::__construct(false, 'دسته بندی مطالب', '');
    }

    function widget($args, $instance)
    {
        echo $args['before_widget'];

//        title
        if (!empty($instance['title'])) {
            echo $args['before_title'] . apply_filters('widget_title', $instance['title']) . $args['after_title'];
        } else {
            echo 'برای ویجت خود عنوان انتخاب کنید';
        }

//        categories
        $arg = [
            'title_li' => '',
            'depth' => 1,
            'show_count' => true,
            'order' => 'DESC',
            'orderby' => 'name',
            'exclude' => [],
            'taxonomy' => 'category',
            'echo' => false,
//            'exclude'=>[20]
        ];
        $variable = wp_list_categories($arg);

//        style count category remove ( )
        $variable = preg_replace('~\((\d+)\)(?=\s*+<)~', '<span class="cat_count">$1</span>', $variable);
        echo $variable;
        echo $args['after_widget'];
    }

    function form($instance)
    {
        $title = !empty($instance['title']) ? $instance['title'] : 'یک عنوان انتخاب نمایید';
        ?>
        <p>
            <label for="<?php echo esc_attr($this->get_field_id('title')); ?>">عنوان ویجت</label>
            <input class="widefat" id="<?php echo esc_attr($this->get_field_id('title')); ?>"
                   name="<?php echo esc_attr($this->get_field_name('title')); ?>" type="text"
                   value="<?php echo esc_attr($title); ?>">

        </p>

        <?php
    }

    function update($new_instance, $old_instance)
    {
        $instance = array();
        $instance['title'] = (!empty($new_instance['title'])) ? sanitize_text_field($new_instance['title']) : '';
        return $instance;
    }
}

function dwt_register_widget()
{
    register_widget('CatsWidget');
}

add_action('widgets_init', 'dwt_register_widget');