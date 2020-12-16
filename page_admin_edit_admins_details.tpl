<div class="layout_box flex:11 admin_tab_content">
    <div class="admin_tab_content_title">
        <h2>Admin Details</h2>
    </div>

    <div class="padding">
        <form action="" method="post">
            <ul class="form_ul">
                <li>
                    <label for="adminname">Admin Login</label>
                    <input type="text" class="input input-full margin-top:half" id="adminname" name="adminname"
                        value="{$user}" />
                    <div id="adminname.msg" class="message message:error margin-top:half" style="display: none;"></div>
                </li>
                <li>
                    <label for="steam">Admin STEAM ID</label>
                    <input type="text" class="input input-full margin-top:half" id="steam" name="steam"
                        value="{$authid}" />
                    <div id="steam.msg" class="message message:error margin-top:half" style="display: none;"></div>
                </li>
                <li>
                    <label for="email">Admin Email</label>
                    <input type="text" class="input input-full margin-top:half" id="email" name="email"
                        value="{$email}" />
                    <div id="email.msg" class="message message:error margin-top:half" style="display: none;"></div>
                </li>
                {if $change_pass}
                    <li>
                        <label for="password">Admin Password</label>
                        <input type="password" class="input input-full margin-top:half" id="password" name="password" />
                        <div id="password.msg" class="message message:error margin-top:half" style="display: none;"></div>
                    </li>
                    <li>
                        <label for="password2">Admin Password (confirm)</label>
                        <input type="password" class="input input-full margin-top:half" id="password2" name="password2" />
                        <div id="password2.msg" class="message message:error margin-top:half" style="display: none;"></div>
                    </li>
                    <li>
                        <label for="a_serverpass">Server Password <a
                                href="http://wiki.alliedmods.net/Adding_Admins_%28SourceMod%29#Passwords"
                                rel="noopener">More</a></label>

                        <input type="checkbox" id="a_useserverpass" name="a_useserverpass" {if $a_spass} checked="checked"
                            {/if} TABINDEX=6 onclick="$('a_serverpass').disabled = !$(this).checked;" />

                        <input type="password" TABINDEX=7 class="input input-full margin-top:half" name="a_serverpass"
                            id="a_serverpass" {if !$a_spass} disabled="disabled" {/if} />

                        <div id="a_serverpass.msg" class="message message:error margin-top:half" style="display: none;">
                        </div>
                    </li>
                {/if}

                <div class="flex flex-ai:center flex-jc:space-between">
                    {sb_button text="Save Changes" class="button button-success" id="editmod" submit=true}
                    {sb_button text="Back" onclick="history.go(-1)" class="button button-light" id="back" submit=false}
                </div>
            </ul>
        </form>
    </div>
</div>