<div class="article_top_info">
    <ul class="article_middle_info">
        <li><a href="#"><span class="icons"><i class="ti-user"></i></span>توسط <?= get_the_author() ?>  </a></li>
        <li><a href="#"><span class="icons"><i class="ti-comment-alt"></i></span>نظرات ثبت شده:  <?= get_comments_number()?></a></li>
        <li><a href="#"><span class="icons mr-2"><i class="ti-eye"></i></span><?= PostView::dwt_show_post_view(get_the_ID()) ?> بازدید </a></li>
        <li><a href="#"><span class="icons mr-2"><i class="ti-timer"></i></span><?= ReadEstimateTime::dwt_read_estimate_time(get_the_content(),300) ?> دقیقه</a></li>
        <li><a href="#"><span class="icons mr-2"><i class="ti-search"></i></span><?= Google_Referer::dwt_get_google_referer(get_the_ID())?> ورودی گوگل</a></li>

    </ul>
</div>