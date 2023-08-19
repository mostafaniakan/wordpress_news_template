<!-- ========================== post tech Section =============================== -->
<section class="min-sec">
    <div class="container">

        <div class="row justify-content-center">
            <div class="col-lg-12 col-md-12">
                <div class="sec-heading2 sec-heading-flex">
                    <div class="sec-left">
                        <h3>آخرین اخبار دنیای تکنولوژی</h3>
                    </div>
                    <div class="sec-right">
                        <select class="form-control form-control-sm bg-light text-dark" id="change-post-type">
                            <option value="new">نمایش بر اساس : جدیدترین ها</option>
                            <option value="popular">محبوب ترین ها</option>
                            <option value="hot_post">داغ ترین ها</option>
                            <option value="video">مطالب ویدئویی</option>
                        </select>
                        <!-- <a href="javascript:void(0);" class="btn-br-more">همه مطالب</a> -->
                    </div>
                </div>
            </div>
        </div>

        <div class="row" id="ajax-load-content">

        <?= get_template_part('partials/loop/index/tech-loop','tech-loop')?>


        </div>
    </div>
</section>
<!-- ========================== post tech Section =============================== -->