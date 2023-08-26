<!-- ============================ Page Title Start================================== -->
<section class="page-title">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-md-12">

                <div class="breadcrumbs-wrap">
                    <h1 class="breadcrumb-title">آرشیو</h1>
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="#">خانه</a></li>
                            <li class="breadcrumb-item active" aria-current="page">
                                <?php
                                if(is_year()){
                                    echo get_the_date('سال Y');
                                }else if(is_month()){
                                    echo get_the_date('F ماه Y ');
                                }else if(is_day()){
                                    echo get_the_date('F j Y آرشیو مطالب');
                                }
                                ?>
                            </li>

                        </ol>
                    </nav>
                </div>

            </div>
        </div>
    </div>
</section>
<!-- ============================ Page Title End ================================== -->