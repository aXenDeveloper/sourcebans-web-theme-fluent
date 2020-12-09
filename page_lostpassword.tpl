<div class="layout_flex layout_flex-jc:center layout_flex-ai:center">
    <div class="layout_box_small layout_box">
        <div class="layout_box_title">
            <h2>Lost your password</h2>
        </div>
        <div class="layout_padding">
            <ul class="layout_box_small_ul">
                <li>
                    <span>Please type your email address in the box below to have your password reset.</span>
                </li>
                <li id="msg-red" style="display:none;">
                    <i class="fas fa-times fa-2x"></i>
                    <b>Error</b>
                    <br />
                    The email address you supplied is not registered on the system.</i>
                </li>
                <li id="msg-blue" style="display:none;">
                    <i><img src="./images/info.png" alt="Warning" /></i>
                    <b>Information</b>
                    <br />
                    Please check your email inbox (and spam) for a link which will help you reset your password.</i>
                </li>
                <li class="login_reset_box_data_email">
                    <label for="email">Email Address</label>
                    <input id="email" class="layout_input" type="text" name="email" value="" />
                </li>
                <li>
                    <button onclick="xajax_LostPassword($('email').value);" name="reset_password" class="layout_button layout_button:success layout_button:full" id="alogin">Recover Password</button>
                </li>
        </div>
    </div>
</div>