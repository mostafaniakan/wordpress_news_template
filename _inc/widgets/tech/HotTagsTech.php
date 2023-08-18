<?php

class HotTagsTech extends WP_Widget
{
    function __construct()
    {
        parent::__construct(false, 'تگ های پر تکرار تکنولوژی', '');
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

        echo $args['after_title'];

        if (function_exists('wp_tag_cloud')) {
            $arg = [
                'smallest' => 15,
                'largest' => 17,
                'number' => 8,
                'format' => 'array',
                'show_count' => 1,
                'taxonomy' => 'tech-tag',
            ];
//            get tag
            $tag_clouds = wp_tag_cloud($arg);
            foreach ($tag_clouds as $tag) {
                //        style count category remove ( )
                echo preg_replace('~\((\d+)\)(?=\s*+<)~', '<span class="tag_count">$1</span>', '<li>' . $tag . '</li>');

            }

        }


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

function dwt_register_HotTag_widget_Tech()
{
    register_widget('HotTagsTech');
}

add_action('widgets_init', 'dwt_register_HotTag_widget_Tech');