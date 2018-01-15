{foreach item=partner from=$sectionTree name=partners}{if $partner.fileName eq 'parents'}
<div class="row short-partners p-v-60">
	<div class="container">
		<h1>{$partner.name}</h1>
		<div class="short-partners-content">
			<div class="col-xs-12 carousel-partners">
				<div class="carousel-content">
					{fetch_articles assign=sectionArticles section=$partner.sectionId limit=20}   
					{foreach item=article from=$sectionArticles name=sectionArticles}
					<div class="carousel-cell partners-item"><div class="partners-img"><img src="{$article.images.original.url}" alt="{$article.title}"></div></div>
					{/foreach}
				</div>
			</div>
		</div>
	</div>
</div>
{/if}{/foreach}