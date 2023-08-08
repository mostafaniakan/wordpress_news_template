<?php

class  Google_Referer
{


    public static function dwt_set_google_referer(int $postID, $url): void
    {
//        check to url exist google tru false
        if (stripos($url, "google.com")) {


            $google_referer_key = '_google_referer_nums';
            $google_referer_nums = get_post_meta($postID, $google_referer_key, true);

//           key exists to my meta
            if (!metadata_exists('post', $postID, $google_referer_key)) {
                add_post_meta($postID, $google_referer_key, 1);
            } else {
                $google_referer_nums++;
                update_post_meta($postID, $google_referer_key, $google_referer_nums);
            }
        }
    }

    public static function dwt_get_google_referer($postID)
    {
        $google_referer_key = '_google_referer_nums';
        $google_referer_nums = get_post_meta($postID, $google_referer_key, true);

//           key exists to my meta
        if (!metadata_exists('post', $postID, $google_referer_key)) {
            return "0";
        } else {
            return $google_referer_nums;
        }
    }

}