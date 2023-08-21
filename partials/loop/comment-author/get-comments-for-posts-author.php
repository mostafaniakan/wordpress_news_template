<?php
//مثل wp_query فقط این برای کامنت هاست
$args = [
    'status' => 'approve',
    'post_author' => get_the_author_meta('ID'),
    'author__not_in' => get_the_author_meta('ID'),
];
$comments = new WP_Comment_Query();
$comments=$comments->query($args);
//echo '<pre>';
//var_dump($comments);
//echo '</pre>';
?>
<?php if ($comments): ?>
    <?php foreach ($comments as $comment): ?>
        <!-- reviews-comments-item -->
        <div class="reviews-comments-item">

            <div class="review-comments-avatar">
                <?=  get_avatar($comment->comment_author_email,'80','',$comment->comment_author,['class'=>'img-fluid'])?>
            </div>
            <div class="reviews-comments-item-text">
                <h4><a href="<?= get_comment_link($comment->comment_ID)?>"><?= get_the_title($comment->comment_post_ID)?></a></h4>
                <h4 class="my-2"><a href="#"><?=$comment->comment_author?></a><span class="reviews-comments-item-date"><i
                                class="ti-calendar theme-cl"></i><?= get_comment_date('j F Y', $comment->comment_ID) ?></span></h4>

                <div class="listing-rating high" data-starrating2="5"><i
                            class="ti-star active"></i><i class="ti-star active"></i><i
                            class="ti-star active"></i><i class="ti-star active"></i><i
                            class="ti-star active"></i><span class="review-count">4.9</span>
                </div>
                <div class="clearfix"></div>
                <p><?= $comment->comment_content ?></p>
                <div class="pull-left reviews-reaction">
                    <a href="#" class="comment-like active"><i class="ti-thumb-up"></i> 12</a>
                    <a href="#" class="comment-dislike active"><i class="ti-thumb-down"></i>
                        1</a>
                    <a href="#" class="comment-love active"><i class="ti-heart"></i> 07</a>
                </div>
            </div>
        </div>
    <?php endforeach ?>
<?php endif; ?>
