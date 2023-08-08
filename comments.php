<div class="article_detail_wrapss single_article_wrap format-standard">

    <div class="comment-area">
        <div class="all-comments">
            <?php if (get_comments_number() > 0): ?>
                <h3 class="comments-title "><?= get_comments_number() ?> دیدگاه </h3>
            <?php else: ?>
                <h3 class="comments-title alert alert-info">اولین نفری باشید که برای این مطلب دیدگاهی بیان میکنید</h3>
            <?php endif; ?>
            <div class="comment-list">
                <ul>
                    <?php
                    $args = [
                        'callback' => 'dwt_theme_comments',
                        'style' => 'ul',
                        'avatar_size' => 100,
                    ];
                    wp_list_comments($args) ?>
                </ul>
            </div>
         <div class="my-4 comment_pagination" >
             <?php paginate_comments_links([
                 'prev_text'=>'قبلی',
                 'next_text'=>'بعدی',
             ]) ?>
         </div>
        </div>

        <!--        form  if comment open in post   در بخش پست ها اجازه گذاشتن پست برای این مطلب-->
        <?php if (comments_open()): ?>


            <!-- Modal -->
            <div class="modal fade" id="comment-modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
                 aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h6 class="py-3 reply-to"></h6>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>

                        <div class="modal-body">

                            <div class="alert alert-info reply-to-comment"></div>
                            <div class="alert alert-danger danger-comment ">تمامی فیلد های قرمز الزامی</div>


