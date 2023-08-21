<?php

// Do stuff
function dwt_user_meta_form_field_vocation($user)
{
    ?>
    <h3>حرفه</h3>
<!--    <label for="user_vocation_custom">حرفه شما </label>-->
    <input type="text" name="user_vocation_custom" placeholder="حرفه"
           value="<?= get_user_meta($user->ID, '_dwt_vocation', true) ?>">
    <?php
}

function dwt_user_meta_form_field_vocation_update($user_id)
{

    if ( ! current_user_can( 'edit_user', $user_id ) ) {
        return false;
    }

    // create/update user meta for the $user_id
    return update_user_meta(
        $user_id,
        '_dwt_vocation',
        $_POST['user_vocation_custom']
    );
}

//add field
add_action('show_user_profile', 'dwt_user_meta_form_field_vocation');
add_action('edit_user_profile', 'dwt_user_meta_form_field_vocation');

//update and create to database
add_action('personal_options_update', 'dwt_user_meta_form_field_vocation_update');
add_action('edit_user_profile_update', 'dwt_user_meta_form_field_vocation_update');



