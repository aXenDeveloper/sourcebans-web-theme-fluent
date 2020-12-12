<div class="flex flex-jc:center flex-ai:center">
    <div class="layout_box_small layout_box">
        <div class="layout_box_title">
            <h2>Lost your password</h2>
        </div>
        <div class="padding">
            <ul class="layout_box_small_ul">
                <li>
                    <span>Please type your email address in the box below to have your password reset.</span>
                </li>
                <li id="msg-red" style="display:none;">
                    <div class="message message:error">
                        The email address you supplied is not registered on the system.
                    </div>
                </li>
                <li id="msg-blue" style="display:none;">
                    <div class="message message:info">
                        Please check your email inbox (and spam) for a link which will help you reset your password.
                    </div>
                </li>
                <li>
                    <label for="email">Email Address</label>
                    <input id="email" class="input input-full margin-top:half" type="text" name="email" />
                </li>
                <li>
                    <button onclick="xajax_LostPassword($('email').value);" name="reset_password" class="button button:success button:full" id="alogin">Recover Password</button>
                </li>
        </div>
    </div>
</div>