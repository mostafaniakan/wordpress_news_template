<?php
$args = [
    'post_type' => 'tech',
    'posts_per_page' => 3,

];
$the_query = new WP_Query($args);
?>
<?php if ($the_query->have_posts()): ?>
    <?php while ($the_query->have_posts()): $the_query->the_post();?>

        <div class="col-lg-4 col-md-4 col-sm-12">
            <div class="articles_grid_style">
                <div class="articles_grid_thumb">
                    <a href="<?= get_permalink() ?>"><?= get_the_post_thumbnail('','',['class'=>'img-fluid'])?></a>
                </div>

                <div class="articles_grid_caption">
                  <a href="<?= get_permalink()?>">  <h4><?= lt_excerpt_title_post_tech( get_the_title())?></h4></a>
                    <div class="articles_grid_author">
                        <div class="articles_grid_author_img"><?= get_avatar(get_the_author_meta('email'),40)?></div>
                        <h4><?= get_the_author()?></h4>
                    </div>
                </div>
            </div>
        </div>

    <?php endwhile; ?>
    <?php wp_reset_postdata(); ?>
<?php else: ?>
    <div class="alert alert-info">تاکنون مطلبی منتشر نشده است!</div>
<?php endif; ?>
<!--چطون توی صفحه index دوتا query داریم-->
<?php $the_query->rewind_posts();?>

