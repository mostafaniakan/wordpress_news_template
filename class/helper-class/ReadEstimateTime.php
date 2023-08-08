<?php

class ReadEstimateTime
{
    public static function dwt_read_estimate_time(string $content,  $wpm='300'):string
    {
//       remove short code
        $clean_content=  strip_tags( strip_shortcodes($content));

//        count words
        $word_count=str_word_count($clean_content,0,'ابپتثجچ‌حخدذرز‌ژس‌شصضطظعغفقکگلمنوهیءآاًهٔه');


        return  ceil($word_count / $wpm);

    }
}