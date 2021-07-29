{if $dashboard_text}
  <div class="layout_box padding margin-bottom">
    {$dashboard_text}
  </div>
{/if}

<div class="margin-bottom">
  {include file='page_servers.tpl'}
</div>

<div class="layout_box margin-bottom">
  <div class="layout_box_title flex flex-jc:space-between flex-ai:center">
    <h2>Latest Added Bans</h2>
    <span>Total bans: {$total_bans}</span>
  </div>

  <div class="padding">
    <div class="table table_box">
      <table>
        <thead>
          <tr>
            <th>MOD</th>
            <th class="text:left">Name</th>
            <th class="text:left">Date/Time</th>
            <th>Length</th>
          </tr>
        </thead>
        <tbody>
          {foreach from=$players_banned item=player}
            <tr class="collapse" onclick="{$player.link_url}">
              <td class="text:center">
                <img src="images/games/{$player.icon}" alt="{$player.icon}" title="MOD" />
              </td>
              <td>
                {if empty($player.short_name)}
                  <span class="text:italic">No nickname present</span>
                {else}
                  <span>{$player.short_name|escape:'html'}</span>
                {/if}
              </td>
              <td>
                {$player.created}
              </td>
              <td
                class="listtable_1{if $player.unbanned}_unbanned{elseif $player.perm}_permanent{elseif $player.temp}_banned{/if}">
                {$player.length}{if $player.unbanned} ({$player.ub_reason}){/if}
              </td>
            </tr>
          {/foreach}
        </tbody>
      </table>
    </div>
  </div>
</div>

<div class="flex flex-ai:start flex-jc:space-bwtween m:flex-fd:column">
  <div class="layout_box flex:11 margin-right margin-bottom">
    <div class="layout_box_title flex flex-jc:space-between flex-ai:center">
      <h2>Latest Players Blocked</h2>
      <span>Total Stopped: {$total_blocked}</span>
    </div>

    <div class="padding">
      <div class="table table_box">
        <table>
          <thead>
            <tr>
              <th>Type</th>
              <th class="text:left">Name</th>
              <th class="text:left">Date/Time</th>
              <th>Length</th>
            </tr>
          </thead>
          <tbody>
            {foreach from=$players_commed item=player}
              <tr class="collapse" onclick="{$player.link_url}">
                <td class="text:center">
                  <i class="{$player.type}"></i>
                </td>
                <td>
                  {if empty($player.short_name)}
                    <span class="text:italic">No nickname present</span>
                  {else}
                    <span>{$player.short_name|escape:'html'}</span>
                  {/if}
                </td>
                <td>
                  {$player.created}
                </td>
                <td
                  class="listtable_1{if $player.unbanned}_unbanned{elseif $player.perm}_permanent{elseif $player.temp}_banned{/if}">
                  {$player.length}{if $player.unbanned} ({$player.ub_reason}){/if}
                </td>
              </tr>
            {/foreach}
          </tbody>
        </table>
      </div>
    </div>
  </div>

  <div class="layout_box flex:11 margin-bottom">
    <div class="layout_box_title flex flex-jc:space-between flex-ai:center">
      <h2>Latest Players Blocked</h2>
      <span>Total Stopped: {$total_blocked}</span>
    </div>

    <div class="padding">
      <div class="table table_box">
        <table>
          <thead>
            <tr>
              <th>Type</th>
              <th class="text:left">Name</th>
              <th class="text:left">Date/Time</th>
              <th>Length</th>
            </tr>
          </thead>
          <tbody>
            {foreach from=$players_blocked item=player}
              <tr class="collapse" {if $dashboard_lognopopup} onclick="{$player.link_url}" 
              {else}onclick="{$player.popup}"
                {/if}>
                <td class="text:center">
                  <i class="fas fa-ban fa-lg"></i>
                </td>
                <td>
                  <span>{$player.short_name|escape:'html'}</span>
                </td>
                <td>
                  {$player.date}
                </td>
                <td
                  class="listtable_1{if $player.unbanned}_unbanned{elseif $player.perm}_permanent{elseif $player.temp}_banned{/if}">
                  {$player.length}{if $player.unbanned} ({$player.ub_reason}){/if}
                </td>
              </tr>
            {/foreach}
          </tbody>
        </table>
      </div>
    </div>
  </div>
</div>