<!--                            --><?php //$user = get_userdata(get_current_user_id()) ?>
<!--                            <p class="alert alert-info">--><?php //= $user->display_name ?><!-- عزیز شما مجاز به ارسال دیدگاه هستید </p>-->




                            <form id="form-comment" action="<?= site_url() . '/wp-comments-post.php' ?>" method="post">
                                <div class="row">
                                    <?php if (!is_user_logged_in()): ?>
                                        <div class="col-lg-6 col-md-6 col-sm-12">
                                            <div class="form-group">
                                                <input type="text" name="author"
                                                       class="form-control check-comment-field" placeholder="نام کامل">
                                            </div>
                                        </div>
                                        <div class="col-lg-6 col-md-6 col-sm-12">
                                            <div class="form-group">
                                                <input type="email" name="email"
                                                       class="form-control check-comment-field"
                                                       placeholder="ایمیل معتبر">
                                            </div>
                                        </div>
                                        <div class="col-lg-12 col-md-12 col-sm-12">
                                            <div class="form-group">
                                                <input type="text" name="url" class="form-control url-comment"
                                                       placeholder="ادرس سایت (اختیاری) ">
                                            </div>
                                        </div>
                                        <div>
                                            <p class="comment-form-cookies-consent"><input
                                                        id="wp-comment-cookies-consent"
                                                        name="wp-comment-cookies-consent"
                                                        type="checkbox" value="yes"> <label
                                                        for="wp-comment-cookies-consent">ذخیره نام، ایمیل و وبسایت من در
                                                    مرورگر
                                                    برای
                                                    زمانی که دوباره دیدگاهی می‌نویسم.</label>
                                            </p>
                                        </div>
                                    <?php endif; ?>
                                    <div class="col-lg-12 col-md-12 col-sm-12">
                                        <div class="form-group">
                                    <textarea name="comment" class="form-control check-comment-field" cols="30" rows="6"
                                              placeholder="نظر خود را بنویسید..."></textarea>
                                        </div>
                                    </div>
                                    <div class="col-lg-12 col-md-12 col-sm-12">
                                        <div class="form-group">
                                            <input type="submit" id="btn_send_comment" name="submit"
                                                   class="btn search-btn" value="ارسال دیدگاه">
                                            <input type="hidden" name="comment_post_ID" value="<?= get_the_ID() ?>">
                                            <input type="hidden" name="comment_parent" id="comment_parent" value="0">
                                            <?php if (is_user_logged_in()): ?>
                                                <input id="_wp_unfiltered_html_comment_disabled" type="hidden"
                                                       name="_wp_unfiltered_html_comment"
                                                       value="<?= wp_create_nonce() ?>"/>
                                            <?php endif; ?>
                                        </div>
                                    </div>
                                </div>


                            </form>
                            <!--button-->
                            <div class="modal-footer">
                                <div class="col-lg-12 col-md-12 col-sm-12">
                                    <div class="form-group">
                                        <input type="submit" id="btn_send_comment" name="submit"
                                               class="btn search-btn" value="ارسال دیدگاه">
                                        <input type="hidden" name="comment_post_ID" value="<?= get_the_ID() ?>">
                                        <input type="hidden" name="comment_parent" id="comment_parent" value="0">
                                        <?php if (is_user_logged_in()): ?>
                                            <input id="_wp_unfiltered_html_comment_disabled" type="hidden"
                                                   name="_wp_unfiltered_html_comment"
                                                   value="<?= wp_create_nonce() ?>"/>
                                        <?php endif; ?>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>


            <div class="comment-box submit-form">
                <!--                 در تنظیمات بخش گفت و گو اگر کاربر وارد نشده بود بهش نمایش نده-->
                <?php if (get_option('comment_registration') == 1 && !is_user_logged_in()): ?>
                    <div class="alert alert-warning">برای ارسال دیدگاه باید وارد شوید</div>

                <?php else: ?>
                    <button class="btn search-btn" id="create_comments" data-toggle="modal"
                            data-target="#comment-modal">
                        ثبت دیدگاه
                    </button>
                <?php endif; ?>


                <!--                                <h6 class="py-3 reply-to"></h6>-->
                <!--                                <div class="alert alert-info reply-to-comment"></div>-->
                <!--                                <div class="alert alert-danger danger-comment ">تمامی فیلد های قرمز الزامی</div>-->
                <div class="comment-form">
                    <!--                    <form id="form-comment" action="-->
                    <!--                    --><?php //= site_url() . '/wp-comments-post.php' ?><!--" method="post">-->
                    <!--                        <div class="row">-->
                    <!--                            --><?php //if (!is_user_logged_in()): ?>
                    <!--                                <div class="col-lg-6 col-md-6 col-sm-12">-->
                    <!--                                    <div class="form-group">-->
                    <!--                                        <input type="text" name="author" class="form-control check-comment-field"-->
                    <!--                                               placeholder="نام کامل">-->
                    <!--                                    </div>-->
                    <!--                                </div>-->
                    <!--                                <div class="col-lg-6 col-md-6 col-sm-12">-->
                    <!--                                    <div class="form-group">-->
                    <!--                                        <input type="email" name="email" class="form-control check-comment-field"-->
                    <!--                                               placeholder="ایمیل معتبر">-->
                    <!--                                    </div>-->
                    <!--                                </div>-->
                    <!--                                <div class="col-lg-12 col-md-12 col-sm-12">-->
                    <!--                                    <div class="form-group">-->
                    <!--                                        <input type="text" name="url" class="form-control url-comment"-->
                    <!--                                               placeholder="ادرس سایت">-->
                    <!--                                    </div>-->
                    <!--                                </div>-->
                    <!--                                <div>-->
                    <!--                                    <p class="comment-form-cookies-consent"><input id="wp-comment-cookies-consent"-->
                    <!--                                                                                   name="wp-comment-cookies-consent"-->
                    <!--                                                                                   type="checkbox" value="yes"> <label-->
                    <!--                                                for="wp-comment-cookies-consent">ذخیره نام، ایمیل و وبسایت من در مرورگر-->
                    <!--                                            برای-->
                    <!--                                            زمانی که دوباره دیدگاهی می‌نویسم.</label>-->
                    <!--                                    </p>-->
                    <!--                                </div>-->
                    <!--                            --><?php //endif; ?>
                    <!--                            <div class="col-lg-12 col-md-12 col-sm-12">-->
                    <!--                                <div class="form-group">-->
                    <!--                                                        <textarea name="comment"-->
                    <!--                                                                  class="form-control check-comment-field" cols="30"-->
                    <!--                                                                  rows="6"-->
                    <!--                                                                  placeholder="نظر خود را بنویسید..."></textarea>-->
                    <!--                                </div>-->
                    <!--                            </div>-->
                    <!--                            <div class="col-lg-12 col-md-12 col-sm-12">-->
                    <!--                                <div class="form-group">-->
                    <!--                                    <input type="submit" id="btn_send_comment" name="submit" class="btn search-btn"-->
                    <!--                                           value="ارسال دیدگاه">-->
                    <!--                                    <input type="hidden" name="comment_post_ID" value="-->
                    <!--                    --><?php //= get_the_ID() ?><!--">-->
                    <!--                                    <input type="hidden" name="comment_parent" id="comment_parent" value="0">-->
                    <!--                                    --><?php //if (is_user_logged_in()): ?>
                    <!--                                        <input id="_wp_unfiltered_html_comment_disabled" type="hidden"-->
                    <!--                                               name="_wp_unfiltered_html_comment" value="-->
                    <!--                    --><?php //= wp_create_nonce() ?><!--"/>-->
                    <!--                                    --><?php //endif; ?>
                    <!--                                </div>-->
                    <!--                            </div>-->
                    <!--                        </div>-->
                    <!--                    </form>-->
                </div>
            </div>
        <?php else: ?>
            <div class="alert alert-danger">ارسال دیدگاه برای این مطلب بسته شده است</div>
        <?php endif; ?>
    </div>

</div>


</div>