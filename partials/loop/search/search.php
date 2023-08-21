<?php if (empty($_GET['s'])) {
    wp_redirect(site_url());
} ?>

<div class="container">
    <!--  شمارش تعداد پست های پیدا شده اگر از wp_query استفاده نکرده باشیم-->

        <?php global $wp_query; ?>
        <div style="font-size: 22px; padding: 10px">تعداد مطالب مرتبط با کلید واژه <span
                    class="text-warning"><?= $_GET['s'] ?></span> <span>
    <?= $wp_query->found_posts ?></span></div>
        <div class="row">



<!--    --><?php
//    $search_query = $_GET['s'];
//    $paged=get_query_var('paged') ? get_query_var('paged') : 1;
//    $args = [
//        'post_type' => ['post', 'tech'],
////        's' => $search_query,
////        'posts_per_page' => 10,
////        'paged' => $paged,
//    ];
//    $query = new WP_Query($args)
//    ?>
<!---->
<!--    شمارش تعداد پست های پیدا شده-->
<!--    <div style="font-size: 22px; padding: 10px">تعداد مطالب مرتبط با کلید واژه <span-->
<!--                class="text-warning">--><?php //= $_GET['s'] ?><!--</span> <span>--><?php //= $wp_query->found_posts ?><!--</span></div>-->
<!--    <div class="row">-->


        <?php if (have_posts()): ?>
            <?php while (have_posts()) : the_post(); ?>
                <div class="col-lg-4 col-md-6">
                    <div class="education_block_grid">
                        <a class="pic-main" href="<?= get_the_permalink() ?>">
                            <?= dwt_post_thumbnail() ?>

                        </a>


                        <div>
                            <?php if (!empty(get_post_meta(get_the_ID(), '_dwt_post_category'))): ?>
                                <div class="topic_cat bg-warning text-white">
                                    <?= get_the_category_by_ID(get_post_meta(get_the_ID(), '_dwt_post_category', true)) ?>
                                </div>
                            <?php else: ?>
                                <div class="topic_cat bg-warning text-white">
                                    0
                                </div>
                            <?php endif; ?>
                        </div>

                        <div class="education_block_body">
                            <h4 class="bl-title"><a
                                        href="<?= get_the_permalink() ?>"> <?= lt_excerpt_title_post_tech(get_the_title()) ?></a>
                            </h4>
                            <p><?= lt_excerpt_limit(get_the_excerpt()) ?></p>
                        </div>

                        <div class="education_block_footer">
                            <div class="education_block_author">
                                <div class="path-img"><a
                                            href="instructor-detail.html"><?= get_avatar(get_the_author_meta('email'), 35, '') ?></a>
                                </div>
                                <h5><?php the_author_posts_link(); ?></h5>
                            </div>
                            <?php

                            if (!empty(get_post_meta(get_the_ID(), '_dwt_post_level', true))):
                                $levels = "";
                                switch (get_post_meta(get_the_ID(), '_dwt_post_level', true)) {
                                    case 1:
                                        $levels = 'مقدماتی';
                                        $color_level = 'bg-success';
                                        break;
                                    case 2:
                                        $levels = 'متوسط';
                                        $color_level = 'bg-info';
                                        break;
                                    case 3:
                                        $levels = 'پیشرفته';
                                        $color_level = 'bg-danger';
                                        break;
                                }
                                ?>
                            <?php else: ?>
                                <?php $levels = '0' ?>

                            <?php endif; ?>
                            <span class="education_block_time "> سطح : <?= $levels ?>
                    </span>
                        </div>

                    </div>
                </div>
            <?php endwhile; ?>
        <?php else: ?>
            <div class="alert-info" style="padding: 10px; margin: 10px 0 10px 0"><h2 style="color: #aaecf8">مطلبی وجود
                    ندارد</h2></div>
            <div class="tag_search alert-warning">
                <?php wp_tag_cloud('smallest=13&largest=10&number=60') ?>
            </div>
        <?php endif; ?>
        <?php wp_reset_postdata() ?>
    </div>
    <!--    روش اول که باید تعداد صقحات را از wp_query مشخص کنی -->
<?php
//$total_pages = $query->max_num_pages;
//echo '<div class="pagination" style="padding-bottom: 20px!important; align-items: center">';
//echo paginate_links(array(
//    'total'           => $total_pages,
//    'current'         => $paged,
//    'format'          => '?paged=%#%',
//    'prev_text'       => __('قبلی', 'text-domain'),
//    'next_text'       => __('بعدی', 'text-domain'),
//    'before_page_number' => '<span style="background-color: #f2f2f2;margin-right: 10px;margin-left: 10px;padding: 10px;border-radius: 50%;">',
//    'after_page_number'  => '</span>',
//));
//echo '</div>';
//?>

<!--    روش دوم که تعداد صفحات از داخل تنظیمات وردپرس مشخص میشه-->
    <?php
    the_posts_pagination(array(

    'format'          => '?paged=%#%',
    'prev_text'       => __('قبلی', 'text-domain'),
    'next_text'       => __('بعدی', 'text-domain'),
    'before_page_number' => '<span style="background-color: #f2f2f2;margin-right: 10px;margin-left: 10px;padding: 10px;border-radius: 50%;">',
    'after_page_number'  => '</span>',
    ));
    ?>
</div>
