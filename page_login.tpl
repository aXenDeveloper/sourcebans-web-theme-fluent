<div class="login">
    <div class="login_box layout_box">
        <h3 class="layout_box_title">Admin Login</h3>
        <div class="login_box_data layout_padding">
            <ul>
                -{if $steamlogin_show == 1}-
                    <li>
                        <label for="loginUsername">Username</label>
                        <input id="loginUsername" class="layout_input" type="text" name="username" value="" placeholder="Username" />
                        <div id="loginUsername.msg" class="badentry"></div>
                    </li>
                    <li>
                        <label for="loginPassword">Password</label>
                        <input id="loginPassword" class="layout_input" type="password" name="password" value="" placeholder="Password" />
                        <div id="loginPassword.msg" class="badentry"></div>
                    </li>
                    <li class="login_box_data_options">
                        <div class="login_box_data_options:remember">
                            <input id="loginRememberMe" type="checkbox" name="remember" value="checked" />
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