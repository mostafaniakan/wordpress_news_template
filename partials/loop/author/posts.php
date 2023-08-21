<?php if (have_posts()): ?>
    <?php while (have_posts()) : the_post(); ?>

        <div class="col-lg-4 col-md-6">
            <div class="edu-watching">
                <?php if (get_post_meta(get_the_ID(), '_post_media_type', true)): ?>
                    <div class="property_video sm">
                        <div class="thumb">
                             <?= dwt_post_thumbnail("pro_img img-fluid w100")?>
                            <div class="overlay_icon">
                                <div class="bb-video-box">
                                    <div class="bb-video-box-inner">
                                        <a href="<?= get_the_permalink() ?>">
                                            <div class="bb-video-box-innerup">
                                                <i data-toggle="modal" data-target="#popup-video"
                                                   class="ti-control-play theme-cl"></i>
                                            </div>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="edu_duration">25:10</div>
                    </div>
                <?php else: ?>
                    <a href="<?= get_the_permalink() ?>">
                        <div class="property_video sm">

                            <div class="thumb">
                                <?= dwt_post_thumbnail("pro_img img-fluid w100")?>
                            </div>

                        </div>
                    </a>
                <?php endif; ?>

                <div class="edu_video detail">
                    <a href="<?php the_permalink() ?>">
                        <div class="edu_video_header">
                            <h4><?= lt_excerpt_title_post_tech(get_the_title()) ?></h4>
                        </div>
                    </a>
                    <div class="edu_video_bottom">
                        <div class="edu_video_bottom_left">
                            <span><?= get_the_author() ?></span>
                        </div>
                        <div class="edu_video_bottom_right">
                            <?php if (!empty(get_post_meta(get_the_ID(), '_dwt_post_category'))): ?>
                                    <?= get_the_category_by_ID(get_post_meta(get_the_ID(), '_dwt_post_category', true)) ?>
                            <?php endif; ?>

                        </div>
                    </div>
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

    <!--    روش دوم که تعداد صفحات از داخل تنظیمات وردپرس مشخص میشه-->
<?php
the_posts_pagination(array(

    'format' => '?paged=%#%',
    'prev_text' => __('قبلی', 'text-domain'),
    'next_text' => __('بعدی', 'text-domain'),
    'before_page_number' => '<span style="background-color: #f2f2f2;margin-right: 10px;margin-left: 10px;padding: 10px;border-radius: 50%;">',
    'after_page_number' => '</span>',
));
?>