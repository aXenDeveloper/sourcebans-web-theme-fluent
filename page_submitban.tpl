<div class="flex flex-jc:center flex-ai:center">
    <div class="layout_box layout_box_medium">
        <div class="layout_box_title">
            <h2>Submit a Report</h2>
        </div>
        <div class="padding">
            <ul class="layout_box_medium_ul">
                <li>
                    In order to keep our servers running smoothly, offenders of our rules should be punished and we
                    can't always be on call to help.<br />
                    When submitting a player report, we ask you to fill out the report as detailed as possible to help
                    ban the offender as this will help us process your report quickly.
                </li>

                <li>
                    If you are unsure on how to record evidence within in-game, please click
                    <a href="javascript:void(0)"
                        onclick="ShowBox('How To Record Evidence', 'The best way to record evidence on someone breaking the rules would be to use Shadow Play or Plays.TV. Both pieces of software will record your game 24/7 with little to no impact on your game and you simply press a keybind to record the last X amount of minutes of gameplay which is perfect for catching rule breakers.<br /><br /> Alternatively, you can use the old method of using demos. While you are spectating the offending player, press the ` key on your keyboard to show the Developers Console. If this does not show, you will need to go into your Game Settings and enable this. Then type `record [demoname]` and hit enter, the file will then be in your mod folder of your game directory.', 'blue', '', true);">here</a>
                    for an explanation.
                </li>

                <li>
                    <form action="index.php?p=submit" method="post" enctype="multipart/form-data">
                        <input type="hidden" name="subban" value="1">

                        <ul class="layout_box_medium_ul">
                            <li>
                                <label for="Type">Ban Type</label>
                                <select id="Type" name="Type" class="input input-full margin-top:half"
                                    onChange="changeType(this[this.selectedIndex].value);">
                                    <option value="0">Steam ID</option>
                                    <option value="1">IP Address</option>
                                </select>
                            </li>
                            <li>
                                <label for="SteamID">Players Steam ID</label>
                                <input type="text" id="SteamID" name="SteamID" size="40" maxlength="64"
                                    value="{$STEAMID}" class="input input-full margin-top:half" />
                            </li>
                            <li>
                                <label for="BanIP">Players IP</label>
                                <input type="text" id="BanIP" name="BanIP" size="40" maxlength="64" value="{$ban_ip}"
                                    class="input input-full margin-top:half" />
                            </li>
                            <li>
                                <label for="PlayerName">Players Nickname <span class="mandatory">*</span></label>
                                <input type="text" id="PlayerName" size="40" maxlength="70" name="PlayerName"
                                    value="{$player_name}" class="input input-full margin-top:half" />
                            </li>
                            <li>
                                <label for="BanReason">Comments <span class="mandatory">*</span> (Please write down a
                                    descriptive comment. So NO comments like: "hacking")</label>
                                <textarea id="BanReason" name="BanReason"
                                    class="input input-full input_textarea margin-top:half">{$ban_reason}</textarea>
                            </li>
                            <li>
                                <label for="SubmitName">Your Name</label>
                                <input type="text" id="SubmitName" size="40" maxlength="70" name="SubmitName"
                                    value="{$subplayer_name}" class="input input-full margin-top:half" />
                            </li>
                            <li>
                                <label for="EmailAddr">Your Email <span class="mandatory">*</span></label>
                                <input type="text" id="SubmitName" size="40" maxlength="70" name="EmailAddr"
                                    value="{$player_email}" class="input input-full margin-top:half" />
                            </li>
                            <li>
                                <label for="server">Server <span class="mandatory">*</span></label>
                                <select id="server" name="server" class="input input-full margin-top:half">
                                    <option value="-1">-- Select Server --</option>
                                    {foreach from="$server_list" item="server}
                                        <option value="{$server.sid}" {if $server_selected==$server.sid}selected{/if}>
                                            {$server.hostname}</option>
                                    {/foreach}
                                    <option value="0">Other server / Not listed here</option>
                                </select>
                            </li>
                            <li>
                                <label for="demo_file">Upload demo</label>
                                <input name="demo_file" id="demo_file" type="file" size="25"
                                    class="input input-full margin-top:half" />
                                <span>Note: Only DEM, ZIP, RAR, 7Z, BZ2 or GZ allowed.</span>
                            </li>


                            <li>
                                <button type="submit" name="save" class="button button-primary"
                                    onmouseover="ButtonOver(&quot;save&quot;)" onmouseout="ButtonOver(&quot;save&quot;)"
                                    id="save" value="Submit">Submit</button>
                            </li>
                        </ul>
                    </form>
                </li>

                <li>
                    <h3>What happens if someone gets banned?</h3>
                    <p>If someone you reported gets banned, the SteamID or IP will be included onto the ban on the main
                        bans list and everytime they try to connect to any server they will be blocked from joining and
                        it will be logged into our database.</p>
                </li>
            </ul>
        </div>
    </div>
</div>