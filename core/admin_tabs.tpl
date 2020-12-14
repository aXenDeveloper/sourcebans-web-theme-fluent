<div class="flex flex-wrap:wrap">
    <div class="admin_tab layout_box padding">
        <button id="admin_tab_mobile" class="button button:light admin_tab_mobile responsive_hide:desktop">
            Navigation
        </button>

        <ul id="admin-page-menu" class="admin_tab_ul">
            {foreach from=$tabs item=tab}
                <li>
                    <button onclick="openTab(this, '{$tab.name}');">{$tab.name}</button>
                </li>
            {/foreach}
            <li>
                <a href="index.php?p=admin">Back</a>
            </li>
        </ul>
        <script type="text/javascript" src="themes/{$theme}/scripts/tab.js"></script>
    </div>