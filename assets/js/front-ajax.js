jQuery(document).ready(function ($) {
    //tech post change ajax
    $('#change-post-type').on('change', function () {
        let el = $(this);
        let option_find = el.find('option:selected');
        let option_value = option_find.val();

        $.ajax({
            url: ajax.ajax_url,
            type: 'post',
            datatype: 'json',
            data: {
                action: option_value,
                nonce: ajax._nonce,
            },
            beforeSend:function () {
                $('#ajax-load-content').css('opacity','.3')
            },
            success:function (response) {
                $('#ajax-load-content').html(response.html);
            },
            error:function (error) {

            },
            complete:function () {
                $('#ajax-load-content').css('opacity','1')
            }
        })
    })
})