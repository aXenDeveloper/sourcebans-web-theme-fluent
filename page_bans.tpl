{if $comment}
    <h3>{$commenttype} Comment</h3>
    <table width="90%" align="center" border="0" style="border-collapse:collapse;" id="group.details" cellpadding="3">
        <tr>
            <td valign="top">
                <div class="rowdesc">{help_icon title="Comment Text" message="Type the text you would like to say."}Comment</div>
            </td>
        </tr>
        <tr>
            <td>
                <div align="left">
                    <textarea rows="10" cols="60" class="submit-fields" style="width:500px;" id="commenttext" name="commenttext">{$commenttext}</textarea>
                </div>
                <div id="commenttext.msg" class="badentry"></div>
            </td>
        </tr>
        <tr>
            <td>
                <input type="hidden" name="bid" id="bid" value="{$comment}">
                <input type="hidden" name="ctype" id="ctype" value="{$ctype}">
                {if $cid != ""}
                    <input type="hidden" name="cid" id="cid" value="{$cid}">
                {else}
                    <input type="hidden" name="cid" id="cid" value="-1">
                {/if}
                <input type="hidden" name="page" id="page" value="{$page}">
                {sb_button text="$commenttype Comment" onclick="ProcessComment();" class="ok" id="acom" submit=false}&nbsp;
                {sb_button text="Back" onclick="history.go(-1)" class="cancel" id="aback"}
            </td>
        </tr>
        {foreach from="$othercomments" item="com"}
            <tr>
                <td colspan='3'>
                    <hr>
                </td>
            </tr>
            <tr>
                <td>
                    <b>{$com.comname}</b></td>
                <td align="right"><b>{$com.added}</b>
                </td>
            </tr>
            <tr>
                <td colspan='2'>
                    {$com.commenttxt}
                </td>
            </tr>
            {if $com.editname != ''}
                <tr>
                    <td colspan='3'>
                        <span style='font-size:6pt;color:grey;'>last edit {$com.edittime} by {$com.editname}</span>
                    </td>
                </tr>
            {/if}
        {/foreach}
    </table>
{else}
    
    <div id="banlist-nav"><a href="index.php?p=banlist&hideinactive={if $hidetext == 'Hide'}true{else}false{/if}{$searchlink|htmlspecialchars}" title="{$hidetext} inactive">{$hidetext} inactive</a> | <i>Total Bans: {$total_bans}</i></div>
    
    <h3 align="left">Banlist Overview - <i>Total Bans: {$total_bans}</i></h3>
    <br />
    {php} require (TEMPLATES_PATH . "/admin.bans.search.php");{/php}
    
    <div class="layout_box">
        <div class="layout_table layout_padding">
            <div>
                {$ban_nav}
            </div>
            <div class="layout_table_box">
                <table>
                    <thead>
                        <tr>
                            {if $view_bans}
                                <th>
                                    <div class="ok" style="height:16px;width:16px;cursor:pointer;" title="Select All" name="tickswitch" id="tickswitch" onclick="TickSelectAll()"></div>
                                </th>
                            {/if}
                            <th>MOD/Country</th>
                            <th class="layout_text:left">Date</th>
                            <th class="layout_text:left">Player</th>
                            {if !$hideadminname}
                                <th class="layout_text:left">Admin</th>
                            {/if}
                            <th class="layout_text:left">Length</th>
                        </tr>
                    </thead>
                    <tbody>
                        {foreach from=$ban_list item=ban name=banlist}
                            <tr class="collapse">
                                {if $view_bans}
                                    <td>
                                        <input type="checkbox" name="chkb_{$smarty.foreach.banlist.index}" id="chkb_{$smarty.foreach.banlist.index}" value="{$ban.ban_id}">
                                    </td>
                                {/if}
                                <td class="layout_text:center">{$ban.mod_icon}</td>
                                <td>{$ban.ban_date}</td>
        
                                {if empty($ban.player)}
                                    <td class="layout_text:italic">No nickname present</td>
                                {else}
                                    <td>
                                        {if $ban.demo_available}
                                            <i class="fas fa-video fa-lg"></i>
                                        {/if}
                                        {$ban.player|escape:'html'|stripslashes}
                                    </td>
                                {/if}
        
                                {if !$hideadminname}
                                    {if !empty($ban.admin)}
                                        <td>{$ban.admin|escape:'html'}</td>
                                    {else}
                                        <td class="layout_text:italic">Admin deleted</td>
                                    {/if}
                                {/if}
        
                                <td class="{$ban.class}">{$ban.banlength}</td>
                            </tr>
                            <tr class="layout_table_hide">
                                <td colspan="8">
                                    <div class="collapse_content">
                                        <div class="layout_padding layout_flex layout_flex-jc:space-between">
                                            <ul class="ban_list_detal">
                                                <li>
                                                    <span><i class="fas fa-user"></i> Player</span>
        
                                                    {if empty($ban.player)}
                                                        <span class="layout_text:italic">No nickname present</span>
                                                    {else}
                                                        <span>{$ban.player|escape:'html'|stripslashes}</span>
                                                    {/if}
                                                </li>
                                                <li>
                                                    <span><i class="fab fa-steam-symbol"></i> Steam ID</span>
        
                                                    {if empty($ban.steamid)}
                                                        <span class="layout_text:italic">No Steam ID present</span>
                                                    {else}
                                                        <span>{$ban.steamid}</span>
                                                    {/if}
                                                </li>
                                                <li>
                                                    <span><i class="fab fa-steam-symbol"></i> Steam3 ID</span>
        
                                                    {if empty($ban.steamid)}
                                                        <span class="layout_text:italic">No Steam3 ID present</span>
                                                    {else}
                                                        <span>
                                                            <a href="http://steamcommunity.com/profiles/{$ban.steamid3}" target="_blank">{$ban.steamid3}</a>
                                                        </span>
                                                    {/if}
                                                </li>
                                                <li>
                                                    <span><i class="fab fa-steam-symbol"></i> Steam Community</span>
        
                                                    {if empty($ban.steamid)}
                                                        <span class="layout_text:italic">No Steam Community ID present</span>
                                                    {else}
                                                        <span>
                                                            <a href="http://steamcommunity.com/profiles/{$ban.communityid}" target="_blank">{$ban.communityid}</a>
                                                        </span>
                                                    {/if}
                                                </li>
                                                <li>
                                                    <span><i class="fas fa-network-wired"></i> IP address</span>
        
                                                    {if $ban.ip == "none"}
                                                        <span class="layout_text:italic">No IP address present</span>
                                                    {else}
                                                        <span>{$ban.ip}</span>
                                                    {/if}
                                                </li>
                                                <li>
                                                    <span><i class="fas fa-play"></i> Invoked on</span>
                                                    <span>{$ban.ban_date}</span>
                                                </li>
                                                <li>
                                                    <span><i class="fas fa-hourglass-half"></i> Ban length</span>
                                                    <span>{$ban.banlength}</span>
                                                </li>
        
                                                {if $ban.unbanned}
                                                    <li>
                                                        <span><i class="fas fa-stop"></i> Unban reason</span>
            
                                                        {if $ban.ureason == ""}
                                                            <span class="layout_text:italic">No reason present</span>
                                                        {else}
                                                            <span>{$ban.ureason}</span>
                                                        {/if}
                                                    </li>
                                                    <li>
                                                        <span><i class="fas fa-user-shield"></i> Unbanned by Admin</span>
            
                                                        {if !empty($ban.removedby)}
                                                            <span>{$ban.removedby|escape:'html'}</span>
                                                        {else}
                                                            <span class="layout_text:italic">Admin deleted</span>
                                                        {/if}
                                                    </li>
                                                {/if}
                                                <li>
                                                    <span><i class="fas fa-clock"></i> Expires on</span>
        
                                                    {if $ban.expires == "never"}
                                                        <span class="layout_text:italic">Not applicable</span>
                                                    {else}
                                                        <span>{$ban.expires}</span>
                                                    {/if}
                                                </li>
                                                <li>
                                                    <span><i class="fas fa-question"></i> Reason</span>
                                                    <span>{$ban.reason|escape:'html'}</span>
                                                </li>
                                                {if !$hideadminname}
                                                    <li>
                                                        <span><i class="fas fa-ban"></i> Banned by Admin</span>
            
                                                        {if !empty($ban.admin)}
                                                            <span>{$ban.admin|escape:'html'}</span>
                                                        {else}
                                                            <span class="layout_text:italic">Admin deleted</span>
                                                        {/if}
                                                    </li>
                                                {/if}
                                                <li>
                                                    <span>Total Bans</span>
                                                    <span>{$ban.prevoff_link}</span>
                                                </li>
                                                <li>
                                                    <span>Blocked ({$ban.blockcount})</span>
                                                    {if $ban.banlog == ""}
                                                        <span class="layout_text:italic">Never</span>
                                                    {else}
                                                        <span>{$ban.banlog}</span>
                                                    {/if}
                                                </li>
                                                {if $view_comments}
                                                    <li>
                                                        <span>Comments</span>
                                                        <div class="layout_flex">
            
                                                            {if $ban.commentdata != "None"}
                                                                <table width="100%" border="0">
                                                                    {foreach from=$ban.commentdata item=commenta}
                                                                        {if $commenta.morecom}
                                                                            <tr>
                                                                                <td colspan='3'>
                                                                                    <hr>
                                                                                </td>
                                                                            </tr>
                                                                        {/if}
                                                                        <tr>
                                                                            <td>
                                                                                {if !empty($commenta.comname)}
                                                                                    <b>{$commenta.comname|escape:'html'}</b>
                                                                                {else}
                                                                                    <i>
                                                                                        <font color="#677882">Admin deleted</font>
                                                                                    </i>
                                                                                {/if}
                                                                            </td>
                                                                            <td align="right">
                                                                                <b>{$commenta.added}</b>
                                                                            </td>
                                                                            {if $commenta.editcomlink != ""}
                                                                                <td align="right">
                                                                                    {$commenta.editcomlink} {$commenta.delcomlink}
                                                                                </td>
                                                                            {/if}
                                                                        </tr>
                                                                        <tr>
                                                                            <td colspan='3'>
                                                                                {$commenta.commenttxt}
                                                                            </td>
                                                                        </tr>
                                                                        {if !empty($commenta.edittime)}
                                                                            <tr>
                                                                                <td colspan='3'>
                                                                                    <span style="font-size:6pt;color:grey;">last edit {$commenta.edittime} by {if !empty($commenta.editname)}{$commenta.editname}
                                                                                        {else}<i>
                                                                                                <font color="#677882">Admin deleted</font>
                                                                                        </i>{/if}</span>
                                                                                </td>
                                                                            </tr>
                                                                        {/if}
                                                                    {/foreach}
                                                                </table>
                                                            {/if}
                                                            {if $ban.commentdata == "None"}
                                                                {$ban.commentdata}
                                                            {/if}
            
            
                                                        </div>
                                                    </li>
                                                {/if}
        
        
        
                                            </ul>
        
                                            <ul class="layout_list:reset">
                                                {if $view_bans}
                                                    {if $ban.unbanned && $ban.reban_link != false}
                                                        <li>{$ban.reban_link}</li>
                                                    {/if}
                                                    <li>{$ban.blockcomm_link}</li>
                                                    <li>{$ban.demo_link}</li>
                                                    <li>{$ban.addcomment}</li>
                                                    {if $ban.type == 0}
                                                        {if $groupban}
                                                            <li>{$ban.groups_link}</li>
                                                        {/if}
                                                        {if $friendsban}
                                                            <li>{$ban.friend_ban_link}</li>
                                                        {/if}
                                                    {/if}
                                                    {if ($ban.view_edit && !$ban.unbanned)}
                                                        <li>{$ban.edit_link}</li>
                                                    {/if}
                                                    {if ($ban.unbanned == false && $ban.view_unban)}
                                                        <li>{$ban.unban_link}</li>
                                                    {/if}
                                                    {if $ban.view_delete}
                                                        <li>{$ban.delete_link}</li>
                                                    {/if}
                                                {else}
                                                    <li>{$ban.demo_link}</li>
                                                {/if}
                                            </ul>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                        {/foreach}
                    </tbody>
                </table>
            </div>
        </div>
    
        {if $can_export }
            <a href="./exportbans.php?type=steam" title="Export Permanent SteamID Bans">Export Permanent SteamID Bans</a>&nbsp;&nbsp;|&nbsp;
            <a href="./exportbans.php?type=ip" title="Export Permanent IP Bans">Export Permanent IP Bans</a>
        {/if}
    
    
        {if $general_unban || $can_delete}
            &nbsp;&nbsp;L&nbsp;&nbsp;<a href="#" onclick="TickSelectAll();return false;" title="Select All" name="tickswitchlink" id="tickswitchlink">Select All</a>&nbsp;&nbsp;|&nbsp;
            <select name="bulk_action" id="bulk_action" onchange="BulkEdit(this,'{$admin_postkey}');">
                <option value="-1">Action</option>
                {if $general_unban}
                    <option value="U">Unban</option>
                {/if}
                {if $can_delete}
                    <option value="D">Delete</option>
                {/if}
            </select>
            <hr>
        {/if}
    </div>
    <script type="text/javascript" src="themes/{$theme}/scripts/collapse.js"></script>
{/if}