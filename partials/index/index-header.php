<!-- ============================ Hero Banner  Start================================== -->
<div class="image-cover hero_banner hero-inner-2 shadow rlt" style="background:url(<?= get_template_directory_uri().'/assets/img/banner-2.jpg'?>) no-repeat;" data-overlay="7">
    <div class="container">

        <div class="hero-caption small_wd mb-5">
            <h1 class="big-header-capt cl_2 mb-0">سامانه آموزشی آنلاین</h1>
            <p>هر موضوعی را در هر زمان مطالعه کنید. ده ها دوره آموزشی را با بهترین کیفیت در دسترس شماست !</p>
        </div>
        <!-- Type -->
        <div class="row">
            <div class="col-lg-8 col-md-12 col-sm-12">
                <div class="banner-search shadow_high">
                    <div class="search_hero_wrapping">
                        <div class="row">

                            <div class="col-lg-10 col-md-9 col-sm-12 br-right">
                                <div class="form-group">
                                    <div class="input-with-icon">
<!--                                        --><?php //get_search_form() ?>
                                       <form action="<?php bloginfo('url')?>" method="get">

                                           <input type="text" name="s" class="form-control" placeholder="جستجو ..." />
                                           <img src="<?= get_template_directory_uri().'/assets/img/search.svg' ?>" class="search-icon" alt="" />

                                    </div>
                                </div>
                            </div>

                            <div class="col-lg-2 col-md-3 col-sm-12 pl-0">
                                <div class="form-group none">
                                    <input type="submit" value="جستجو" class="btn search-btn full-width">
                                </div>
                            </div>
                            </form>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- ============================ Hero Banner End ================================== -->