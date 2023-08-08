<?php

class HatPost extends WP_Widget
{
    function __construct()
    {
        parent::__construct(false, 'مطالب پر مخاطب', '');
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

        $arg = [
            'post_type' => 'post',
            'post_per_page' => 4,
            'orderby' => 'comment_count',
            'order' => 'DESC',

        ];
        $hot_post = new WP_Query($arg);
        ?>
        <div class="single_widgets widget_thumb_post">
            <ul>
                <?php if ($hot_post->have_posts()): ?>
                    <?php while ($hot_post->have_posts()): $hot_post->the_post(); ?>
                        <li>
										<span class="left">
                                            <?php if (has_post_thumbnail()) {
                                                the_post_thumbnail('', [
                                                    'class' => 'hot_post_thumbnail',
                                                    'alt' => get_the_title(),
                                                ]);
                                            }else{
                                                echo lt_default_post_thumbnail();
                                            }?>

										</span>
                            <span class="right">
											<a class="feed-title" href="<?php the_permalink(); ?>"><?= get_the_title() ?></a>
											<span class="post-date"><i class="ti-calendar"></i><?= TimeModify::time_ago($hot_post->post->post_date)?></span>
										</span>
                        </li>
                    <?php endwhile; ?>
                <?php endif; ?>
            </ul>
        </div>
        <?php

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

function dwt_register_HotPost_widget()
{
    register_widget('HatPost');
}

add_action('widgets_init', 'dwt_register_HotPost_widget');