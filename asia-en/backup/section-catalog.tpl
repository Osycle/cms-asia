{include file="header.tpl" title=$section.name keywords=$section.keywords description=$section.description}
<div class="page-banner">
	<div class="fullscreen-container">
		<div class="rev-slider-page row">
			<ul>
				<li data-transition="fade" data-masterspeed="2000">
					<img src="{$SITE_URL}/images/sections/{$section.sectionId}/original.jpg" alt="{$section.name|smarty:nodefaults}">
					<div class="container">
						<div class="caption slide-header customin customout" data-y="center" data-x="left" data-customin="y:0;opacity:0;" data-customout="y:0;opacity:0;" data-voffset="0" data-hoffset="50" data-speed="2000" data-start="1000" data-ease="easeInBack">
							<h1 data-flicker="{$section.name|smarty:nodefaults}">{$section.name|smarty:nodefaults}</h1>
							{$section.summary|smarty:nodefaults}
						</div>
					</div>
				</li>
			</ul>
		</div>
	</div>
</div>

{foreach item=navItem1 from=$sectionTree name=navItems1}{if $navItem1.fileName eq 'catalog'}
<div class="catalog">
	<div class="row p-v-60">
		<div class="container">
			<div class="catalog-content col-xs-12">
				{foreach item=navItem2 from=$navItem1.subsections name=navItems2}{if $navItem2.status eq 'visible'}
				<div class="col-md-6 catalog-content-item">
					<a href="{$navItem2.url}">
						<div class="img-content">
							<img src="{$SITE_URL}/images/sections/{$navItem2.sectionId}/original.jpg" alt="{$navItem2.name}"/>
							<span class="bg-black">
								<p>{$navItem2.name}</p>
								<i class="fa fa-arrow-right"></i>
							</span>
						</div>
						<div class="desc-content"><p>{$navItem2.name}</p></div>
					</a>
				</div>
				{/if}{/foreach}
	    	</div>
		</div>
	</div>
</div>
{/if}{/foreach}

{include file="footer.tpl"}