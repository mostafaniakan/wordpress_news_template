<!-- ============================ Page Title ategory ================================== -->
<section class="page-title">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-md-12">

                <div class="breadcrumbs-wrap">
                    <h1 class="breadcrumb-title">مطالب مرتبط با دسته بندی : <?= single_cat_title() ?> <?= '<span class="text-primary"></span>'?></h1>
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="<?= home_url()?>">  خانه </a></li>
                            <li class="breadcrumb-item active" aria-current="page"><?= '<span class=""> '.single_cat_title().' </span>'?></li>
                        </ol>
                    </nav>
                </div>

            </div>
        </div>
    </div>
</section>
<!-- ============================ Page Title End =================================