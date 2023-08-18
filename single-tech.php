<?php get_header()?>
<?= get_template_part('partials/nav/nav','nav');?>
<?= get_template_part('partials/single-tech/title','title');?>
<?= get_template_part('partials/single-tech/start-layout','start-layout');?>
<!-- start main-->
<?= get_template_part('partials/single-tech/main-content','main-content');?>
<?= get_template_part('partials/single-tech/_main-content-comment', '_main-content-comment'); ?>
<!--end main-->

<!--start sidebar-->
<?php get_sidebar('tech')?>
<!--end sidebar-->


<?= get_template_part('partials/single-tech/end-layout','end-layout');?>
<?= get_template_part('partials/single-tech/news','news');?>
<?php get_footer('partials/single/single-footer')?>
