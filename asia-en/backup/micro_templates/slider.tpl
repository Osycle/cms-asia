{foreach item=navItem1 from=$sectionTree name=navItems1}{if $navItem1.fileName eq 'slider'}{if $navItem1.status eq 'visible'}
<div class="index-slider row">
	<div class="fullscreen-container">
		<div class="rev-slider">
			<ul>
				{assign var=a value=1}
				{fetch_sliders assign=sectionSliders section=slider limit=7 orderBy="publishedOn DESC"}   
				{foreach item=slider from=$sectionSliders name=sectionSliders}
				<li class="slide-{$a}" data-transition="fade" data-masterspeed="2000">
					<img src="{$slider.images.original.url}" alt="{$slider.title}">
					<div class="container">
						<div class="caption slide-header" data-y="top"data-x="left" data-voffset="100"data-hoffset="100"data-speed="1300"data-start="800"data-ease="easeInBack">
							<h2{if $slider.color_title !=''} class="{$slider.color_title}"{/if}>{$slider.title|smarty:nodefaults}</h2>
							{if $slider.alias !=''}<p{if $slider.color !=''} class="{$slider.color}"{/if}>{$slider.alias|smarty:nodefaults}</p>{/if}
							{if $slider.links !=''}<span class="btn-def {$slider.color_btn}"><a href="{$SITE_URL}/{$slider.links}">Перейти в каталог</a></span>{/if}
						</div>
					</div>
				</li>
				{assign var=a value=$a+1}
				{/foreach}
			</ul>
		</div>
	</div>
</div> <!-- ./END SLIDER -->
{/if}{/if}{/foreach}
