<?php get_header()?>
<?= get_template_part('partials/nav/nav','nav');?>
<?= get_template_part('partials/single/title','title');?>
<?= get_template_part('partials/single/start-layout','start-layout');?>
<!-- start main-->
<?= get_template_part('partials/single/main-content','main-content');?>
<?= get_template_part('partials/single/_main-content-comment', '_main-content-comment'); ?>
<!--end main-->

<!--start sidebar-->
<?php get_sidebar('left')?>
<!--end sidebar-->


<?= get_template_part('partials/single/end-layout','end-layout');?>
<?= get_template_part('partials/single/news','news');?>
<?php get_footer('partials/single/single-footer')?>
