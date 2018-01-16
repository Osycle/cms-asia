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

			<div class="f-lang col-md-1 align-right-md lang-nav">
				<span class="lang-item active"><a href="{$GLOBAL_URL}">RUS</a></span> 
				/ 
				<span class="lang-item"><a href="{$GLOBAL_URL}/en/index.htm">UZB</a></span>
			</div>


			<div class="dev col-md-6 align-left-md hidden-xs hidden-sm">
		      <a href="https://www.life-style.uz" class="link" title="Создание и продвижение сайтов в Ташкенте">
		      	Создание сайтов
		      	<em><font color="#2678b7">Life </font></em><font color="ghostwhite">Style</font>
		      </a> 
			</div>
			<div class="copyright col-md-6 align-right-md">
		    <p>© <time id="copydate">2018</time> 
		    	Construction <font color="#2678b7">Asia</font>. Все права защищены</p>
		    <script>copydate.innerText = new Date().getFullYear()</script>
		    <p>
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