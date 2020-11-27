<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>{$title}</title>
    <link rel="Shortcut Icon" href="themes/{$theme}/images/favicon.ico" />
    <script type="text/javascript" src="./scripts/fontawesome-all.min.js"></script>
    <script type="text/javascript" src="./scripts/sourcebans.js"></script>
    <link href="themes/{$theme}/css/main.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="./scripts/mootools.js"></script>
    <script type="text/javascript" src="./scripts/contextMenoo.js"></script>
    {$xajax}
</head>

<body>
    <header>
        <div class="layout_container responsive_hide:mobile">
            <a href="index.php" id="logo">
                <img src="images/{$logo}" alt="SourceBans Logo" />
            </a>
            <div class="header_action responsive_show:desktop">
                test
            </div>
        </div>
        <div id="search">
            {literal}
                <form method="get" action="index.php">
                    <input type="hidden" name="p" value="banlist" />
                    <input class="searchbox" alt="Search Bans" name="searchText" type="text" onfocus="this.value='';" onblur="if (this.value=='') {this.value=' Search Bans...';}" value=" Search Bans..." />
                    <input type="submit" name="Submit" value="Search" style="cursor:pointer;" class="button" />
                </form>
                <form method="get" action="index.php">
                    <input type="hidden" name="p" value="commslist" />
                    <input class="searchbox" alt="Search Comms" name="searchText" type="text" onfocus="this.value='';" onblur="if (this.value=='') {this.value=' Search Comms...';}" value=" Search Comms... " />
                    <input type="submit" name="Submit" value="Search" style="cursor:pointer;" class="button" />
                </form>
            {/literal}
        </div>
    </header>