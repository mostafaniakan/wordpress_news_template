<div class="single_article_pagination">

    <!--    next-->
    <?php $next_post = get_next_post(true, '', 'category');
    if (!empty($next_post)):
        ?>
        <div class="prev-post">
            <a href="<?= get_permalink($next_post->ID) ?>" class="theme-bg">
                <div class="title-with-link">
                    <span class="intro"><?= lt_excerpt_limit($next_post->post_title) ?></span>
                </div>
            </a>
        </div>
    <?php endif; ?>

    <div class="article_pagination_center_grid">
        <a href="#"><i class="ti-layout-grid3"></i></a>
    </div>

    <!--    back-->
    <?php $back_post = get_previous_post(true, '', 'category');
    if (!empty($back_post)):
        ?>
        <div class=" next-post">
            <a href="<?= get_permalink($back_post->ID) ?>" class="theme-bg">
                <div class="title-with-link">
                    <span class="intro"><?= lt_excerpt_limit($back_post->post_title) ?></span>
                </div>
            </a>
        </div>
    <?php endif; ?>

</div>

</div>
</div>


