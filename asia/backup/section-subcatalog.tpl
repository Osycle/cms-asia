{include file="header.tpl" title=$section.name keywords=$section.keywords description=$section.description}
{foreach item=navItem1 from=$sectionTree name=navItems1}{if $navItem1.fileName eq 'slider'}{if $navItem1.status eq 'visible'}
<div class="page-banner">
	<div class="fullscreen-container">
		<div class="rev-slider-page row">
			<ul>
				{fetch_sliders assign=sectionSliders section=slider limit=7 orderBy="publishedOn DESC"}   
				{foreach item=slider from=$sectionSliders name=sectionSliders}{if $slider.fileName eq $section.fileName}
					<li data-transition="fade" data-masterspeed="2000">
						<img src="{$slider.images.original.url}" alt="{$slider.title}">
						<div class="container">
							<div class="caption slide-header customin customout" data-customin="y:30;opacity:0;" data-customout="y:0;opacity:0;" data-y="top" data-x="left" data-voffset="120" data-hoffset="200" data-speed="1300" data-start="800" data-ease="easeInBack">
								<h2{if $slider.color_title !=''} class="{$slider.color_title}"{/if}>{$slider.title|smarty:nodefaults}</h2>
								{if $slider.alias !=''}<p{if $slider.color !=''} class="{$slider.color}"{/if}>{$slider.alias|smarty:nodefaults}</p>{/if}
							</div>
						</div>
					</li>
				{/if}{/foreach}
			</ul>
		</div>
	</div>
</div> <!-- ./END SLIDER -->
{/if}{/if}{/foreach}

<div class="catalog-article">
	<div class="row p-v-60">
		<div class="container">
			<div class="catalog-article-content parag-m-v-15 align-center-sm clearfix">
				{fetch_articles assign=sectionArticles section=$section.sectionId limit=50 fields="articleId, title, url, summary, fileName, material, price, discountprice, complect"}   
				{foreach item=article from=$sectionArticles name=sectionArticles}
				{php}number_format($number, 2, '.', ','){/php} 
				<div class="catalog-article-item clearfix">
					<div class="carousel col-md-5">
						<!-- CAROUSEL MAIN-->
						<div class="carousel-main">
							{images_articles getFrom="articles" assign="articleImages" articleId=$article.articleId}
							{if $articleImages}{foreach item=articleImage from=$articleImages}
							<div class="carousel-cell">
								<a href="{$SITE_URL}/images/gallery/big-{$articleImage.fileName}" data-fancybox="article-l-items">
									<img src="{$SITE_URL}/images/gallery/big-{$articleImage.fileName}" />
								</a>
							</div>
							{/foreach}{/if}
						</div>
						<!-- CAROUSEL NAV-->
						<div class="carousel-nav">
							{images_articles getFrom="articles" assign="articleImages" articleId=$article.articleId}
							{if $articleImages}{foreach item=articleImage from=$articleImages}
							<div class="carousel-cell">
								<img role="button" src="{$SITE_URL}/images/gallery/medium-{$articleImage.fileName}" />
							</div>
							{/foreach}{/if}
						</div>
						
					</div>
					<div class="catalog-article-desc col-md-7">
						<h2>{$article.title}</h2>
						<div class="desc-content">
							{$article.summary|smarty:nodefaults}
							<div class="catalog-article-info">
								<div class="info-desc col-xs-12">
									{if $article.material !=''}
									<div class="info-desc-item col-xs-12 m-v-5">
										<b class="col-md-4">Материалы:</b><span class="col-md-8 col-xs-12">{$article.material}</span>
									</div>
									{/if}
									{if $article.complect !=''}
									<div class="info-desc-item col-xs-12 m-v-5">
										<b class="col-md-4">В комплекте:</b><span class="col-md-8 col-xs-12">{$article.complect}</span>
									</div>
									{/if}
								</div>
								<div class="pirce-content col-xs-12 m-t-40">
									<b class="col-md-4">Цена:</b><span class="col-md-8 col-xs-12">{$article.discountprice|number_format} сум </span>
								</div>
								<div class="button-content col-xs-12">
									<span class="btn-bid">
										<a role="button" data-toggle="modal" data-target="#modal-bid">Оставить заявку</a>
									</span>
								</div>
							</div>
						</div>
					</div>
				</div>
				
				
				{foreachelse}
				<div class="catalog-article-item clearfix">
					<p>- продукция еще добалялась в этот раздел -</p>
				</div>
				{/foreach}
				
				

				
				
			</div>
		</div>
	</div>
</div>

<!-- BID MODAL-->
{include file="micro_templates/modal-form.tpl"}
<!-- END BID MODAL-->
				
				
{include file="footer.tpl"}