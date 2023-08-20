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
    wp_nonce_field('post_categories_nonce', 'post_categories_nonce');
    wp_nonce_field('post_media_type_nonce', 'post_media_type_nonce');
    ?>

    <!--        level option-->
    <select name="post_level" id="post_level">
        <option value="null"   <?php selected(get_post_meta($post->ID, '_dwt_post_level', true), 'سطح را انتخاب کنید') ?> >سطح را انتخاب کنید</option>
        <option value="1" <?php selected(get_post_meta($post->ID, '_dwt_post_level', true), 1) ?> >مقدماتی</option>
        <option value="2" <?php selected(get_post_meta($post->ID, '_dwt_post_level', true), 2) ?>>متوسط</option>
        <option value="3" <?php selected(get_post_meta($post->ID, '_dwt_post_level', true), 3) ?>>پیشرفته</option>
    </select>

    <select name="post_media_type" id="post_media_type">
        <option value="null" <?php selected(get_post_meta($post->ID, '_post_media_type', true), 'نوع پست را انتخاب کنید') ?> >نوع پست را انتخاب کنید
        </option>
        <option value="video" <?php selected(get_post_meta($post->ID, '_post_media_type', true), 'video') ?> >ویدیو
        </option>
        <option value="music" <?php selected(get_post_meta($post->ID, '_post_media_type', true), 'music') ?>>موزیک
        </option>
        <option value="file" <?php selected(get_post_meta($post->ID, '_post_media_type', true), 'file') ?>>فایل</option>
    </select>
    <?php
//    category post option
    wp_dropdown_categories(
        [
            'show_option_all' => 'لطفا یک دسته بندی انتخاب نمایید',
            'name' => 'post_categories',
            'selected' => get_post_meta($post->ID, '_dwt_post_category', true),
            'show_count' => 1,
            'taxonomy'          => ['category','tech-cat'],
//            'value_field' => 'slug'

        ]
    );
}

function save_meta_box($post_id)
{
    $post_nonce = "";
    $post_categories_nonce = "";
    $post_media_type_nonce = "";
    if (isset($_POST['post_level_nonce'])) {
        $post_nonce = $_POST['post_level_nonce'];
    }
    if (isset($_POST['post_categories_nonce'])) {
        $post_categories_nonce = $_POST['post_categories_nonce'];
    }
    if (isset($_POST['post_media_type_nonce'])) {
        $post_media_type_nonce = $_POST['post_media_type_nonce'];
    }

    if (defined('DOING_AUTOSAVE') && DOING_AUTOSAVE) {
        return $post_id;
    }
    if (!current_user_can('edit_page', $post_id)) {
        return $post_id;
    }


    if (wp_verify_nonce($post_media_type_nonce, 'post_media_type_nonce')) {
        if (!empty($_POST['post_media_type'])) {
            $post_media_type = sanitize_text_field($_POST['post_media_type']);
            update_post_meta($post_id, '_post_media_type', $post_media_type);
        }
    }

    if (wp_verify_nonce($post_nonce, 'post_level_nonce')) {
        if (!empty($_POST['post_level'])) {
            $pst_level_sanitize = sanitize_text_field($_POST['post_level']);
            update_post_meta($post_id, '_dwt_post_level', $pst_level_sanitize);
        }
    }

    if (wp_verify_nonce($post_categories_nonce, 'post_categories_nonce')) {
        if (!empty($_POST['post_categories'])) {
            $post_categories = sanitize_text_field($_POST['post_categories']);
            update_post_meta($post_id, '_dwt_post_category', $post_categories);
        }
    }
}

add_action('add_meta_boxes', 'dwt_post_meta_box_level');
add_action('save_post', 'save_meta_box');