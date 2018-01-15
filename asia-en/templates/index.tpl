


{include file="header.tpl" title=$section.name keywords=$section.keywords description=$section.description}

	<router-view></router-view>
	<section id="sections" class="menu-switch"></section>

	<script type="text/javascript">
	 window.language = "{php}echo $_GET['SITE_LANG'];{/php}";
	</script>

{include file="footer.tpl"}
