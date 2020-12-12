<div class="layout_box">
    <div class="table padding">
        <div class="flex flex-jc:space-between flex-ai:center margin-bottom:half">
            <span>
                <a href="index.php?p=commslist&hideinactive={if $hidetext == 'Hide'}true{else}false{/if}{$searchlink|htmlspecialchars}" title="{$hidetext} inactive">{$hidetext} inactive</a> | <i>Total Blocks: {$total_bans}</i>
            </span>
            <span>
                {$ban_nav}
            </span>
        </div>

        <div class="table_box">
            <table class="table_box">
                <thead>
                    <tr>
                        <th>MOD/Type</th>
                        <th class="text:left">Player</th>
                        <th class="text:left">Date</th>
                        {if !$hideadminname}
                            <th class="text:left">Admin</th>
                        {/if}
                        <th>Length</th>
                    </tr>
                </thead>
                <tbody>
                    {foreach from=$ban_list item=ban name=banlist}
                        <tr class="collapse">
                            <td class="text:center">{$ban.mod_icon}</td>
                            <td>
                                {if empty($ban.player)}
                                    <span class="text:italic">No nickname present</span>
                                {else}
                                    <span>
                                        {$ban.player|escape:'html'|stripslashes}
                                    </span>
                                {/if}
                            </td>
                            <td>{$ban.ban_date}</td>
    
                            {if !$hideadminname}
                                <td>
                                    {if !empty($ban.admin)}
                                        <span>
                                            {$ban.admin|escape:'html'}
                                        </span>
                                    {else}
                                        <span class="text:italic">Admin deleted</span>
                                    {/if}
                                </td>
                            {/if}
    
                            <td class="{$ban.class}">{$ban.banlength}</td>
                        </tr>
    
                        <tr class="table_hide">
                            <td colspan="8">
                                <div class="collapse_content">
                                    <div class="padding flex flex-jc:start">
                                        <ul class="ban_action">
                                            {if ($ban.unbanned == false && $ban.view_unban)}
                                                <li class="button button:success">{$ban.unban_link}</li>
                                            {/if}
                                            {if $ban.unbanned && $ban.reban_link != false}
                                                <li class="button button:important">{$ban.reban_link}</li>
                                            {/if}
                                            <li class="button button:success">{$ban.addcomment}</li>
                                            {if ($ban.view_edit && !$ban.unbanned)}
                                                <li class="button button:light">{$ban.edit_link}</li>
                                            {/if}
                                            {if $ban.view_delete}
                                                <li class="button button:light">{$ban.delete_link}</li>
                                            {/if}
                                        </ul>
    
                                        <ul class="ban_list_detal">
                                            <li>
                                                <span><i class="fas fa-user"></i> Player</span>
    
                                                {if empty($ban.player)}
                                                    <span class="text:italic">No nickname present</span>
                                                {else}
                                                    <span>{$ban.player|escape:'html'|stripslashes}</span>
                                                {/if}
                                            </li>
                                            <li>
                                                <span>Steam ID</span>
    
                                                {if empty($ban.steamid)}
                                                    <span class="text:italic">No Steam ID present</span>
                                                {else}
                                                    <span>{$ban.steamid}</span>
                                                {/if}
                                            </li>
                                            <li>
                                                <span>Steam3 ID</span>
    
                                                {if empty($ban.steamid)}
                                                    <span class="text:italic">No Steam3 ID present</span>
                                                {else}
                                                    <a href="http://steamcommunity.com/profiles/{$ban.steamid3}" target="_blank" rel="noopener">{$ban.steamid3}</a>
                                                {/if}
                                            </li>
                                            <li>
                                                <span>Steam Community</span>
    
                                                {if empty($ban.steamid)}
                                                    <span class="text:italic">No Steam Community ID present</span>
                                                {else}
                                                    <a href="http://steamcommunity.com/profiles/{$ban.communityid}" target="_blank" rel="noopener">{$ban.communityid}</a>
                                                {/if}
                                            </li>
                                            <li>
                                                <span>Invoked on</span>
                                                <span>{$ban.ban_date}</span>
                                            </li>
                                            <li>
                                                <span>Block length</span>
                                                <span>{$ban.banlength}</span>
                                            </li>
                                            {if $ban.unbanned}
                                                <li>
                                                    <span>Unblock reason</span>
        
                                                    {if empty($ban.removedby)}
                                                        <span class="text:italic">No reason present</span>
                                                    {else}
                                                        <span>{$ban.ureason}</span>
                                                    {/if}
                                                </li>
                                                <li>
                                                    <span>Unblocked by Admin</span>
        
                                                    {if empty($ban.removedby)}
                                                        <span class="text:italic">Admin deleted</span>
                                                    {else}
                                                        <span>{$ban.removedby|escape:'html'}</span>
                                                    {/if}
                                                </li>
                                            {/if}
                                            <li>
                                                <span>Expires on</span>
    
                                                {if $ban.expires == "never"}
                                                    <span class="text:italic">Not applicable</span>
                                                {else}
                                                    <span>{$ban.expires}</span>
                                                {/if}
                                            </li>
                                            <li>
                                                <span>Reason</span>
                                                <span>{$ban.reason|escape:'html'}</span>
                                            </li>
                                            {if !$hideadminname}
                                                <li>
                                                    <span>Blocked by Admin</span>
        
                                                    {if empty($ban.admin)}
                                                        <span class="text:italic">Admin deleted</span>
                                                    {else}
                                                        <span>{$ban.admin|escape:'html'}</span>
                                                    {/if}
                                                </li>
                                            {/if}
                                            <li>
                                                <span>Total Blocks</span>
                                                <span>{$ban.prevoff_link}</span>
                                            </li>
                                        </ul>
    
                                        {if $view_comments}
                                            <div class="ban_list_comments">
                                                <div class="layout_box_title">
                                                    <h2>Comments</h2>
                                                </div>
                                                {if $ban.commentdata != "None"}
                                                    <ul>
                                                        {foreach from=$ban.commentdata item=commenta}
                                                            <li>
                                                                <div class="layout_box-child padding">
                                                                    <div class="ban_list_comments_header">
                                                                        {if !empty($commenta.comname)}
                                                                            <span class="text:bold">{$commenta.comname|escape:'html'}</span>
                                                                        {else}
                                                                            <span class="text:italic">Admin deleted</span>
                                                                        {/if}
                                                                        <span>{$commenta.added}</span>
                                                                        {if $commenta.editcomlink != ""}
                                                                            {$commenta.editcomlink} {$commenta.delcomlink}
                                                                        {/if}
                                                                    </div>
                
                                                                    <div class="margin-top flex flex-fd:column">
                                                                        {$commenta.commenttxt}
                
                                                                        {if !empty($commenta.edittime)}
                                                                            <span class="margin-top:half text:italic">
                                                                                <i class="fas fa-pencil-alt"></i> Last edit {$commenta.edittime} by {$commenta.editname}
                                                                            </span>
                                                                        {/if}
                                                                    </div>
                                                                </div>
                                                            </li>
                                                        {/foreach}
                                                    </ul>
                                                {else}
                                                    <div class="padding">
                                                        {$ban.commentdata}
                                                    </div>
                                                {/if}
                                            </div>
                                        {/if}
                                    </div>
                                </div>
                            </td>
                        </tr>
                    {/foreach}
                </tbody>
            </table>
        </div>
    </div>
