{fetch_articles}
{php}
	$fetchArray["limit"] = -1;
	get_fetch_articles( $fetchArray ); 
{/php}


<div class="projects" id="sectionContent">

	<div class="bg-page row">
		<div class="layer">
			<div class="bg-shadow"></div>
			<div class="bg-img" style="background-image: url('{$THEME_URL}/img/bg/projects.jpg');"></div>
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

						<div class="projects-content">
							<div class="grid-img">
								<div class="grid-img-sizer" id="gridAnchor"></div>
								{foreach item=article from=$sectionArticles name=sectionArticles}
									<figure class="grid-img-item {if $smarty.foreach.sectionArticles.iteration == 1} active {/if}" 
													data-aos="zoom-in" data-aos-duration="1000"  data-aos-anchor="#gridAnchor"
													data-aos-delay="{$smarty.foreach.sectionArticles.iteration}00">
										<a href="{$article.url}">
											<div class="img-content">
													{if $smarty.foreach.sectionArticles.iteration == 1}
														<img src="{$article.images.medium.url}"/>
													{else}
														<img src="{$article.images.original.url}"/>
													{/if}
											</div>
											<span class="project-hover">
												<div>
													<h4>{$article.title}</h4>
													{$article.summary|smarty:nodefaults}
												</div>
											</span>
										</a>
									</figure>
								{/foreach}
							</div>
						</div>

					</div>
				</div>
			</div>
		</div>
		
	{literal}
	<script>
	(function ($){
		replaceLink( ".grid-img-item a" );
	})($);
	</script>
	{/literal}

</div>

