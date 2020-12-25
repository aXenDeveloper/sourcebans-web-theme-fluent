{if NOT $permission_protests}
    <section class="error padding">
        <i class="fas fa-exclamation-circle"></i>
        <div class="error_title">Oops, there's a problem (╯°□°）╯︵ ┻━┻</div>

        <div class="error_content">
            Access Denied!
        </div>

        <div class="error_code">
            Error code: <span class="text:bold">403 Forbidden</span>
        </div>
    </section>
{else}
    <div class="admin_tab_content_title">
        <h2>Ban Protests (<span id="protcount">{$protest_count}</span>)</h2>
    </div>

    <div class="padding">
        <div class="margin-bottom">
            Click a player's nickname to view information about their ban.
        </div>

        <div class="pagination">
            <span>{$protest_nav}</span>
        </div>

        <div class="table table_box">
            <table>
                <thead>
                    <tr>
                        <th class="text:left">Nickname</th>
                        <th class="text:left">Steam ID</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    {foreach from="$protest_list" item="protest"}
                        <tr class="collapse">
                            <td>
                                {$protest.name}
                            </td>
                            <td>
                                {if $protest.authid!=""}
                                    {$protest.authid}
                                {else}
                                    {$protest.ip}
                                {/if}
                            </td>
                            <td class="flex flex-jc:center flex-ai:center">
                                {if $permission_editban}
                                    <button class="button button-light margin-right:half"
                                        onclick="RemoveProtest('{$protest.pid}', '{if $protest.authid!=""}{$protest.authid}{else}{$protest.ip}{/if}', '1');">
                                        Archive
                                    </button>
                                {/if}

                                <a href="index.php?p=admin&c=bans&o=email&type=p&id={$protest.pid}"
                                    class="button button-primary">
                                    Contact
                                </a>
                            </td>
                        </tr>

                        <tr class="table_hide">
                            <td colspan="3">
                                <div class="collapse_content">
                                    <div class="padding flex flex-jc:start">
                                        <ul class="ban_action">
                                            <li class="button button-success">
                                                {$protest.protaddcomment}
                                            </li>
                                        </ul>

                                        <ul class="ban_list_detal">
                                            <li>
                                                <span>Player</span>
                                                <span>
                                                    <a href="./index.php?p=banlist&advSearch={$protest.authid}&advType=steamid"
                                                        title="Show ban">
                                                        {$protest.name}
                                                    </a>
                                                </span>
                                            </li>

                                            <li>
                                                <span>Steam ID</span>
                                                {if $protest.authid == ""}
                                                    <span class="text:italic">No steamid present</span>
                                                {else}
                                                    <span>{$protest.authid}</span>
                                                {/if}
                                            </li>

                                            <li>
                                                <span>IP address</span>
                                                {if $protest.ip == 'none' || $protest.ip == ''}
                                                    <span class="text:italic">No IP address present</span>
                                                {else}
                                                    <span>{$protest.ip}</span>
                                                {/if}
                                            </li>

                                            <li>
                                                <span>Invoked on</span>
                                                <span>{$protest.date}</span>
                                            </li>

                                            <li>
                                                <span>End Date</span>
                                                {if $protest.ends == 'never'}
                                                    <span class="text:italic">Not applicable.</span>
                                                {else}
                                                    <span>{$protest.ends}</span>
                                                {/if}
                                            </li>

                                            <li>
                                                <span>Reason</span>
                                                <span>{$protest.ban_reason}</span>
                                            </li>

                                            <li>
                                                <span>Banned by Admin</span>
                                                <span>{$protest.admin}</span>
                                            </li>

                                            <li>
                                                <span>Banned from</span>
                                                <span>{$protest.server}</span>
                                            </li>

                                            <li>
                                                <span>Protester IP</span>
                                                <span>{$protest.pip}</span>
                                            </li>

                                            <li>
                                                <span>Protested on</span>
                                                <span>{$protest.datesubmitted}</span>
                                            </li>
                                        </ul>
                                    </div>

                                    <div class="ban_list_comments margin-bottom">
                                        <div class="layout_box_title">
                                            <h2>Protest message</h2>
                                        </div>

                                        <div class="layout_box-child padding margin">
                                            <div class="ban_list_comments_header">
                                                <span class="text:bold">{$protest.name}</span>
                                            </div>

                                            <div class="margin-top flex flex-fd:column">
                                                {$protest.reason}
                                            </div>
                                        </div>
                                    </div>

                                    <div class="ban_list_comments">
                                        <div class="layout_box_title">
                                            <h2>Comments</h2>
                                        </div>

                                        {if $protest.commentdata != "None"}
                                            <ul>
                                                {foreach from=$protest.commentdata item=commenta}
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
                                                                        <i class="fas fa-pencil-alt"></i> Last edit
                                                                        {$commenta.edittime} by {$commenta.editname}
                                                                    </span>
                                                                {/if}
                                                            </div>
                                                        </div>
                                                    </li>
                                                {/foreach}
                                            </ul>
                                        {else}
                                            <div class="padding">
                                                {$protest.commentdata}
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
        <script>
            document.querySelectorAll('.button').forEach(e => e.addEventListener('click', el => el.stopPropagation()));
        </script>
    </div>
{/if}