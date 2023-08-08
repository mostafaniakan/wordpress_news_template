<div class="post-tags">
    <h4 class="pbm-title">تگ های پربازدید</h4>
    <ul class="list">
        <?php

        if(has_tag()):?>
        <?php foreach (get_the_tags() as $tag):?>

        <li><a href="<?= get_tag_link($tag->term_id) ?>"><?= $tag->name ?></a></li>
        <?php endforeach;?>
        <?php endif;?>
    </ul>
</div>