<div class="single_widgets widget_search">
    <h4 class="title">آرشیو مطالب</h4>
    <select class="form-control form-control-sm bg-light text-dark" name="archive-dropdown" onchange="document.location.href=this.options[this.selectedIndex].value;">
        <option >آرشیو مطالب بر اساس ...</option>
        <?php
        //دریافت تاریخ و نمایش پست ها براساس تاریخ
        $argc = [
            'format' => 'option',
            'show_post_count' => true,
            'post_type' =>  'tech',
        ];

        wp_get_archives($argc);

        ?>
    </select>
</div>

