{include file="header.tpl" title=$webpage.title keywords=$webpage.keywords description=$webpage.description}
{include file="micro_templates/slider.tpl"}

{foreach item=preim from=$sectionTree name=preims}{if $preim.fileName eq 'preimuschestvo'}
<div class="row short-advant m-v-60">
	<div class="container">
		<h1>{$preim.name}</h1>
		<div class="short-advant-content parag-m-t-10 row clearfix">
			{foreach item=subpreim from=$preim.subsections name=subpreims}{if $subpreim.status eq 'visible'}
			<div class="short-advant-item align-center">
				<div class="img-content"><img src="{$SITE_URL}/images/sections/{$subpreim.sectionId}/original.png" alt="{$subpreim.name}"/></div>
				<p>{$subpreim.name}</p>
			</div>
			{/if}{/foreach}
		</div>
	</div>
</div>
{/if}{/foreach}

{foreach item=sale from=$sectionTree name=sales}{if $sale.fileName eq 'sale'}
<div class="row short-stock m-v-60">
	<div class="container"><h1 data-flicker="Акции"><a href="{$sale.url}">{$sale.name}</a></h1></div>
	<div class="short-stock-content m-v-60">
		<div class="col-xs-12 carousel-stock">
			<div class="carousel-content">
				{fetch_articles assign=sectionArticles section=$sale.sectionId limit=20 orderBy="publishedOn ASC"}   
				{foreach item=article from=$sectionArticles name=sectionArticles}
				<div class="carousel-cell carousel-stock-item">
					<div class="img-content">
						<img src="{$article.images.large.url}" alt="{$article.title}">
						<span class="btn-def"><a href="{$article.url}">подробнее...</a></span>
					</div>
					<div class="desc-content">
						<h4>{$article.title}</h4>
						{$article.summary|smarty:nodefaults}
					</div>
				</div>
				{/foreach}
			</div>
		</div>
	</div>
</div>
{/if}{/foreach}


{include file="micro_templates/parents.tpl"}


{include file="footer.tpl"}