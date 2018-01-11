{include file="header.tpl" title=$section.name keywords=$section.keywords description=$section.description}
<div class="page-banner">
	<div class="fullscreen-container">
		<div class="rev-slider-page row" >
			<ul>
				<li data-transition="fade" data-masterspeed="2000">
					<img src="{$SITE_URL}/images/sections/{$section.sectionId}/original.jpg" alt="{$section.name|smarty:nodefaults}">
					<div class="container-fluider">
						<div class="caption slide-header customin customout" data-y="center"  data-x="left" data-customin="y:0;opacity:0;" data-customout="y:0;opacity:0;" data-voffset="0" data-hoffset="50" data-speed="1300" data-start="800" data-ease="easeInBack">
							<h1 data-flicker="{$section.name|smarty:nodefaults}">{$section.name|smarty:nodefaults}</h1>
						</div>
					</div>
				</li>
			</ul>
		</div>
	</div>
</div>
<div class="stock">
	<div class="row p-v-60">
		<div class="container">
			<div class="stock-content align-center-sm col-xs-12">
				<h1>{$section.name|smarty:nodefaults}</h1>
				{fetch_articles perPage=10 assign=sectionArticles assignPagination=pagination page=$page section=$section.sectionId path=$section.path seFriendly=true}
				{foreach item=article from=$sectionArticles name=sectionArticles}
				<div class="stock-item col-xs-12">
					<div class="img-content col-md-3 col-xs-12 p-h-15">
						<a href="{$article.url}">
							<img src="{$article.images.medium.url}" alt="{$article.title}"/>
						</a>
					</div>
					<div class="desc-content p-h-15">
						<h3>{$article.title}</h3>
						{$article.summary|smarty:nodefaults}
					</div>
				</div>
				{/foreach} 
	   		</div>				
	   							
	   		{if $pagination.pages}
	    	<div class="pagination-div col-xs-12 align-center">
				<ul class="pagination">
					{if $pagination.previousPage}
					<li><a href="{$pagination.previousPage.url}"><i class="fa fa-angle-left"></i></a></li>
					{/if}
					{foreach from=$pagination.pages item=pageNum}
						{if $pageNum.num eq $page}
							<li class="active"><a href="{$pageNum.url}">{$pageNum.num}</a></li>
						{elseif $pageNum.num eq '...'}
						...
						{else}
							<li><a href="{$pageNum.url}">{$pageNum.num}</a></li>
						{/if}
					{/foreach}
					{if $pagination.nextPage}
					<li><a href="{$pagination.nextPage.url}"><i class="fa fa-angle-right"></i></a></li>
					{/if}
				</ul>
			</div>
			{/if}
		</div>
	</div>
</div>

{include file="footer.tpl"}