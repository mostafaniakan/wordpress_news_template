<!--comment custom page -->
<?php /* Template Name: وبلاگ ها */ ?>

<?php get_header()?>
<?= get_template_part('partials/blog/nav-blog','nav-blog');?>
<?= get_template_part('partials/blog/title','title');?>
<?= get_template_part('partials/blog/articles','articles');?>
<?= get_template_part('partials/single/news','news');?>
<?php get_footer()?>
