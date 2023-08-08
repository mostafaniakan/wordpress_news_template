<?php

//$atts get src video
function free_video_shortcodes($atts, $counter = null): string
{
//    style html
    return '
 <video id="my_video" class="video-js video-js-free-course" controls preload="auto" width="100%"  poster="" data-setuop="{}">
 
<source src="' . $atts['src'] . '" type="video/mp4">
<p class="vjs-no-js alert-warning">
برای دیدن ویدیو جاوا اسکریپت مرورگر خود را فعال نمایید
</p>
</video>
<div class="download-link " style="text-align: center"><a href="' . $atts['src'] . '" class="btn btn-success" style=""><i class="fa fa-download"><span class="mx-2">دانلود ویدیو</span></i></a></div>   
    ';
}


function blockquery_shortcodes($atts, $counter = null): string
{
//    style html
    return
        '
     <blockquote>
		<span class="icon"><i class="fas fa-quote-right"></i></span>
		<p class="text">' . $atts['text'] . '</p>
		<h5 class="name">- ' . $atts['quote'] . '</h5>
	</blockquote>
 ';
}

//use post free-video
add_shortcode('free-video', 'free_video_shortcodes');

//use post quote
add_shortcode('bq', 'blockquery_shortcodes');