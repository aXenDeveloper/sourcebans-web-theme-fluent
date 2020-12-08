<main>
    <div class="layout_topBar">
        <div class="layout_container">
            <ul class="layout_topBar_action layout_padding:half">
                <li>
                    <button id="user_action_change_dark"><i class="fas fa-moon"></i></button>
                </li>
                <li class="jscolor_li">
                    <button data-jscolor="{mode:'HSV', onInput:'setColorThemeCookie(this)'}"></button>
                </li>
                <li class="jscolor_li">
                    <button id="jscolor_reset" style="display: none;"><i class="fa fa-refresh"></i></button>
                </li>
            </ul>

            <ul class="layout_topBar_userBar responsive_show:desktop">
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

            <button id="button_mobile_open" class="nav_mobile responsive_hide:desktop">test</button>
        </div>
    </div>

    <div id="layout_mobile" class="mobile">
        <button id="button_mobile_close" class="mobile_close">Close</button>
        <nav class="mobile_nav">
            <ul>
                {foreach from=$navbar item=nav}
                    <li class="{$nav.state}">
                        <a href="index.php?p={$nav.endpoint}" class="tip" title="{$nav.title}::{$nav.description}" target="_self">{$nav.title}</a>
                    </li>
                {/foreach}
            </ul>
        </nav>
    </div>

    <nav id="navBar" class="nav responsive_show:desktop">
        <div class="nav_tab">
            <ul>
                {foreach from=$navbar item=nav}
                    <li class="{$nav.state}">
                        <a href="index.php?p={$nav.endpoint}" class="tip" title="{$nav.title}::{$nav.description}" target="_self">{$nav.title}</a>
                    </li>
                {/foreach}
            </ul>
            <ul>
                {if $isAdmin}
                    {foreach from=$adminbar item=admin}
                        <li {if $admin.state}class="{$admin.state}" {/if}>
                            <a class="nav_link {$admin.state}" href="index.php?p=admin&c={$admin.endpoint}">{$admin.title}</a>
                        </li>
                    {/foreach}
                {/if}
            </ul>
        </div>
    </nav>
    <div id="mainwrapper" class="layout_body layout_container">