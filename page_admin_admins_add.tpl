<div class="layout_box flex:11 admin_tab_content tabcontent" id="Add new admin">
    {if NOT $permission_addadmin}
        Access Denied!
    {else}
        <div class="admin_tab_content_title">
            <h2>Admin Details</h2>
        </div>

        <div class="padding">
            <div id="msg-green" class="message message:succes margin-bottom:half" style="display: none;">
                <h3>Admin Added</h3>
                <p>The new admin has been successfully added to the system.</p>
                <span class="text:italic">Redirecting back to admins page</span>
            </div>

            <div id="add-group">
                <span>
                    For more information or help regarding a certain subject move your mouse over the
                    question mark.
                </span>

                <form class="form">
                    <ul class="form_ul">
                        <li>
                            <label for="adminname">
                                {help_icon title="Admin Login" message="This is the username the admin will use to login-to their admin panel. Also this will identify the admin on any bans they make."}
                                Admin Login
                            </label>

                            <input type="text" TABINDEX=1 class="input input-full margin-top:half" id="adminname"
                                name="adminname" />
                            <div id="name.msg" class="message message:error margin-top:half" style="display: none;"></div>
                        </li>

                        <li>
                            <label for="steam">
                                {help_icon title="Steam ID" message="This is the admins 'STEAM' id. This must be set so that admins can use their admin rights ingame."}
                                Admin Steam ID
                            </label>

                            <input type="text" TABINDEX=2 value="STEAM_0:" class="input input-full margin-top:half"
                                id="steam" name="steam" />
                            <div id="steam.msg" class="message message:error margin-top:half" style="display: none;"></div>
                        </li>

                        <li>
                            <label for="email">
                                {help_icon title="Admin Email" message="Set the admins e-mail address. This will be used for sending out any automated messages from the system and changing of forgotten passwords. This is only required, if you set webpanel permissions."}
                                Admin Email
                            </label>

                            <input type="text" TABINDEX=3 class="input input-full margin-top:half" id="email"
                                name="email" />
                            <div id="email.msg" class="message message:error margin-top:half" style="display: none;"></div>
                        </li>

                        <li>
                            <label for="password">
                                {help_icon title="Password" message="The password the admin will need to access the admin panel. This is only required, if you set webpanel permissions."}Admin
                                Password
                            </label>

                            <input type="password" TABINDEX=4 class="input input-full margin-top:half" id="password"
                                name="password" />
                            <div id="password.msg" class="message message:error margin-top:half" style="display: none;">
                            </div>

                            <button onclick="xajax_generatePassword();" class="tip" title="::Generate random password">
                                <i class="fas fa-sync fa-lg"></i>
                            </button>
                            <button onclick="$('password').type='text'" class="tip" title="::Show password">
                                <i class="fas fa-eye fa-lg"></i>
                            </button>
                        </li>

                        <li>
                            <label for="password2">
                                {help_icon title="Password" message="Type the password again to confirm."}
                                Admin Password (confirm)
                            </label>

                            <input type="password" TABINDEX=5 class="input input-full margin-top:half" id="password2"
                                name="password2" />
                            <div id="password2.msg" class="message message:error margin-top:half" style="display: none;">
                            </div>
                        </li>

                        <li>
                            <label for="a_serverpass">
                                {help_icon title="Server Admin Password" message="If this box is checked, you will need to specify this password in the game server before you can use your admin rights."}Server
                                Password <small>(<a
                                        href="http://wiki.alliedmods.net/Adding_Admins_%28SourceMod%29#Passwords"
                                        title="SourceMod Password Info" target="_blank">More</a>)
                            </label>

                            <input type="checkbox" id="a_useserverpass" name="a_useserverpass" TABINDEX=6
                                onclick="$('a_serverpass').disabled = !$(this).checked;" />

                            <input type="password" TABINDEX=7 class="input input-full margin-top:half" name="a_serverpass"
                                id="a_serverpass" disabled="disabled" />
                            <div id="a_serverpass.msg" class="message message:error margin-top:half" style="display: none;">
                            </div>
                        </li>

                        <li>
                            <label for="">
                                {help_icon title="Server" message="<b>Server: </b><br>Choose the server, or server group that this admin will be able to administer."}
                                Server Access
                            </label>

                            <ul>
                                {foreach from="$server_list" item="server"}
                                    <li>
                                        <input type="checkbox" name="servers[]" id="servers[]" value="s{$server.sid}" />
                                        <span id="sa{$server.sid}">
                                            Retrieving Hostname... {$server.ip}:{$server.port}
                                        </span>
                                    </li>
                                {/foreach}

                                {foreach from="$group_list" item="group"}
                                    <li>
                                        <input type="checkbox" id="group[]" name="group[]" value="g{$group.gid}" />
                                        {$group.name} <b><i>(Group)</i></b>
                                    </li>
                                {/foreach}
                            </ul>
                        </li>

                        <li>
                            <label for="serverg">
                                {help_icon title="Admin Group" message="<b>Custom Permisions: </b><br>Select this to choose custom permissions for this admin.<br><br><b>New Group: </b><br>Select this to choose custom permissions and then save the permissions as a new group.<br><br><b>Groups: </b><br>Select a pre-made group to add the admin to."}Server
                                Admin Group
                            </label>

                            <select TABINDEX=8 onchange="update_server()" name="serverg" id="serverg" class="select"
                                style="width: 225px">
                                <option value="-2">Please Select...</option>
                                <option value="-3">No Permissions</option>
                                <option value="c">Custom Permissions</option>
                                <option value="n">New Admin Group</option>
                                <optgroup label="Groups" style="font-weight:bold;">
                                    {foreach from="$server_admin_group_list" item="server_wg"}
                                        <option value='{$server_wg.id}'>{$server_wg.name}</option>
                                    {/foreach}
                                </optgroup>
                            </select>
                            <div id="server.msg" class="message message:error margin-top:half" style="display: none;"></div>
                        </li>

                        <li>
                            <label for="webg">
                                {help_icon title="Admin Group" message="<b>Custom Permisions: </b><br>Select this to choose custom permissions for this admin.<br><br><b>New Group: </b><br>Select this to choose custom permissions and then save the permissions as a new group.<br><br><b>Groups: </b><br>Select a pre-made group to add the admin to."}Web
                                Admin Group
                            </label>

                            <select TABINDEX=9 onchange="update_web()" name="webg" id="webg" class="select"
                                style="width: 225px">
                                <option value="-2">Please Select...</option>
                                <option value="-3">No Permissions</option>
                                <option value="c">Custom Permissions</option>
                                <option value="n">New Admin Group</option>
                                <optgroup label="Groups" style="font-weight:bold;">
                                    {foreach from="$server_group_list" item="server_g"}
                                        <option value='{$server_g.gid}'>{$server_g.name}</option>
                                    {/foreach}
                                </optgroup>
                            </select>
                            <div id="web.msg" class="message message:error margin-top:half" style="display: none;"></div>
                        </li>
                    </ul>

                    <div class="flex flex-jc:space-between flex-ai:center margin-top">
                        {sb_button text="Add Admin" onclick="ProcessAddAdmin();" class="button button:success" id="aadmin" submit=false}
                        {sb_button text="Back" onclick="history.go(-1)" class="button button:light" id="aback"}
                    </div>
                </form>
                {$server_script}
            </div>
        </div>
    {/if}
</div>

</div>