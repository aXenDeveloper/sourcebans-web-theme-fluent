{if $IN_SERVERS_PAGE && $access_bans}<div style="text-align:right; width:100%;"><small>Hint: Rightclick on a player to open a context menu with options to kick, ban or contact the player directly.</small></div>{/if}
<div class="layout_box">
    <table class="layout_table layout_padding">
        <thead>
            <tr>
                <th>MOD</th>
                <th>OS</th>
                <th>VAC</th>
                <th class="layout_text:left">Hostname</th>
                <th>IP adress</th>
                <th>Players</th>
                <th>Map</th>
                <th>Options</th>
            </tr>
        </thead>
        <tbody>
            {foreach from=$server_list item=server}
                <tr>
                    <td class="layout_text:center">
                        <img src="images/games/{$server.icon}" alt="{$server.icon}" />
                    </td>
                    <td class="layout_text:center" id="os_{$server.sid}"></td>
                    <td class="layout_text:center" id="vac_{$server.sid}"></td>
                    <td id="host_{$server.sid}"><i>Querying Server Data...</i></td>
                    <td class="layout_text:center">{$server.ip}:{$server.port}</td>
                    <td class="layout_text:center" id="players_{$server.sid}">N/A</td>
                    <td class="layout_text:center" id="map_{$server.sid}">N/A</td>
                    <td class="layout_table_options" id="sinfo_{$server.sid}">
                        <ul>
                            <li>
                                <button onclick="document.location = 'steam://connect/{$server.ip}:{$server.port}'" class='layout_button layout_button:success'><i class="fa fa-sign-in"></i> Join game</button>
                            </li>
                            <li>
                                <button onclick="ShowBox('Reloading..','<b>Refreshing the Serverdata...</b><br><i>Please Wait!</i>', 'blue', '', false);document.getElementById('dialog-control').setStyle('display', 'none');xajax_RefreshServer({$server.sid});" class='layout_button layout_button:success'>Refresh</button>
                            </li>
                        </ul>
                    </td>
                </tr>
                {if $IN_SERVERS_PAGE}
                    <tr>
                        <td colspan="8">
                            <table id="playerlist_{$server.sid}" class="layout_table" name="playerlist_{$server.sid}"></table>
                        </td>
                    </tr>
                {/if}
            {/foreach}
        </tbody>
    </table>
</div>


<div>

    <table cellspacing="0" cellpadding="0" align="center" class="sortable listtable">
        <thead>
            <tr>
                <td width="2%" height="16" class="listtable_top">MOD</td>
                <td width="2%" height="16" class="listtable_top">OS</td>
                <td width="2%" height="16" class="listtable_top">VAC</td>
                <td height="16" class="listtable_top" align="center"><b>Hostname</b></td>
                <td width="10%" height="16" class="listtable_top"><b>Players</b></td>
                <td width="10%" height="16" class="listtable_top"><b>Map</b></td>
            </tr>
        </thead>
        <tbody>
            {foreach from=$server_list item=server}
                <tr id="opener_{$server.sid}" class="opener tbl_out" style="cursor:pointer;" {if !$IN_SERVERS_PAGE} onclick="{$server.evOnClick}" {/if}>
                    <td height="16" align="center" class="listtable_1"><img height="16px" width="16px" src="images/games/{$server.icon}" border="0" /></td>
                    <td height="16" align="center" class="listtable_1" id="os_{$server.sid}"></td>
                    <td height="16" align="center" class="listtable_1" id="vac_{$server.sid}"></td>
                    <td height="16" class="listtable_1" id="host_{$server.sid}"><i>Querying Server Data...</i></td>
                    <td height="16" class="listtable_1" id="players_{$server.sid}">N/A</td>
                    <td height="16" class="listtable_1" id="map_{$server.sid}">N/A</td>
                </tr>
                <tr>
                    <td colspan="7" align="center">
    
                        {if $IN_SERVERS_PAGE}
                            <div class="opener">
                                <div id="serverwindow_{$server.sid}">
                                    <div id="sinfo_{$server.sid}">
                                        <table width="100%" border="0" class="listtable">
                                            <tr>
                                                <td class="listtable_1" valign="top">
                                                    <table width="100%" border="0" class="listtable" id="playerlist_{$server.sid}" name="playerlist_{$server.sid}">
                                                    </table>
                                                </td>
                                                <td width="355px" class="listtable_2 opener" valign="top" style="padding-right: 0px; padding-left: 13px; padding-top: 12px;">
                                                    <img id="mapimg_{$server.sid}" style="border-radius: 6px; padding-left: 1px;" width='340' src='images/maps/nomap.jpg'>
                                                    <br />
                                                    <br />
                                                    <div align='center'>
                                                        <p style="font-size: 13px;">{$server.ip}:{$server.port}</p>
                                                        <input type='submit' onclick="document.location = 'steam://connect/{$server.ip}:{$server.port}'" name='button' class='btn game' style='margin:0px;' id='button' value='Join game' />
                                                        <input type='button' onclick="ShowBox('Reloading..','<b>Refreshing the Serverdata...</b><br><i>Please Wait!</i>', 'blue', '', false);document.getElementById('dialog-control').setStyle('display', 'none');xajax_RefreshServer({$server.sid});" name='button' class='btn refresh' style='margin:0;' id='button' value='Refresh' />
                                                    </div>
                                                    <br />
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                    <div id="noplayer_{$server.sid}" name="noplayer_{$server.sid}" style="display:none;"><br />
                                        <h2 style="color: #333;">No players in the server</h2><br />
                                        <div align='center'>
                                            <p style="font-size: 13px;">{$server.ip}:{$server.port}</p>
                                            <input type='submit' onclick="document.location = 'steam://connect/{$server.ip}:{$server.port}'" name='button' class='btn game' style='margin:0;' id='button' value='Join game' />
                                            <input type='button' onclick="ShowBox('Reloading..','<b>Refreshing the Serverdata...</b><br><i>Please Wait!</i>', 'blue', '', false);document.getElementById('dialog-control').setStyle('display', 'none');xajax_RefreshServer({$server.sid});" name='button' class='btn refresh' style='margin:0;' id='button' value='Refresh' /><br /><br />
                                        </div>
                                    </div>
                                </div>
                            </div>
                        {/if}
    
                    </td>
                </tr>
            {/foreach}
        </tbody>
    </table>
</div>


{if $IN_SERVERS_PAGE}
    <script type="text/javascript">
        InitAccordion('tr.opener', 'div.opener', 'mainwrapper');
    </script>
{/if}