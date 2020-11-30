	<!-- </div> -->
	</div>
	</main>
	<footer>
	    <div id="mainwrapper" class="layout_container">
	        <div class="footer_sourcebans">
	            <a href="https://sbpp.github.io/" target="_blank" rel="noopener">SourceBans++</a> {$version}{$git}
	            <span>Powered by <a href="https://www.sourcemod.net" target="_blank" rel="noopener">SourceMod</a></span>
	        </div>
	        <div class="footer_copyright">
	            <span>Copyright © (website name)</span>
	            <a href="https://axendev.net/" title="Theme by aXenDev" target="_blank" rel="noopener">Theme by aXenDev</a>
	        </div>
	    </div>
	</footer>
	<script>
	    {$query}

	    {literal}
    	    window.addEvent('domready', function() {
    
    	        ProcessAdminTabs();
    
    	        var Tips2 = new Tips($('.tip'), {
    	            initialize: function() {
    	                this.fx = new Fx.Style(this.toolTip, 'opacity', {duration: 300, wait: false}).set(0);
    	            },
    	            onShow: function(toolTip) {
    	                this.fx.start(1);
    	            },
    	            onHide: function(toolTip) {
    	                this.fx.start(0);
    	            }
    	        });
    	        var Tips4 = new Tips($('.perm'), {
    	            className: 'perm'
    	        });
    	    });
	    {/literal}
	</script>
	</body>

	</html>