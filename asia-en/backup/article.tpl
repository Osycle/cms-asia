{include file="header.tpl" title=$article.title keywords=$article.keywords description=$article.description}
{foreach item=sale from=$sectionTree name=sales}{if $sale.fileName eq 'sale'}
<div class="page-banner">
	<div class="fullscreen-container">
		<div class="rev-slider-page row" >
			<ul>
				<li data-transition="fade" data-masterspeed="2000">
					<img src="{$SITE_URL}/images/sections/{$sale.sectionId}/original.jpg" alt="{$sale.name|smarty:nodefaults}">
					<div class="container-fluider">
						<div class="caption slide-header customin customout" data-y="center"  data-x="left" data-customin="y:0;opacity:0;" data-customout="y:0;opacity:0;" data-voffset="0" data-hoffset="50" data-speed="1300" data-start="800" data-ease="easeInBack">
							<h1 data-flicker="{$sale.name|smarty:nodefaults}">{$sale.name|smarty:nodefaults}</h1>
						</div>
					</div>
				</li>
			</ul>
		</div>
	</div>
</div>
{/if}{/foreach}
<div class="stock-article">
	<div class="row p-v-60">
		<div class="container">
			<div class="stock-article-content align-center-sm clearfix">
				<div class="stock-article-desc col-xs-12">
					<h2>{$article.title}</h2>
					<div class="row">
						<div class="desc-content parag-p-h-15">
							<img src="{$article.images.original.url}" alt="{$article.title}" align="left">
							{$article.content|smarty:nodefaults}
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div> 

{include file="footer.tpl"}