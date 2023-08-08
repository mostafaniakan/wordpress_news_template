<?php
function dwt_post_meta_box_level()
{
    add_meta_box(
        'dwt_level',
        'تنظیمات مطالب',
        'dwt_more_setting_html',
        '',
        'normal',
        'default',
    );
}

function dwt_more_setting_html($post)
{
    wp_nonce_field('post_level_nonce', 'post_level_nonce');
    wp_nonce_field('post_categories_nonce', 'post_categories_nonce'); ?>

    <!--        level option-->
    <select name="post_level" id="post_level">
        <option value="1" <?php selected(get_post_meta($post->ID, '_dwt_post_level', true), 1) ?> >مقدماتی</option>
        <option value="2" <?php selected(get_post_meta($post->ID, '_dwt_post_level', true), 2) ?>>متوسط</option>
        <option value="3" <?php selected(get_post_meta($post->ID, '_dwt_post_level', true), 3) ?>>پیشرفته</option>
    </select>
    <?php
//    category post option
    wp_dropdown_categories(
        [
            'show_option_all' => 'لطفا یک دسته بندی انتخاب نمایید',
            'name' => 'post_categories',
            'selected' => get_post_meta($post->ID, '_dwt_post_category', true),
            'show_count' => 1,
//            'value_field' => 'slug'

        ]
    );
}

function save_meta_box($post_id)
{
    $post_nonce="";
    $post_categories_nonce="";
if(isset($_POST['post_level_nonce'])){
    $post_nonce = $_POST['post_level_nonce'];
}
if(isset($_POST['post_categories_nonce'])){
    $post_categories_nonce = $_POST['post_categories_nonce'];
}

    if (!wp_verify_nonce($post_nonce, 'post_level_nonce') && !wp_verify_nonce($post_categories_nonce, 'post_categories_nonce')) {
        return $post_id;
    }

    if (defined('DOING_AUTOSAVE') && DOING_AUTOSAVE) {
        return $post_id;
    }
    if (!current_user_can('edit_page', $post_id)) {
        return $post_id;
    }

    if (!empty($_POST['post_level']) && !empty($_POST['post_categories'])) {
        $pst_level_sanitize = sanitize_text_field($_POST['post_level']);
        $post_categories = sanitize_text_field($_POST['post_categories']);
        update_post_meta($post_id, '_dwt_post_level', $pst_level_sanitize);
        update_post_meta($post_id, '_dwt_post_category', $post_categories);

    }
}

add_action('add_meta_boxes', 'dwt_post_meta_box_level');
add_action('save_post', 'save_meta_box');