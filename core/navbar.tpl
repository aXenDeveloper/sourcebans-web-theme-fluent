<main class="layout_flex">
    <div class="layout_topBar">
        <div class="layout_container layout_flex layout_flex-jc:end layout_flex-ai:center">
            <ul class="layout_topBar_action layout_padding:half layout_flex">
                <li>
                    <button id="user_action_change_dark"><i class="fas fa-moon"></i></button>
                </li>
                <li class="jscolor_li">
                    <button data-jscolor="{mode:'HSV', onInput:'setColorThemeCookie(this)'}"></button>
                </li>
                <li id="jscolor_reset" class="jscolor_li" style="display: none;">
                    <button><i class="fa fa-refresh"></i></button>
                </li>
            </ul>

            <ul class="layout_topBar_userBar responsive_show:desktop layout_flex layout_flex-ai:center">
                {if $login}
                    <li>
                        Welcome, <a href='index.php?p=account'><i class="fas fa-user"></i> {$username}</a>
                    </li>
                    <li>
                        <a class="layout_button layout_button:important" href='index.php?p=logout'><i class="fas fa-sign-out-alt"></i> Logout</a>
                    </li>
                {else}
                    <li>
                        <a class="layout_button layout_button:success" href='index.php?p=login'>Existing user? Sign In</a>
                    </li>
                {/if}
            </ul>

            <button id="button_mobile_open" class="nav_mobile_open responsive_hide:desktop">
                <i class="fas fa-bars"></i>
            </button>
        </div>
    </div>

    <div id="layout_mobile" class="nav_mobile">
        <div class="nav_mobile_tab">
            <button id="button_mobile_close" class="nav_mobile_close">
                <i class="fas fa-times"></i>
            </button>

            <div class="nav_mobile_content">
                <div class="nav_mobile_tab_top layout_padding layout_flex">
                    {if $login}
                        <a class="layout_button layout_button:important layout_button:full" href='index.php?p=logout'><i class="fas fa-sign-out-alt"></i> Logout</a>
                    {else}
                        <a class="layout_button layout_button:success layout_button:full" href='index.php?p=login'>Existing user? Sign In</a>
                    {/if}
                </div>
                <nav class="nav_mobile_tab_nav">
                    <ul>
                        {foreach from=$navbar item=nav}
                            <li class="{$nav.state}">
                                <a href="index.php?p={$nav.endpoint}" class="tip" title="{$nav.title}::{$nav.description}" target="_self">
                                    <i class="fas fa-bars"></i> {$nav.title}
                                </a>
                            </li>
                        {/foreach}
                    </ul>
                </nav>
            </div>
        </div>
    </div>

    <nav id="navBar" class="nav responsive_show:desktop">
        <div class="nav_tab">
            <ul>
                {foreach from=$navbar item=nav}
                    <li class="{$nav.state}">
                        <a href="index.php?p={$nav.endpoint}" class="tip" title="{$nav.title}::{$nav.description}" target="_self">
                            <i class="fas fa-bars"></i> {$nav.title}
                        </a>
                    </li>
                {/foreach}
            </ul>
            <ul>
                {if $isAdmin}
                    {foreach from=$adminbar item=admin}
                        <li {if $admin.state}class="{$admin.state}" {/if}>
                            <a class="nav_link {$admin.state}" href="index.php?p=admin&c={$admin.endpoint}">
                                <i class="fas fa-bars"></i> {$admin.title}
                            </a>
                        </li>
                    {/foreach}
                {/if}
            </ul>
        </div>
    </nav>
    <div id="mainwrapper" class="layout_body layout_container layout_flex:11">