</div>
<script type="text/javascript" src="themes/{$theme}/scripts/collapse.js"></script>


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
                <td align=\"right\"><b>{$com.added}</b>
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
    <h3 align="left">Communications Blocklist Overview - <i>Total Blocks: {$total_bans}</i></h3>
    <br />
    {php} require (TEMPLATES_PATH . "/admin.comms.search.php");{/php}
    <br />
    <div id="banlist-nav">
        {$ban_nav}
    </div>
    <a href="index.php?p=commslist&hideinactive={if $hidetext == 'Hide'}true{else}false{/if}{$searchlink|htmlspecialchars}" title="{$hidetext} inactive">{$hidetext} inactive</a>
    <div id="banlist">
        <table width="100%" cellspacing="0" cellpadding="0" align="center" class="listtable">
            <tr>
                <td width="8%" height="16" class="listtable_top" align="center"><b>MOD/Type</b></td>
                <td width="14%" height="16" class="listtable_top" align="center"><b>Date</b></td>
                <td height="16" class="listtable_top"><b>Player</b></td>
                {if !$hideadminname}
                    <td width="12%" height="16" class="listtable_top"><b>Admin</b></td>
                {/if}
                <td width="16%" height="16" class="listtable_top" align="center"><b>Length</b></td>
            </tr>
            {foreach from=$ban_list item=ban name=banlist}
                <tr class="opener tbl_out" onmouseout="this.className='tbl_out'" onmouseover="this.className='tbl_hover'" {if $ban.server_id !=0} onclick="xajax_ServerHostPlayers({$ban.server_id}, 'id', 'host_{$ban.ban_id}');" {/if}>
                    <td height="16" align="center" class="listtable_1">{$ban.mod_icon}</td>
                    <td height="16" align="center" class="listtable_1">{$ban.ban_date}</td>
                    <td height="16" class="listtable_1">
                        <div style="float:left;">
                            {if empty($ban.player)}
                                <i>
                                    <font color="#677882">no nickname present</font>
                                </i>
                            {else}
                                {$ban.player|escape:'html'|stripslashes}
                            {/if}
                        </div>
                        <div style="float:right;">
                            {if $view_comments && $ban.commentdata != "None" && $ban.commentdata|@count > 0}
                                {$ban.commentdata|@count}&thinsp;<i class="fas fa-clipboard-list fa-lg"></i>
                            {/if}
                            {if $view_bans}
                                {$ban.counts}
                            {/if}
                        </div>
                    </td>
                    {if !$hideadminname}
                        <td height="16" class="listtable_1">
                            {if !empty($ban.admin)}
                                {$ban.admin|escape:'html'}
                            {else}
                                <i>
                                    <font color="#677882">Admin deleted</font>
                                </i>
                            {/if}
                        </td>
                    {/if}
                    <td height="16" align="center" class="{$ban.class}">{$ban.banlength}</td>
                </tr>
                <!-- ###############[ Start Sliding Panel ]################## -->
                <tr>
                    <td colspan="7" align="center">
                        <div class="opener">
                            <table width="100%" cellspacing="0" cellpadding="0" class="listtable">
                                <tr>
                                    {if $view_bans}
                                        <td height="16" align="left" class="listtable_top" colspan="3">
                                        {else}
                                        <td height="16" align="left" class="listtable_top" colspan="2">
                                        {/if}
                                        <b>Block Details</b>
                                    </td>
                                </tr>
                                <tr align="left">
                                    <td width="20%" height="16" class="listtable_1">Player</td>
                                    <td height="16" class="listtable_1">
                                        {if empty($ban.player)}
                                            <i>
                                                <font color="#677882">no nickname present</font>
                                            </i>
                                        {else}
                                            {$ban.player|escape:'html'|stripslashes}
                                        {/if}
                                    </td>
                                    <!-- ###############[ Start Admin Controls ]################## -->
                                    {if $view_bans}
                                        <td width="30%" rowspan="{if $ban.unbanned}13{else}11{/if}" class="listtable_2 opener">
                                            <div class="ban-edit">
                                                <ul>
                                                    {if $ban.unbanned && $ban.reban_link != false}
                                                        <li>{$ban.reban_link}</li>
                                                    {/if}
                                                    <li>{$ban.addcomment}</li>
                                                    {if ($ban.view_edit && !$ban.unbanned)}
                                                        <li>{$ban.edit_link}</li>
                                                    {/if}
                                                    {if ($ban.unbanned == false && $ban.view_unban)}
                                                        <li>{$ban.unban_link}</li>
                                                    {/if}
                                                    {if $ban.view_delete}
                                                        <li>{$ban.delete_link}</li>
                                                    {/if}
                                                </ul>
                                            </div>
                                        </td>
                                    {/if}
                                    <!-- ###############[ End Admin Controls ]##################### -->
                                </tr>
                                <tr align="left">
                                    <td width="20%" height="16" class="listtable_1">Steam ID</td>
                                    <td height="16" class="listtable_1">
                                        {if empty($ban.steamid)}
                                            <i>
                                                <font color="#677882">No Steam ID present</font>
                                            </i>
                                        {else}
                                            {$ban.steamid}
                                        {/if}
                                    </td>
                                </tr>
                                <tr align="left">
                                    <td width="20%" height="16" class="listtable_1">Steam3 ID</td>
                                    <td height="16" class="listtable_1">
                                        {if empty($ban.steamid)}
                                            <i>
                                                <font color="#677882">No Steam3 ID present</font>
                                            </i>
                                        {else}
                                            <a href="http://steamcommunity.com/profiles/{$ban.steamid3}" target="_blank">{$ban.steamid3}</a>
                                        {/if}
                                    </td>
                                </tr>
                                <tr align="left">
                                    <td width="20%" height="16" class="listtable_1">Steam Community</td>
                                    <td height="16" class="listtable_1">
                                        {if empty($ban.steamid)}
                                            <i>
                                                <font color="#677882">No Steam Community ID present</font>
                                            </i>
                                        {else}
                                            <a href="http://steamcommunity.com/profiles/{$ban.communityid}" target="_blank">{$ban.communityid}</a>
                                        {/if}
                                    </td>
                                </tr>
                                <tr align="left">
                                    <td width="20%" height="16" class="listtable_1">Invoked on</td>
                                    <td height="16" class="listtable_1">{$ban.ban_date}</td>
                                </tr>
                                <tr align="left">
                                    <td width="20%" height="16" class="listtable_1">Block length</td>
                                    <td height="16" class="listtable_1">{$ban.banlength}</td>
                                </tr>
                                {if $ban.unbanned}
                                    <tr align="left">
                                        <td width="20%" height="16" class="listtable_1">Unblock reason</td>
                                        <td height="16" class="listtable_1">
                                            {if $ban.ureason == ""}
                                                <i>
                                                    <font color="#677882">no reason present</font>
                                                </i>
                                            {else}
                                                {$ban.ureason}
                                            {/if}
                                        </td>
                                    </tr>
                                    <tr align="left">
                                        <td width="20%" height="16" class="listtable_1">Unblocked by Admin</td>
                                        <td height="16" class="listtable_1">
                                            {if !empty($ban.removedby)}
                                                {$ban.removedby|escape:'html'}
                                            {else}
                                                <i>
                                                    <font color="#677882">Admin deleted.</font>
                                                </i>
                                            {/if}
                                        </td>
                                    </tr>
                                {/if}
                                <tr align="left">
                                    <td width="20%" height="16" class="listtable_1">Expires on</td>
                                    <td height="16" class="listtable_1">
                                        {if $ban.expires == "never"}
                                            <i>
                                                <font color="#677882">Not applicable.</font>
                                            </i>
                                        {else}
                                            {$ban.expires}
                                        {/if}
                                    </td>
                                </tr>
                                <tr align="left">
                                    <td width="20%" height="16" class="listtable_1">Reason</td>
                                    <td height="16" class="listtable_1">{$ban.reason|escape:'html'}</td>
                                </tr>
                                {if !$hideadminname}
                                    <tr align="left">
                                        <td width="20%" height="16" class="listtable_1">Blocked by Admin</td>
                                        <td height="16" class="listtable_1">
                                            {if !empty($ban.admin)}
                                                {$ban.admin|escape:'html'}
                                            {else}
                                                <i>
                                                    <font color="#677882">Admin deleted.</font>
                                                </i>
                                            {/if}
                                        </td>
                                    </tr>
                                {/if}
                                <tr align="left">
                                    <td width="20%" height="16" class="listtable_1">Blocked from</td>
                                    <td height="16" class="listtable_1" {if $ban.server_id !=0}id="host_{$ban.ban_id}" {/if}>
                                        {if $ban.server_id == 0}
                                            Web Ban
                                        {else}
                                            Please Wait...
                                        {/if}
                                    </td>
                                </tr>
                                <tr align="left">
                                    <td width="20%" height="16" class="listtable_1">Total Blocks</td>
                                    <td height="16" class="listtable_1">{$ban.prevoff_link}</td>
                                </tr>
                                {if $view_comments}
                                    <tr align="left">
                                        <td width="20%" height="16" class="listtable_1">Comments</td>
                                        <td height="60" class="listtable_1" colspan="2">
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
                                        </td>
                                    </tr>
                                {/if}
                            </table>
                        </div>
                    </td>
                </tr>
                <!-- ###############[ End Sliding Panel ]################## -->
            {/foreach}
        </table>
        <div align="right" style="margin-top: 3px; font-size:7pt">SourceComms plugin &#038; integration to SourceBans made by <a href="https://github.com/ppalex7" target="_blank">Alex</a></div>
    </div>
    {literal}
        <script type="text/javascript">
            window.addEvent('domready', function() {
                InitAccordion('tr.opener', 'div.opener', 'mainwrapper');
            {/literal}
            {if $view_bans}
                $('tickswitch').value = 0;
            {/if}
            {literal}
            });
        </script>
    {/literal}
{/if}