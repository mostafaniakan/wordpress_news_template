<!-- Author Detail -->
<div class="article_detail_wrapss single_article_wrap format-standard">
    <div class="article_posts_thumb">
        <span class="img">
           <?= get_avatar(get_the_author_meta('email'),'120','',get_the_author_meta('first_name'),[
                   'class'=>'img-fluid'
           ]) ?>

        </span>
        <h3 class="pa-name"><?= get_the_author_meta('first_name') ?></h3>
        <ul class="social-links">
            <?php if(get_the_author_meta('facebook')): ?>
            <li><a href="#"><i class="fab fa-facebook-f"></i></a></li>
            <?php endif;?>
            <?php if(get_the_author_meta('twitter')): ?>
            <li><a href="#"><i class="fab fa-twitter"></i></a></li>
            <?php endif;?>

            <?php if(get_the_author_meta('behance')): ?>
            <li><a href="#"><i class="fab fa-behance"></i></a></li>
            <?php endif;?>

            <?php if(get_the_author_meta('youtube')): ?>
            <li><a href="#"><i class="fab fa-youtube"></i></a></li>
            <?php endif;?>

            <?php if(get_the_author_meta('linkedin')): ?>
            <li><a href="#"><i class="fab fa-linkedin-in"></i></a></li>
            <?php endif;?>
            <?php if(get_the_author_meta('email')): ?>
                <li><a href="#"><i class="fab fa-envelope"></i></a></li>
            <?php endif;?>
        </ul>
        <p class="pa-text"><?= lt_excerpt_img_author_single(get_the_author_meta('description')) ?></p>
    </div>

</div>