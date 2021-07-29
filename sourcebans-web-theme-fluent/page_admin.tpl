<div class="admin_nav">
    <ul class="flex">
        {if $access_admins}
            <li>
                <a href="index.php?p=admin&amp;c=admins">
                    <i class="fas fa-user"></i>
                    <span>Admin</span>
                </a>
            </li>
        {/if}
        {if $access_servers}
            <li>
                <a href="index.php?p=admin&amp;c=servers">
                    <i class="fas fa-server"></i>
                    <span>Server</span>
                </a>
            </li>
        {/if}
        {if $access_bans}
            <li>
                <a href="index.php?p=admin&amp;c=bans">
                    <i class="fas fa-ban"></i>
                    <span>Bans</span>
                </a>
            </li>
        {/if}
        {if $access_bans}
            <li>
                <a href="index.php?p=admin&amp;c=comms">
                    <i class="fas fa-microphone-alt-slash"></i>
                    <span>Comms</span>
                </a>
            </li>
        {/if}
        {if $access_groups}
            <li>
                <a href="index.php?p=admin&amp;c=groups">
                    <i class="fas fa-users"></i>
                    <span>Group</span>
                </a>
            </li>
        {/if}
        {if $access_settings}
            <li>
                <a href="index.php?p=admin&amp;c=settings">
                    <i class="fas fa-tools"></i>
                    <span>Webpanel</span>
                </a>
            </li>
        {/if}
        {if $access_mods}
            <li>
                <a href="index.php?p=admin&amp;c=mods">
                    <i class="fas fa-cubes"></i>
                    <span>Manage Mods</span>
                </a>
            </li>
        {/if}
    </ul>
</div>

<div class="admin_dashboard margin-top">
    <div class="layout_box">
        <div class="layout_box_title">
            <h2>Version Information</h2>
        </div>
        <div class="padding">
            <ul class="list-reset">
                <li>Latest release: <span id='relver' class="text:bold">Please Wait...</span></li>
                {if $dev}
                    <li>Latest Git: <span id='svnrev' class="text:bold">Please Wait...</span></li>
                {/if}
                <li><span id='versionmsg'>Please Wait...</span></li>
            </ul>
        </div>
    </div>

    <div class="layout_box">
        <div class="layout_box_title">
            <h2>Admin Information</h2>
        </div>
        <div class="padding">
            <ul class="list-reset">
                <li>Total admins: <span class="text:bold">{$total_admins}</span></li>
            </ul>
        </div>
    </div>

    <div class="layout_box">
        <div class="layout_box_title">
            <h2>Ban Information</h2>
        </div>
        <div class="padding">
            <ul class="list-reset">
                <li>Total bans: <span class="text:bold">{$total_bans}</span></li>
                <li>Connections blocked: <span class="text:bold">{$total_blocks}</span></li>
                <li>Total demo size: <span class="text:bold">{$demosize}</span></li>
            </ul>
        </div>
    </div>

    <div class="layout_box">
        <div class="layout_box_title">
            <h2>Server Information</h2>
        </div>
        <div class="padding">
            <ul class="list-reset">
                <li>Total servers: <span class="text:bold">{$total_servers}</span></li>
            </ul>
        </div>
    </div>

    <div class="layout_box">
        <div class="layout_box_title">
            <h2>Protest Information</h2>
        </div>
        <div class="padding">
            <ul class="list-reset">
                <li>Pending Protests: <span class="text:bold">{$total_protests}</span></li>
                <li>Archived Protests: <span class="text:bold">{$archived_protests}</span></li>
            </ul>
        </div>
    </div>

    <div class="layout_box">
        <div class="layout_box_title">
            <h2>Submission Information</h2>
        </div>
        <div class="padding">
            <ul class="list-reset">
                <li>Pending Submissions: <span class="text:bold">{$total_submissions}</span></li>
                <li>Archived Submissions: <span class="text:bold">{$archived_submissions}</span></li>
            </ul>
        </div>
    </div>

    <script type="text/javascript">
        xajax_CheckVersion();
    </script>
</div>