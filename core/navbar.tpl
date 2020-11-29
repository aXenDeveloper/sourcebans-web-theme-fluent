<main>
    <nav class="responsive_show:desktop">
        <div class="nav_user layout_padding:half">
            <script type="text/javascript" src="themes/{$theme}/scripts/jscolor.js"></script>
            <ul class="nav_user_action layout_padding:half">
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
            <script type="text/javascript" src="themes/{$theme}/scripts/userActions.js"></script>

            {if $login}
                <!-- Logout -->
                <a class="layout_button layout_button:important" href='index.php?p=logout'><i class="fas fa-sign-out-alt"></i> Wyloguj</a>
    
                <div class="layout_padding:half nav_user_hello">
                    <!-- Welcome -->
                    Witaj, <a href='index.php?p=account'><i class="fas fa-user"></i> {$username}</a>
                </div>
            {else}
                <!-- Login -->
                <a class="layout_button layout_button:success" href='index.php?p=login'>Posiadasz konto? Zaloguj się</a>
            {/if}
        </div>

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
    <div class="layout_body layout_container">