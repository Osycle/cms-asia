<ol class="breadcrumb padd-hor-0 marg-bottom-0 marg-top-15" data-aos="fade-up" data-aos-duration="2000" data-aos-delay="500">
	<li><a href="{$SITE_URL}">Главная</a></li>
	{foreach item=navItem from=$sectionParents name=navItems}
		{if $smarty.foreach.navItems.last}
			{if $boldLastItem}
				<li><a href="{$navItem.url}">{$navItem.alias}</a></li>
			{elseif $noLastLink}
				<li class="active"><a href="{$navItem.url}">{$navItem.alias}</a></li>
			{else}
				<li><a href="{$navItem.url}">{$navItem.alias}</a></li>
			{/if}
		{else}
			<li class="active"><a href="{$navItem.url}" >{$navItem.alias}</a></li>
		{/if}
	{/foreach}
</ol>