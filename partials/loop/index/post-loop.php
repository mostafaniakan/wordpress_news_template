<?php
$args = [
    'post_type' => 'post',
    'posts_per_page' => 4,

];
$the_query = new WP_Query($args);
?>
<?php if ($the_query->have_posts()): ?>
    <?php while ($the_query->have_posts()): $the_query->the_post(); ?>
        <div class="singles_items ">
            <div class="edu_cat">
                <div class="pic">
                    <?php

                    if(!empty(get_post_meta(get_the_ID(),'_dwt_post_level',true))):
                    $levels="";
                        switch (get_post_meta(get_the_ID(),'_dwt_post_level',true)){
                            case 1:
                                $levels='مقدماتی';
                                $color_level='bg-success';
                                break;
                            case 2:
                                $levels='متوسط';
                                $color_level='bg-info';
                                break;
                            case 3:
                                $levels='پیشرفته';
                                $color_level='bg-danger';
                                break;
                        }
                        ?>

                    <div class="topic_level <?= $color_level ?> text-white">سطح : <?= $levels ?></div>
                    <?php endif;?>
                    <?php if(!empty(get_post_meta(get_the_ID(),'_dwt_post_category'))):?>
                        <div class="topic_cat bg-warning text-white"><?= get_the_category_by_ID(get_post_meta(get_the_ID(),'_dwt_post_category',true)) ?></div>
                    <?php endif;?>

                    <a class="pic-main" href="<?= get_the_permalink() ?>">
                        <?= dwt_post_thumbnail()?>
                    </a>
                </div>
                <div class="edu_data singles_items_border_bottom">
                    <h4 class="title"><a href="<?= get_the_permalink() ?>"><?= get_the_title() ?></a></h4>
                    <ul class="meta d-flex mt-4">

                        <li class="d-flex align-items-center"></i><?= get_the_author() ?></li>
                        <li class="video d-flex align-items-center"><i class="ti-video-clapper"></i>ویدئو</li>
                        <li class="video d-flex align-items-center"><i class="ti-eye"></i><?php PostView::dwt_show_post_view(get_the_ID()) ?> بازدید</li>

                        <li class="d-flex align-items-center"><i class="ti-calendar theme-cl"></i><?= get_the_date('j F ماه Y')?></li>
                    </ul>
                </div>
            </div>
        </div>
    <?php endwhile; ?>
    <?php wp_reset_postdata(); ?>
<?php else: ?>
    <div class="alert alert-info">تاکنون مطلبی منتشر نشده است!</div>
<?php endif; ?>

