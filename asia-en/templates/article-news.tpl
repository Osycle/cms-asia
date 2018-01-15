
<div class="news-article" id="sectionContent">

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


					<div class="article-content">
						<div class="row">
							<div class="col-md-3 p-h-15 m-v-30">
								<div class="img-content">
									<a href="{$article.images.original.url}" data-fancybox>
										<img src="{$article.images.large.url}" />
									</a>
								</div>
							</div>
							<div class="col-md-8 p-h-15 m-v-15">
								<h2>{$article.title}</h2>
								{$article.content|smarty:nodefaults}
							</div>
						</div>
						
					</div>

				</div>
			</div>
		</div>
	</div>
</div>
