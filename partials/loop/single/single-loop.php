<!-- Blog Detail -->

<!--check open site in google-->
<?php //Google_Referer::dwt_set_google_referer(get_the_ID(),$_SERVER['HTTP_REFERER'])?>

<div class="col-lg-8 col-md-12 col-sm-12 col-12">
    <div class="article_detail_wrapss single_article_wrap format-standard">
        <div class="article_body_wrap">
            <?php if (have_posts()): ?>
                <?php while (have_posts()):
                    the_post();

//                create post view
                    PostView::dwt_set_post_view(get_the_ID());
                    ?>

                    <div class="article_featured_image">

                        <?php if (has_post_thumbnail()) {
                            the_post_thumbnail('', [
                                'class' => 'img-fluid',
                                'alt' => get_the_title()
                            ]);
                        } else {

                            echo dwt_default_post_thumbnail();
                        }

                        ?>
                    </div>

                    <?php get_template_part('meta-data/single/post-meta', 'post-meta') ?>

                    <?php the_content() ?>

                    <?= get_template_part('partials/single/_main-content-tag', '_main-content-tag'); ?>
                    <?= get_template_part('partials/single/pagination', 'pagination'); ?>
                    <?= get_template_part('partials/single/_main-content-author', '_main-content-author'); ?>

                <?php endwhile; ?>
            <?php endif; ?>
