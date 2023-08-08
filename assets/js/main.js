jQuery(document).ready(function ($) {
    // show error comment
    $('#btn_send_comment').hide();
    $('.reply-to-comment').hide();

    $(".check-comment-field").focusout(function(){
        let value=$(this).val();
        value=value.replace(/\s/g, '')
        if(!value){
            $(this).css("border-color", "#ED2939");
            $('.danger-comment').show();
        }else {
            $(this).css("border-color", "#ffffff");
            $('.danger-comment').hide();
        }

        const inputs=document.querySelectorAll('.check-comment-field');
        let flag=true;
        inputs.forEach(item => {
            let input_comment=item.value;
            input_comment=input_comment.replace(/\s/g, '')
            if(!input_comment){
              flag = false;
            }
        })
        if(flag){
            $('#btn_send_comment').show()
        }else {
            $('#btn_send_comment').hide()
        }
    });


//     Comment reply
    $('.reply').on('click',function () {
         let el=$(this);
         let comment_id=el.data('comment-id');
         $('#comment_parent').val(comment_id);
         let comment_author=el.data('comment-author');
         $('.reply-to').text('درپاسخ به : '+comment_author);
         let comment_message=el.data('comment-content');
         $('.reply-to-comment').text(comment_message).show();


    })

    $('#create_comments').on('click',function () {
        $('#comment_parent').val("");
        $('.check-comment-field').val("")
        $('.reply-to-comment').hide();
        $('.reply-to').text('ارسال پیام')

    })
})