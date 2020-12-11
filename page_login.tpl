<div class="layout_flex layout_flex-jc:center layout_flex-ai:center">
    <div class="layout_box_small layout_box">
        <div class="layout_box_title">
            <h2>Admin Login</h2>
        </div>
        <div class="layout_padding">
            <ul class="layout_box_small_ul">
                -{if $steamlogin_show == 1}-
                    <li>
                        <label for="loginUsername">Username</label>
                        <input id="loginUsername" class="layout_input layout_margin-top:half" type="text" name="username" value="" placeholder="Username" />
                        <div id="loginUsername.msg" class="badentry"></div>
                    </li>
                    <li>
                        <label for="loginPassword">Password</label>
                        <input id="loginPassword" class="layout_input layout_margin-top:half" type="password" name="password" value="" placeholder="Password" />
                        <div id="loginPassword.msg" class="badentry"></div>
                    </li>
                    <li class="layout_flex layout_flex-jc:space-between layout_flex-ai:center">
                        <div class="layout_flex layout_flex-jc:space-between layout_flex-ai:center">
                            <input id="loginRememberMe" class="layout_input-checkbox" type="checkbox" name="remember" value="checked" />
                            <span onclick="($('loginRememberMe').checked?$('loginRememberMe').checked=false:$('loginRememberMe').checked=true)">Remember me</span>
                        </div>
    
                        -{if $steamlogin_show == 1}-
                            <a href="index.php?p=lostpassword">Lost your password?</a>
                        -{/if}-
                    </li>
                -{/if}-
                -{if $steamlogin_show == 1}-
                    <li>
                        <button onclick="DoLogin('');" name="alogin" class="layout_button layout_button:success layout_button:full" id="alogin">Login</button>
                    </li>
                -{/if}-
                <li class="layout_text:center">
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