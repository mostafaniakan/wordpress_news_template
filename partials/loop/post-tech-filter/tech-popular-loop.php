<?php
function popular(){
    $args=[
        'post_type'=>['tech'],
        'showposts'=>3,
        'meta_key'=>'_post_view_nums',
        'orderby'=>'_post_view_nums',
        'order'=>'DESC',
    ];
    $the_query=new WP_Query($args);
    if($the_query->have_posts()){
        while ($the_query->have_posts()){
            $the_query->the_post();

            $html_output .='
        <div class="col-lg-4 col-md-4 col-sm-12">
            <div class="articles_grid_style">
                <div class="articles_grid_thumb">
                    <a href="'.get_permalink().'">'.dwt_post_thumbnail().'</a>
                </div>

                <div class="articles_grid_caption">
                <a href="'.get_the_permalink().'">  <h4>'.lt_excerpt_title_post_tech(get_the_title()).'</h4></a>
                    <div class="articles_grid_author">
                        <div class="articles_grid_author_img">'.get_avatar(get_the_author_meta('email'),40).'</div>
                        <h4>'.get_the_author().'</h4>
                    </div>
                </div>
            </div>
        </div>
        ';

        }
        wp_send_json([
            'html'=>$html_output,
            'success'=>true,
        ],status_code: 200);
    }
    wp_reset_postdata();

}

add_action('wp_ajax_nopriv_popular','popular');
add_action('wp_ajax_popular','popular');