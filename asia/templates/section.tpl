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

<div class="row  align-center-sm m-v-60">
	<div class="container">
		<div class="p-v-60 m-v-60 align-center">
			<h2>{$section.name|smarty:nodefaults}</h2>
			{$section.content|smarty:nodefaults}
		</div>
	</div>
</div>

{include file="footer.tpl"}