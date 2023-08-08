<!-- ============================ Page Title Start================================== -->
<section class="page-title">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-md-12">

                <div class="breadcrumbs-wrap">
                    <h1 class="breadcrumb-title"><?= get_the_title() ?></h1>
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb">
<!--                             get breadcrumb class-->
                            <?php \breadcrumb\Breadcrumb::breadcrumb(); ?>
                        </ol>
                    </nav>
                </div>

            </div>
        </div>
    </div>
</section>
<!-- ============================ Page Title End ================================== -->