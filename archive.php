<!--comment custom page -->
<?php /* Template Name: آرشیو */ ?>

<?php get_header()?>
<?= get_template_part('partials/nav/nav','nav');?>
<?= get_template_part('partials/archive/title','title');?>
<?= get_template_part('partials/archive/sidebar-search','sidebar-search');?>
<?= get_template_part('partials/archive/archive-content','archive-content');?>
<?php get_footer()?>