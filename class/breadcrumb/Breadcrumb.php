<?php

namespace breadcrumb;

class Breadcrumb
{
    public static function breadcrumb()
    {
        echo '<li class="breadcrumb-item"><a href="' . home_url() . '" rel="nofollow">خانه</a></li>';
        if (is_category() || is_single()||is_archive()) {
            echo '&nbsp;&#187;&nbsp;';

//        get cate gory
//            echo '<li>'.get_the_category_list('&bull;').'</li>';
            $id=get_post_meta(get_the_ID(),'_dwt_post_category',true);
                echo '<li><a href="'.get_category_link($id).'">'.get_the_category_by_ID($id).'</a></li>';
//                conditional tag
            if(is_single()){
                echo '&nbsp;&#187;&nbsp;';
                the_title('<li>','</li>',true);
            }
        }else if(is_page()){
            echo '&nbsp;&#187;&nbsp;';
            the_title('<li>','</li>',true);
        }else if(is_search()){
            echo '&nbsp;&#187;&nbsp;';
            echo '<em>';
            echo the_search_query();
            echo '</em>';
        }else if(is_404()){
            echo '&nbsp;&#187;&nbsp;';
            echo '<em>';
            echo'موردی یافت نشد';
            echo '</em>';
        }
    }

}