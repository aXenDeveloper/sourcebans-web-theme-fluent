<div class="login">
    <div class="login_box layout_box">
        <h3 class="layout_box_title">Admin Login</h3>
        <div id="login-content" class="layout_padding">
            -{if $steamlogin_show == 1}-
                <div id="loginUsernameDiv">
                    <label for="loginUsername">Username:</label><br />
                    <input id="loginUsername" class="loginmedium" type="text" name="username" value="" />
                </div>
                <div id="loginUsername.msg" class="badentry"></div>
    
                <div id="loginPasswordDiv">
                    <label for="loginPassword">Password:</label><br />
                    <input id="loginPassword" class="loginmedium" type="password" name="password" value="" />
                </div>
                <div id="loginPassword.msg" class="badentry"></div>
    
                <div id="loginRememberMeDiv">
                    <input id="loginRememberMe" type="checkbox" class="checkbox" name="remember" value="checked" vspace="5px" /> <span class="checkbox" style="cursor:pointer;" onclick="($('loginRememberMe').checked?$('loginRememberMe').checked=false:$('loginRememberMe').checked=true)">Remember me</span>
                </div>
            -{/if}-
            <div id="loginSubmit">
                <center><a href="index.php?p=login&o=steam"><img src="images/steamlogin.png"></a></center>
                <br>
                -{if $steamlogin_show == 1}-
                    -{sb_button text="Login" onclick=$redir class="ok login" id="alogin" style="width: 100%; text-transform: uppercase;" submit=false}-
                -{/if}-
            </div>
            -{if $steamlogin_show == 1}-
                <div id="loginOtherlinks">
                    <a href="index.php?p=lostpassword">Lost your password?</a>
                </div>
            -{/if}-
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