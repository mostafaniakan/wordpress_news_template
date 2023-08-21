<?php

// اضافه کردن پست تایپ اختصاصی tech به لیست نمایش پست های نویسنده
function dwt_modify_author_query($query)
{
    if (is_main_query() && is_author()) {
//        ست میکنه یک مقداری رو برای wp_query توش ست میکنه یک مقدار پاس میده
        set_query_var('post_type',['post','tech']);
    }
    if (is_main_query() && is_search()) {
//        ست میکنه یک مقداری رو برای wp_query توش ست میکنه یک مقدار پاس میده
        set_query_var('post_type',['post','tech']);
    }
}
add_action('pre_get_posts','dwt_modify_author_query');