			</main><!-- ./MAIN -->
			


	<!-- FOOTER -->
	<footer id="footer" class="container-fluid align-center-sm">
		<div class="container">

			<div class="f-page-num col-md-1">
				{literal}
				<span class="active-menu-num color-1"></span> / 
				<span class="total-menu-num"></span>
				{/literal}
			</div>

			<div class="f-nav-circle col-md-4">
				<ul class="f-menu-list">
					{foreach item=navItem1 from=$sectionTree name=navItems1}
						{if $navItem1.top_menu eq '1'}
							<router-link  filename="{$navItem1.fileName}" to="{$navItem1.fileName}" tag="li">
								<a role="button" href="javascript:void(0)">&nbsp;</a>
							</router-link>
						{/if}
					{/foreach}
				</ul> 
			</div>

			<div class="f-nav-line col-md-2 hidden-xs hidden-sm">
				<span>
					{foreach item=navItem1 from=$sectionTree name=navItems1}
						{if $navItem1.top_menu eq '1'}
							<router-link  filename="{$navItem1.fileName}" to="{$navItem1.fileName}" tag="i">
							</router-link>
						{/if}
					{/foreach}
				</span>
			</div>

			<div class="f-soc-contact col-md-4">
				<i class="i-ls-phone"></i>
				<span>{$config.phone}</span>
			</div>

			<div class="f-lang col-md-1">
				<span class="color-1">
					<a href="javascript:void(0)">RUS</a>
				</span> 
				/ <a href="javascript:void(0)">UZB</a> 
			</div>

		</div>
	</footer>
	

</div>
			<!-- SCRIPTS -->
			<script src="{$THEME_URL}/js/scripts.min.js"></script>
			<script src="{$THEME_URL}/js/vue.min.js"></script>
			<script src="{$THEME_URL}/js/vue-resource.min.js"></script>
			<script src="{$THEME_URL}/js/vue-router.min.js"></script>
			<script src="{$THEME_URL}/js/template.js"></script>
			<script src="{$THEME_URL}/js/main.js"></script>
			
			<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAVUinUZqQAIM1NfbavWbOKtsc3l-XE_ag"></script>

			<script src="{$SITE_URL}/mail/mail.js"></script>


		{if $config.yandex_metrika !=''}{yandex_metrika}{/if}
		{if $config.google_analytics !=''}{google_analytics}{/if}	
	</body>
</html>