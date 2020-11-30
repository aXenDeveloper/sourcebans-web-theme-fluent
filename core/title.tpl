<div id="dialog-placement" style="vertical-align:middle;display:none;opacity:0;text-align:center;width:892px;margin:0 auto;position:fixed !important;position:absolute;overflow:hidden;top:10px;left:100px;">
    <table width="460px" id="dialog-holder" class="dialog-holder" border="0" cellspacing="0" cellpadding="0">
        <tbody width="460px">
            <tr>
                <td class="box-content">
                    <h2 align="left" id="dialog-title" class="ok"></h2>
                    <div class="dialog-content" align="left">
                        <div class="dialog-body">
                            <div class="clearfix">
                                <div style="float: left; margin-right: 15px;" id="dialog-icon" class="icon-info">&nbsp;</div>
                                <div style="width:360px;float: right; padding-bottom: 5px; font-size: 11px;" id="dialog-content-text"></div>
                            </div>
                        </div>
                        <div class="dialog-control" id="dialog-control">
                        </div>
                    </div>
                </td>
            </tr>
        </tbody>
    </table>
</div>

<div class="page_header">
    <h1>{$title}</h1>
</div>

<div class="breadcrumb">
    {foreach from=$breadcrumb item=crumb}
        <i class="fas fa-angle-right"></i> <a href="{$crumb.url}">{$crumb.title}</a>
    {/foreach}
</div>

<!-- <div id="content"> -->