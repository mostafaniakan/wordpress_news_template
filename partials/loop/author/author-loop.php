<!-- ============================ Instructor Detail ================================== -->
<section>
    <div class="container">
        <div class="row">

            <div class="col-lg-12 col-md-12 col-sm-12">
                <div class="custom-tab customize-tab tabs_creative">
                    <ul class="nav nav-tabs pb-2 b-0" id="myTab" role="tablist">
                        <li class="nav-item">
                            <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab"
                               aria-controls="home" aria-selected="true">دوره های مرتبط</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab"
                               aria-controls="profile" aria-selected="false">درباره استاد</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" id="contact-tab" data-toggle="tab" href="#contact" role="tab"
                               aria-controls="contact" aria-selected="false">نظرات</a>
                        </li>
                    </ul>
                    <div class="tab-content" id="myTabContent">

                        <!-- Classess -->
                        <div class="tab-pane fade show active p-2" id="home" role="tabpanel" aria-labelledby="home-tab">
                            <div class="row">

                                <!-- Single Video -->
                                <?= get_template_part('partials/loop/author/posts', 'posts') ?>


                            </div>
                        </div>

                        <!-- Education -->
                        <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
                            <div class="details_single p-2">
                                <h2>درباره استاد</h2>
                                <ul class="skills_info">
                                    <li>
                                        <div class="skills_captions">
                                            <!--                                            <h4 class="Skill_title">فارغ التحصیل کارشناسی ارشد مهندسی برق</h4>-->
                                            <!--                                            <span>1397 - 1399</span>-->
                                            <!--                                            <span>دانشگاه تربیت مدرس</span>-->
                                            <p class="skills_dec">   <?= get_the_author_meta('user_description', get_query_var('author')) ?></p>
                                        </div>
                                    </li>


                                </ul>
                            </div>
                        </div>

                        <!-- Reviews -->
                        <div class="tab-pane fade" id="contact" role="tabpanel" aria-labelledby="contact-tab">
                            <div class="reviews-comments-wrap">


                                <?= get_template_part('partials/loop/comment-author/get-comments-for-posts-author', 'get-comments-for-posts-author') ?>


                            </div>
                        </div>

                    </div>
                </div>
            </div>

        </div>
    </div>
</section>
<!-- ============================ Instructor Detail ================================== -->