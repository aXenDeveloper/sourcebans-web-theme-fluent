<div class="layout_box flex:11 admin_tab_content tabcontent" id="Add new server">
    {if not $permission_addserver}
        Access Denied
    {else}
        <div class="admin_tab_content_title">
            <h2>Server Details</h2>
        </div>

        <div class="padding">
            <span>For more information or help regarding a certain subject move your mouse over the question mark.</span>

            <input type="hidden" name="insert_type" value="add">
            <ul class="form_ul margin-top">
                <li>
                    <label for="address">Server IP/Domain</label>
                    <input type="text" TABINDEX=1 class="input input-full margin-top:half" id="address" name="address"
                        value="{$ip}" />
                    <div id="address.msg" class="message message:error margin-top:half" style="display: none;"></div>
                </li>
                <li>
                    <label for="port">Server Port</label>
                    <input type="text" TABINDEX=2 class="input input-full margin-top:half" id="port" name="port"
                        value="{if $port}{$port}{else}{27015}{/if}" />
                    <div id="port.msg" class="message message:error margin-top:half" style="display: none;"></div>
                </li>
                <li>
                    <label for="rcon">RCON Password</label>
                    <input type="password" TABINDEX=3 class="input input-full margin-top:half" id="rcon" name="rcon"
                        value="{$rcon}" />
                    <div id="rcon.msg" class="message message:error margin-top:half" style="display: none;"></div>
                </li>
                <li>
                    <label for="rcon2">RCON Password (Confirm)</label>
                    <input type="password" TABINDEX=4 class="input input-full margin-top:half" id="rcon2" name="rcon2"
                        value="{$rcon}" />
                    <div id="rcon2.msg" class="message message:error margin-top:half" style="display: none;"></div>
                </li>
                <li>
                    <label for="mod">Server MOD</label>

                    <select name="mod" TABINDEX=5 onchange="" id="mod" class="input">
                        {if !$edit_server}
                            <option value="-2">Please Select...</option>
                        {/if}
                        {foreach from="$modlist" item="mod"}
                            <option value='{$mod.mid}'>{$mod.name}</option>
                        {/foreach}
                    </select>

                    <div id="mod.msg" class="message message:error margin-top:half" style="display: none;"></div>
                </li>
                <li>
                    <label for="enabled">Enabled</label>
                    <input type="checkbox" id="enabled" name="enabled" checked="checked" />
                    <div id="enabled.msg" class="message message:error margin-top:half" style="display: none;"></div>
                </li>
                <li>
                    <label>Server Groups</label>
                    <ul class="form_ul margin-top">
                        {foreach from="$grouplist" item="group"}
                            <li>
                                <input type="checkbox" value="{$group.gid}" id="g_{$group.gid}" name="groups[]" />
                                <span>{$group.name}</span>
                            </li>
                        {/foreach}
                    </ul>
                    <div id="nsgroup" class="message message:error margin-top:half" style="display: none;"></div>
                </li>
            </ul>

            <div class="flex flex-ai:center flex-jc:space-between">
                {if $edit_server}
                    {sb_button text=$submit_text onclick="process_edit_server();" class="button button-success" id="aserver" submit=false}
                {else}
                    {sb_button text=$submit_text onclick="process_add_server();" class="button button-success" id="aserver" submit=false}
                {/if}

                {sb_button text="Back" onclick="history.go(-1)" class="button button-light" id="back" submit=false}
            </div>
        </div>
    {/if}
</div>
</div>