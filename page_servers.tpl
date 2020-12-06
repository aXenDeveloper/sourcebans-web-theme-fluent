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
                <th>Connect</th>
            </tr>
        </thead>
        <tbody>
            {foreach from=$server_list item=server}
                <tr id="server_{$server.sid}" {if $IN_SERVERS_PAGE}class="collapse" {/if}>
                    <td>
                        <img src="images/games/{$server.icon}" alt="{$server.icon}" />
                    </td>
                    <td id="os_{$server.sid}"></td>
                    <td id="vac_{$server.sid}"></td>
                    <td class="layout_text:left" id="host_{$server.sid}"><i>Querying Server Data...</i></td>
                    <td>{$server.ip}:{$server.port}</td>
                    <td id="players_{$server.sid}">N/A</td>
                    <td id="map_{$server.sid}">N/A</td>
                    <td>
                        <a href="steam://connect/{$server.ip}:{$server.port}">Connect</a>
                    </td>
                </tr>
                {if $IN_SERVERS_PAGE}
                    <tr id="server_{$server.sid}:desc">
                        <td colspan="8">
                            <div class="collapse_content" id="sinfo_{$server.sid}">
                                <table id="playerlist_{$server.sid}" class="layout_table" name="playerlist_{$server.sid}"></table>
                            </div>
                        </td>
                    </tr>
                {/if}
            {/foreach}
        </tbody>
    </table>
</div>

{if $IN_SERVERS_PAGE}
    <script type="text/javascript" src="themes/{$theme}/scripts/collapse.js"></script>
{/if}