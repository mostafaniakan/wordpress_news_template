<!--نمایش تگ های پست ها در این قسمت-->

<?php get_header()?>
<?= get_template_part('partials/nav/nav','nav');?>
<?= get_template_part('partials/category/category-title','category-title');?>
<?= get_template_part('partials/loop/category/category-loop','category-loop');?>

<?php get_footer()?>
