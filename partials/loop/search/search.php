<?php if(empty($_GET['s'])){
    wp_redirect(site_url());
} ?>
<div class="container">
    <div class="row">
        <?php if(have_posts()): ?>
        <?php while (have_posts()) : the_post();?>
                <div class="col-lg-4 col-md-6">
                    <div class="education_block_grid">

                        <div class="education_block_thumb">
                            <a class="pic-main" href="<?= get_the_permalink() ?>">
                                <?= dwt_post_thumbnail() ?>
                            </a>

                            <div >   <?php if (!empty(get_post_meta(get_the_ID(), '_dwt_post_category'))): ?>
                                    <div class="topic_cat bg-warning text-white"><?= get_the_category_by_ID(get_post_meta(get_the_ID(), '_dwt_post_category', true)) ?></div>
                                <?php endif; ?></div>
                        </div>

                        <div class="education_block_body">
                            <h4 class="bl-title"><a href="<?=get_the_permalink()?>"> <?= lt_excerpt_title_post_tech(get_the_title())?></a>
                            </h4>
                            <p><?= lt_excerpt_limit( get_the_excerpt())?></p>
                        </div>

                        <div class="education_block_footer">
                            <div class="education_block_author">
                                <div class="path-img"><a href="instructor-detail.html"><?= get_avatar(get_the_author_meta('email'),35,'')?></a></div>
                                <h5><a href="instructor-detail.html"><?= get_the_author()?></a></h5>
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
                            <?php else:?>
                            <?php $levels='0'?>

                            <?php endif; ?>
                            <span class="education_block_time "> سطح : <?=$levels?>
                    </span>
                        </div>

                    </div>
                </div>

        <?php endwhile;?>
        <?php else:?>
            <div class="alert-info" style="padding: 10px; margin: 10px 0 10px 0"><h2 style="color: #aaecf8">مطلبی وجود ندارد</h2></div>
        <?php endif;?>
    </div>
</div>

