
{
	fetch_articles 
		perPage=4
		assign=sectionArticles 
		assignPagination=pagination 
		page=$page 
		section=$section.sectionId 
		path=$section.path 
		seFriendly=true
}


<div class="news" id="sectionContent">

	<div class="bg-page row">
		<div class="layer">
			<div class="bg-shadow"></div>
			<div class="bg-img" style="background-image: url('{$SITE_URL}/images/sections/{$section.sectionId}/original.jpg');"></div>
		</div>
	</div>

	<div class="bg-svg row">
		<div class="container">
		  <div class="bg-lines">
			  <svg class="svg-line line-left">
			  	<line x1="100%" y1="0" x2="100%" y2="100%" />
			  </svg>
			  <svg class="svg-line line-center">
			  	<line x1="50%" y1="0" x2="50%" y2="100%" />
			  </svg>
			  <svg class="svg-line line-right">
			  	<line x1="0" y1="0" x2="0" y2="100%" />
			  </svg>
		  </div>
		</div>
	</div>

	<div class="row">
		<div class="container">
			<div class="main-content align-center-sm">
				<div class="middle-tab">

					<div class="news-content row">
				  
						{foreach item=article from=$sectionArticles name=sectionArticles}
						<figure class="col-md-6 p-h-15"
													data-aos="zoom-in" data-aos-duration="1000" 
													data-aos-delay="{$smarty.foreach.sectionArticles.iteration}00">
							<div class="img-content pie-md-5">
								<img src="{$article.images.original.url}" alt="{$article.title}"/>
							</div>
							<div class="desc-content pie-md-8">
								<h4>{$article.title}</h4>
								<span class="date"> {$article.publishedOn|date_format:"%e.%m.%Y"}</span>		
								{$article.summary|smarty:nodefaults}
								<div class="link-content">
									<a href="{$article.url}">Подробнее....</a>
								</div>
							</div>
						</figure>
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
	</div>
{$section.fileName}
	{literal}
	<script type="text/javascript">
	var fileName = '{/literal}{$section.fileName}{literal}';
	(function ($){

		replaceLink( ".link-content a" );


		$(".pagination a").map( function( i, el ) {
			var href = $( el ).attr( "href" );
			 $( el ).attr( "href", "#/"+href.substring( ( href.search( fileName ) ) ) )
			
			console.log( fileName );
		} )


	})($);
	</script>
	{/literal}


</div>





