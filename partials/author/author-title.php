<?php
//get author
global $wp_query;
$author = $wp_query->get_queried_object();

//echo '<pre>';
//var_dump($author);
//echo '</pre>';

?>
<!-- ============================ Instructor header Start================================== -->
<div class="image-cover ed_detail_head invers" style="background:#f4f5f7;">
    <div class="container">
        <div class="row align-items-center">
            <div class="col-lg-12 col-md-12">
                <div class="viewer_detail_wraps">
                    <div class="viewer_detail_thumb">
                        <?php
                        $name=$author->display_name;
                       echo get_avatar($author->user_email , 150,'',$name,'') ?>
                        <div class="viewer_status">
<!--                            --><?php //= $author->roles[0]?>
<!--                            --><?php
                            switch ($author->roles[0]){
                                case 'administrator':
                                    echo 'مدیر';
                                    break;
                                case 'editor':
                                    echo 'ویرایشگر';
                                    break;
                                case 'author':
                                    echo 'نویسنده';
                                    break;

                            }
                            ?>
                        </div>
                    </div>
                    <div class="caption">
                        <div class="viewer_package_status"> <span> <?= $author->display_name?></span> از <span><?= TimeModify::time_ago($author->user_registered) ?></span>  درکنار ماست </div>
                        <div class="viewer_header">
                            <h4><?=$name?></h4>
                            <span class="viewer_location"><?= get_user_meta($author->ID,'_dwt_vocation',true) ?></span>
                            <ul class="mt-2">
                                <li> تعداد مطالب : <strong><?= count_user_posts($author->ID,['post','tech'])?></strong>
                                </li>
                                <li><strong>87</strong> ویدئو آموزشی</li>
                                <li><strong>120</strong> دوره</li>
                            </ul>
                        </div>
                        <div class="viewer_header">
                            <ul class="badge_info">
                                <li class="started"><i class="ti-rocket"></i></li>
                                <li class="medium"><i class="ti-cup"></i></li>
                                <li class="platinum"><i class="ti-thumb-up"></i></li>
                                <li class="elite unlock"><i class="ti-medall"></i></li>
                                <li class="power unlock"><i class="ti-crown"></i></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
</div>
<!-- ============================ Instructor header End ================================== -->