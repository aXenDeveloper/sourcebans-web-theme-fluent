<div class="flex flex-wrap:wrap">
    <div class="admin_tab layout_box padding">
        <ul id="admin-page-menu">
            {foreach from=$tabs item=tab}
                <li>
                    <button onclick="openTab(this, '{$tab.name}');">{$tab.name}</button>
                </li>
            {/foreach}
            <li>
                <a href="javascript:history.go(-1);">Back</a>
            </li>
        </ul>
    </div>