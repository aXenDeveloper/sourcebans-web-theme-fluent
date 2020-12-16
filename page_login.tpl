<div class="flex flex-jc:center flex-ai:center">
    <div class="layout_box_small layout_box">
        <div class="layout_box_title">
            <h2>Admin Login</h2>
        </div>
        <div class="padding">
            <ul class="layout_box_small_ul">
                -{if $steamlogin_show == 1}-
                    <li>
                        <label for="loginUsername">Username</label>
                        <input id="loginUsername" class="input input-full margin-top:half" type="text" name="username" />
                        <div id="loginUsername.msg" class="message message:error margin-top:half" style="display: none;">
                    </li>
                    <li>
                        <label for="loginPassword">Password</label>
                        <input id="loginPassword" class="input input-full margin-top:half" type="password"
                            name="password" />
                        <div id="loginPassword.msg" class="message message:error margin-top:half" style="display: none;">
                        </div>
                    </li>
                    <li class="flex flex-jc:space-between flex-ai:center">
                        <div class="flex flex-jc:space-between flex-ai:center">
                            <span class="input_checkbox">
                                <label>
                                    <input id="loginRememberMe" type="checkbox" name="remember" value="checked" /> Remember
                                    me
                                    <span></span>
                                </label>
                            </span>
                        </div>

                        -{if $steamlogin_show == 1}-
                            <a href="index.php?p=lostpassword">Lost your password?</a>
                        -{/if}-
                    </li>
                -{/if}-
                -{if $steamlogin_show == 1}-
                    <li>
                        <button onclick="DoLogin('');" name="alogin" class="button button-success button:full"
                            id="alogin">Login</button>
                    </li>
                -{/if}-
                <li class="text:center">
                    <a href="index.php?p=login&o=steam">
                        <img src="images/steamlogin.png" alt="Login Steam">
                    </a>
                </li>
            </ul>
        </div>
    </div>
</div>

<script>
    $E('html').onkeydown = function(event) {
        var event = new Event(event);
        if (event.key == 'enter' ) -{$redir}-
    };
    $('loginRememberMeDiv').onkeydown = function(event) {
        var event = new Event(event);
        if (event.key == 'space') $('loginRememberMeDiv').checked = true;
    };
    $('button').onkeydown = function(event) {
        var event = new Event(event);
        if (event.key == 'space' ) -{$redir}-
    };
</script>