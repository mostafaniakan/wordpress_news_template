<?php


class PostView
{
    public static function dwt_set_post_view(int $postID): void
    {
        $view_nums = '_post_view_nums';
        $post_view = get_post_meta($postID, $view_nums, true);

//           key exists to my meta
        if (!metadata_exists('post', $postID, $view_nums)) {
            add_post_meta($postID, '_post_view_nums', 0);
        } else {
            $post_view++;
            update_post_meta($postID, $view_nums, $post_view);
        }
    }

    public static function dwt_show_post_view($postID)
    {
        $view_nums = '_post_view_nums';
        $post_view = get_post_meta($postID, $view_nums, true);

//           key exists to my meta
        if (!metadata_exists('post', $postID, $view_nums)) {
            return "0";
        } else {
            return $post_view;
        }
    }
}