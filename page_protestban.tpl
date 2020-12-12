<div class="flex flex-jc:center flex-ai:center">
    <div class="layout_box layout_box_medium">
        <div class="layout_box_title">
            <h2>Appeal a Ban</h2>
        </div>
        <div class="padding">
            <ul class="layout_box_medium_ul">
                <li>
                    In order to appeal a ban, you must make sure you are banned via clicking <a href="index.php?p=banlist" class="text:bold">here</a> to see if you are banned and for what reason.
                </li>
                <li>
                    If you are indeed on our ban list and you feel it is unjust or any other circumstances, please fill out the appeal format below.
                </li>

                <li>
                    <form action="index.php?p=protest" method="post">
                        <input type="hidden" name="subprotest" value="1">

                        <ul class="layout_box_medium_ul">
                            <li>
                                <label for="Type">Ban Type</label>
                                <select id="Type" name="Type" class="input margin-top:half" onChange="changeType(this[this.selectedIndex].value);">
                                    <option value="0">Steam ID</option>
                                    <option value="1">IP Address</option>
                                </select>
                            </li>
                            <li id="steam.row">
                                <label for="SteamID">Your SteamID <span class="mandatory">*</span></label>
                                <input type="text" id="SteamID" name="SteamID" size="40" maxlength="64" value="{$steam_id}" class="input margin-top:half" />
                            </li>
                            <li id="ip.row" style="display: none;">
                                <label for="Ip">Your IP</label>
                                <input type="text" id="Ip" name="IP" size="40" maxlength="64" value="{$ip}" class="input" />
                            </li>
                            <li>
                                <label for="PlayerName">Name <span class="mandatory">*</span></label>
                                <input type="text" id="PlayerName" size="40" maxlength="70" name="PlayerName" value="{$player_name}" class="input margin-top:half" />
                            </li>
                            <li>
                                <label for="BanReason">Reason why you should be unbanned <span class="mandatory">*</span>: (Be as descriptive as possible)</label>
                                <textarea id="BanReason" name="BanReason" cols="30" rows="5" class="input input_textarea margin-top:half">{$reason}</textarea>
                            </li>
                            <li>
                                <label for="EmailAddr">Your Email</label>
                                <input type="text" id="EmailAddr" size="40" maxlength="70" name="EmailAddr" value="{$player_email}" class="input margin-top:half" />
                            </li>
                            <li>
                                <button type="submit" name="alogin" class="button button:primary" onmouseover="ButtonOver(&quot;alogin&quot;)" onmouseout="ButtonOver(&quot;alogin&quot;)" id="alogin" value="Submit">Submit</button>
                            </li>
                        </ul>
                    </form>
                </li>
                <li>
                    <h3>What happens after I post my appeal?</h3>
                    <p>The staff team will be notified of your appeal. They will then review if the ban is conclusive. After reviewing you will get a reply, which usally means within 24 hours.</p>
                    <h3>Note:</h3>
                    <p>Sending emails with threats to our admins, scolding or shouting will not get you unbanned and you will be permanently denied from using any of our services.</p>
                </li>
            </ul>

        </div>
    </div>
</div>