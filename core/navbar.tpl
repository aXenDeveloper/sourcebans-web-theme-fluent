<main>
    <nav class="responsive_show:desktop layout_box">
        <div id="tabs">
            <ul>
                {foreach from=$navbar item=nav}
                    <li class="{$nav.state}">
                        <a href="index.php?p={$nav.endpoint}" class="tip" title="{$nav.title}::{$nav.description}" target="_self">{$nav.title}</a>
                    </li>
                {/foreach}
            </ul>
            <div id="nav">
                {if $isAdmin}
                    {foreach from=$adminbar item=admin}
                        <a class="nav_link {$admin.state}" href="index.php?p=admin&c={$admin.endpoint}">{$admin.title}</a>
                    {/foreach}
                {/if}
            </div>
            {if $login}
                <div>
                    <ul>
                        <li>
                            <a style="background-color: #B8383B;" href='index.php?p=logout'>Logout</a>
                        </li>
                    </ul>
                </div>
                <div class="user">Welcome, <a href='index.php?p=account'>{$username}</a></div>
            {else}
                <div>
                    <ul>
                        <li>
                            <a style="background-color: #70B04A;" href='index.php?p=login'>Login</a>
                        </li>
                    </ul>
                </div>
            {/if}
        </div>
    </nav>
    <div id="layout_body" class="layout_container">
        <div id="innerwrapper">