<div class="margin-bottom">
  <div class="table padding">
    <div class="table_box">
      <table>
        <tbody>
          <tr class="collapse">
            <td class="text:center">
              <span class="text:bold">Advanced Search</span> (Click)
            </td>
          </tr>

          <tr class="table_hide">
            <td colspan="1">
              <div class="collapse_content flex flex-jc:center">
                <div class="padding">

                  <div class="margin-bottom:half">
                    <input id="nick" name="search_type" class="form-radio" type="radio" value="nick" />

                    <label for="nick" class="form-label form-label:bottom">
                      Nickname
                    </label>

                    <input class="form-input form-full" type="text" id="nick" value=""
                      onmouseup="$('nick').checked = true" />
                  </div>

                  <div class="margin-bottom:half">
                    <input id="steam_match" type="radio" name="search_type" class="form-radio" value="radiobutton" />

                    <label for="steam_match" class="form-label form-label:bottom form-label:right">
                      Steam ID
                    </label>

                    <div class="flex">
                      <input class="form-input form-full margin-right" type="text" id="steamid" value=""
                        onmouseup="$('steam_match').checked = true" />

                      <select class="form-select form-full" id="steam_match"
                        onmouseup="$('steam_match').checked = true">
                        <option value="0" selected>Exact Match</option>
                        <option value="1">Partial Match</option>
                      </select>
                    </div>
                  </div>

                  {if $can_editadmin}
                    <div class="margin-bottom:half">
                      <input id="email" type="radio" class="form-radio" name="search_type" value="radiobutton" />

                      <label for="email" class="form-label form-label:bottom">
                        Email
                      </label>

                      <input class="form-input form-full" type="text" id="email" value=""
                        onmouseup="$('email').checked = true" />
                    </div>
                  {/if}


                  <div class="margin-bottom:half">
                    <input id="webgroup" name="search_type" type="radio" class="form-radio" value="radiobutton" />

                    <label for="webgroup" class="form-label form-label:bottom form-label:right">
                      Web Group
                    </label>

                    <select class="form-select form-full" id="webgroup" onmouseup="$('webgroup').checked = true">
                      {foreach from="$webgroup_list" item="webgrp"}
                        <option value="{$webgrp.gid}">{$webgrp.name}</option>
                      {/foreach}
                    </select>
                  </div>

                  <div class="margin-bottom:half">
                    <input id="srvadmgroup" name="search_type" type="radio" class="form-radio" value="radiobutton" />

                    <label for="srvadmgroup" class="form-label form-label:bottom form-label:right">
                      Server Admin Group
                    </label>

                    <select class="form-select form-full" id="srvadmgroup" onmouseup="$('srvadmgroup').checked = true">
                      {foreach from="$srvadmgroup_list" item="srvadmgrp"}
                        <option value="{$srvadmgrp.name}">{$srvadmgrp.name}</option>
                      {/foreach}
                    </select>
                  </div>

                  <div class="margin-bottom:half">
                    <input id="srvgroup" name="search_type" type="radio" class="form-radio" value="radiobutton" />

                    <label for="srvgroup" class="form-label form-label:bottom form-label:right">
                      Server Group
                    </label>

                    <select class="form-select form-full" id="srvgroup" onmouseup="$('srvgroup').checked = true">
                      {foreach from="$srvgroup_list" item="srvgrp"}
                        <option value="{$srvgrp.gid}">{$srvgrp.name}</option>
                      {/foreach}
                    </select>
                  </div>

                  <div class="margin-bottom:half">
                    <input id="admwebflag" name="search_type" type="radio" class="form-radio" value="radiobutton" />

                    <label for="admwebflag" class="form-label form-label:bottom form-label:right">
                      Server Group
                    </label>

                    <select class="form-select form-full" id="admwebflag" onblur="getMultiple(this, 1);" size="5"
                      multiple onmouseup="$('admwebflag').checked = true">
                      {foreach from="$admwebflag_list" item="admwebflag"}
                        <option value="{$admwebflag.flag}">{$admwebflag.name}</option>
                      {/foreach}
                    </select>
                  </div>

                  <div class="margin-bottom:half">
                    <input id="admsrvflag" name="search_type" type="radio" class="form-radio" value="radiobutton" />

                    <label for="admsrvflag" class="form-label form-label:bottom form-label:right">
                      Server Permissions
                    </label>

                    <select class="form-select form-full" id="admsrvflag" onblur="getMultiple(this, 2);" size="5"
                      multiple onmouseup="$('admsrvflag').checked = true">
                      {foreach from="$admsrvflag_list" item="admsrvflag"}
                        <option value="{$admsrvflag.flag}">{$admsrvflag.name}</option>
                      {/foreach}
                    </select>
                  </div>

                  <div class="margin-bottom:half">
                    <input id="server" name="search_type" type="radio" class="form-radio" value="radiobutton" />

                    <label for="server" class="form-label form-label:bottom form-label:right">
                      Server
                    </label>

                    <select class="form-select form-full" id="server" onmouseup="$('server').checked = true">
                      {foreach from="$server_list" item="server}
                      <option id="ss{$server.sid}">Retrieving Hostname... ({$server.ip}:{$server.port})</option>
                      {/foreach}
                    </select>
                  </div>

                  <div class="flex">
                    {sb_button text="Search" onclick="search_admins();" class="button button-primary flex:11" id="searchbtn" submit=false}
                  </div>
                </div>
              </div>
            </td>
          </tr>
        </tbody>
      </table>
    </div>
  </div>
</div>





<div align="center">
  <table width="80%" cellpadding="0" class="listtable" cellspacing="0">
    <tr class="sea_open">
      <td width="2%" height="16" class="listtable_top" colspan="3" style="text-align: center;"><b>Advanced
          Search<b></td>
    </tr>
    <tr>
      <td>
        <div class="panel">
          <table width="100%" cellpadding="0" class="listtable" cellspacing="0">
            <tr>
              <td class="listtable_1" width="8%" align="center"><input id="name_" name="search_type" type="radio"
                  value="name"></td>
              <td class="listtable_1" width="26%">Nickname</td>
              <td class="listtable_1" width="66%"><input class="textbox" type="text" id="nick" value=""
                  onmouseup="$('name_').checked = true" style="width: 353px;"></td>
            </tr>
            <tr>
              <td align="center" class="listtable_1"><input id="steam_" type="radio" name="search_type"
                  value="radiobutton"></td>
              <td class="listtable_1">SteamID</td>
              <td class="listtable_1">
                <input class="textbox" type="text" id="steamid" value="" onmouseup="$('steam_').checked = true"
                  style="width: 233px; margin-right: 15px;"><select class="select" id="steam_match"
                  onmouseup="$('steam_').checked = true" style="width: 105px;">
                  <option value="0" selected>Exact Match</option>
                  <option value="1">Partial Match</option>
                </select>
              </td>
            </tr>
            {if $can_editadmin}
            <tr>
              <td class="listtable_1" width="8%" align="center"><input id="admemail_" name="search_type" type="radio"
                  value="radiobutton"></td>
              <td class="listtable_1" width="26%">E-Mail</td>
              <td class="listtable_1" width="66%"><input class="textbox" type="text" id="admemail" value=""
                  onmouseup="$('admemail_').checked = true" style="width: 353px;"></td>
            </tr>
            {/if}
            <tr>
              <td align="center" class="listtable_1"><input id="webgroup_" type="radio" name="search_type"
                  value="radiobutton"></td>
              <td class="listtable_1">Web Group</td>
              <td class="listtable_1">
                <select class="select" id="webgroup" onmouseup="$('webgroup_').checked = true" style="width: 379px;">
                  {foreach from="$webgroup_list" item="webgrp"}
                  <option label="{$webgrp.name}" value="{$webgrp.gid}">{$webgrp.name}</option>
                  {/foreach}
                </select>
              </td>
            </tr>
            <tr>
              <td align="center" class="listtable_1"><input id="srvadmgroup_" type="radio" name="search_type"
                  value="radiobutton"></td>
              <td class="listtable_1">Serveradmin Group</td>
              <td class="listtable_1">
                <select class="select" id="srvadmgroup" onmouseup="$('srvadmgroup_').checked = true"
                  style="width: 379px;">
                  {foreach from="$srvadmgroup_list" item="srvadmgrp"}
                  <option label="{$srvadmgrp.name}" value="{$srvadmgrp.name}">{$srvadmgrp.name}
                  </option>
                  {/foreach}
                </select>
              </td>
            </tr>
            <tr>
              <td align="center" class="listtable_1"><input id="srvgroup_" type="radio" name="search_type"
                  value="radiobutton"></td>
              <td class="listtable_1">Server Group</td>
              <td class="listtable_1">
                <select class="select" id="srvgroup" onmouseup="$('srvgroup_').checked = true" style="width: 379px;">
                  {foreach from="$srvgroup_list" item="srvgrp"}
                  <option label="{$srvgrp.name}" value="{$srvgrp.gid}">{$srvgrp.name}</option>
                  {/foreach}
                </select>
              </td>
            </tr>
            <tr>
              <td class="listtable_1" align="center"><input id="admwebflags_" name="search_type" type="radio"
                  value="radiobutton"></td>
              <td class="listtable_1">Web Permissions</td>
              <td class="listtable_1">
                <select class="select" id="admwebflag" name="admwebflag" onblur="getMultiple(this, 1);" size="5"
                  multiple onmouseup="$('admwebflags_').checked = true" style="width: 379px;">
                  {foreach from="$admwebflag_list" item="admwebflag"}
                  <option label="{$admwebflag.name}" value="{$admwebflag.flag}">{$admwebflag.name}
                  </option>
                  {/foreach}
                </select>
              </td>
            </tr>
            <tr>
              <td class="listtable_1" align="center"><input id="admsrvflags_" name="search_type" type="radio"
                  value="radiobutton"></td>
              <td class="listtable_1">Server Permissions</td>
              <td class="listtable_1">
                <select class="select" id="admwebflag" name="admsrvflag" onblur="getMultiple(this, 2);" size="5"
                  multiple onmouseup="$('admsrvflags_').checked = true" style="width: 379px;">
                  {foreach from="$admsrvflag_list" item="admsrvflag"}
                  <option label="{$admsrvflag.name}" value="{$admsrvflag.flag}">{$admsrvflag.name}
                  </option>
                  {/foreach}
                </select>
              </td>
            </tr>
            <tr>
              <td class="listtable_1" align="center"><input id="admin_on_" name="search_type" type="radio"
                  value="radiobutton"></td>
              <td class="listtable_1">Server</td>
              <td class="listtable_1">
                <select class="select" id="server" onmouseup="$('admin_on_').checked = true" style="width: 379px;">
                  {foreach from="$server_list" item="server}
                  <option value="{$server.sid}" id="ss{$server.sid}">Retrieving Hostname...
                    ({$server.ip}:{$server.port})</option>
                  {/foreach}
                </select>
              </td>
            </tr>
            <tr colspan="3">
              <td colspan="3">
                {sb_button text="Search" onclick="search_admins();" class="ok" id="searchbtn" submit=false}
              </td>
            </tr>
          </table>
        </div>
      </td>
    </tr>
  </table>
</div>
{$server_script}
<script>
  InitAccordion('tr.sea_open', 'div.panel', 'mainwrapper');
</script>