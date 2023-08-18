<?php
function dwt_register_tech_post_type()
{
    $labels = array(
        'name'                  => 'techs',
        'singular_name'         => 'tech',
        'menu_name'             => 'اخبار تکنولوژی',
        'name_admin_bar'        => 'tech',
        'add_new'               => 'افزودن مطلب تکنولوژی',
        'add_new_item'          => 'ایجاد مطلب جدید ',
        'new_item'              => __( 'مطلب جدید', 'textdomain' ),
        'edit_item'             => __( 'ویرایش مطلب', 'textdomain' ),
        'view_item'             => __( 'مشاهده', 'textdomain' ),
        'all_items'             => 'همه مطالب تکنولوژِی',
        'search_items'          => 'جستجو ',
        'parent_item_colon'     => 'والد مطالب ',
        'not_found'             => 'مطلبی  پیدا نشد',
        'not_found_in_trash'    => 'مطبی در سطل زباله دان وجود ندارد',
        'featured_image'        => 'تصویر شاخص',
        'set_featured_image'    => _x( 'انتخاب تصویر شاخص', 'Overrides the “Set featured image” phrase for this post type. Added in 4.3', 'textdomain' ),
        'remove_featured_image' => _x( 'حذف تصویر شاخص', 'Overrides the “Remove featured image” phrase for this post type. Added in 4.3', 'textdomain' ),
        'use_featured_image'    => _x( 'استفاده به عنوان تصویر شاخص', 'Overrides the “Use as featured image” phrase for this post type. Added in 4.3', 'textdomain' ),
        'archives'              => _x( 'آرشیو مطالب', 'The post type archive label used in nav menus. Default “Post Archives”. Added in 4.4', 'textdomain' ),
        'insert_into_item'      => _x( 'افزودن به مطالب', 'Overrides the “Insert into post”/”Insert into page” phrase (used when inserting media into a post). Added in 4.4', 'textdomain' ),
        'uploaded_to_this_item' => _x( 'آپلود', 'Overrides the “Uploaded to this post”/”Uploaded to this page” phrase (used when viewing media attached to a post). Added in 4.4', 'textdomain' ),
        'filter_items_list'     => _x( 'فیلتر لیست مطالب', 'Screen reader text for the filter links heading on the post type listing screen. Default “Filter posts list”/”Filter pages list”. Added in 4.4', 'textdomain' ),
        'items_list_navigation' => _x( 'پیمایش لیست مطالب', 'Screen reader text for the pagination heading on the post type listing screen. Default “Posts list navigation”/”Pages list navigation”. Added in 4.4', 'textdomain' ),
        'items_list'            => 'لیست مطالب'
    );

    $args = array(
        'labels'             => $labels,
        'label'              => 'techs',
        'public'             => true,
        'supports'           => array('title', 'editor', 'excerpt', 'thumbnail', 'revisions', 'author', 'comments', 'trackbacks', 'page-attributes', 'post-formats', 'custom-fields'),
        'publicly_queryable' => true,
        'show_ui'            => true,
        'show_in_menu'       => true,
        'query_var'          => true,
        'rewrite'            => array( 'slug' => 'tech' ),
        'capability_type'    => 'post',
        'show_in_rest'       => true,
        'rest_base'          => 'techs',
        'has_archive'        => true,
        'hierarchical'       => true,
        'menu_position'      => null,
        'show_in_admin_bar' => true,
        'show_in_nav_menus' => true,
        'can_export' => true,
////        get post taxonomies
//        'taxonomies'=>['category']

    );

    register_post_type( 'tech', $args );
}

function dwt_register_tech_taxonomy()
{

    // Add new taxonomy, NOT hierarchical (like tags)
    $labels = array(
        'name' => ' دسته بندی های تکنولوژِی',
        'singular_name' => 'دسته بندی',
        'search_items' => 'جستجو  ',
        'popular_items' => 'دسته بندی های محبوب',
        'all_items' => 'همه دسته بندی ها',
        'parent_item' => 'والد دسته بندی',
        'parent_item_colon' => 'والد دسته بندی',
        'edit_item' => __('ویرایش ', 'textdomain'),
        'update_item' => __('بروزرسانی', 'textdomain'),
        'add_new_item' => __('افزودن دسته بندی جدید', 'textdomain'),
        'new_item_name' => __('نام دسته بندی جدید', 'textdomain'),
        'separate_items_with_commas' => 'برچسب‌ها را با کاما جدا نمایید',
        'add_or_remove_items' => __('Add or remove writers', 'textdomain'),
        'choose_from_most_used' => __('Choose from the most used writers', 'textdomain'),
        'not_found' => __('No writers found.', 'textdomain'),
        'menu_name' => 'دسته ها تکنولوژی',
    );

    $args = array(
        'hierarchical' => true,
        'labels' => $labels,
        'show_ui' => true,
        'show_admin_column' => true,
        'update_count_callback' => '_update_post_term_count',
        'query_var' => true,
        'rewrite' => array('slug' => 'tech-cat'),
    );

    register_taxonomy('tech-cat', 'tech', $args);

    unset($args);
    unset($labels);

    // Add new taxonomy, make it hierarchical (like categories)
    // Add new taxonomy, NOT hierarchical (like tags)
    $labels = array(
        'name' => ' برچسب جدید ',
        'singular_name' => 'دسته بندی',
        'search_items' => 'جستجو دسته بندی ',
        'popular_items' => 'دسته بندی های محبوب',
        'all_items' => 'همه دسته بندی ها',
        'parent_item' => null,
        'parent_item_colon' => null,
        'edit_item' => __('Edit Writer', 'textdomain'),
        'update_item' => __('Update Writer', 'textdomain'),
        'add_new_item' => __('Add New Writer', 'textdomain'),
        'new_item_name' => __('New Writer Name', 'textdomain'),
        'separate_items_with_commas' => __('برچسب‌ها را با کاما جدا نمایید', 'textdomain'),
        'add_or_remove_items' => __('Add or remove writers', 'textdomain'),
        'choose_from_most_used' => __('Choose from the most used writers', 'textdomain'),
        'not_found' => __('No writers found.', 'textdomain'),
        'menu_name' => 'برچسب ها',
    );

    $args = array(
        'hierarchical' => false,
        'labels' => $labels,
        'show_ui' => true,
        'show_admin_column' => true,
        'update_count_callback' => '_update_post_term_count',
        'query_var' => true,
        'rewrite' => array('slug' => 'tech-tag'),
    );

    register_taxonomy('tech-tag', array('tech'), $args);
}

// hook into the init action and call create_book_taxonomies when it fires
add_action('init', 'dwt_register_tech_taxonomy');

add_action('init', 'dwt_register_tech_post_type');

