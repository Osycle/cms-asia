

<div class="cooperation" id="sectionContent">

	<div class="bg-page row" data-aos-delay="350" data-aos="fade-left" data-aos-duration="1500">
		<div class="bg-img" style="background-image: url('{$SITE_URL}/images/sections/{$section.sectionId}/original.jpg');"></div>
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

						<div class="cooperation-content row">
							<div class="col-md-6 align-right-md p-h-15" data-aos-delay="400" data-aos="fade-left" data-aos-duration="2000">
								<h3>{$section.name|smarty:nodefaults}</h3>
								{$section.content|smarty:nodefaults}
								<span class="btn-def" role="button">
									<a role="button" href="file.doc" download="download">Скачать форму</a>
								</span>
							</div>

						</div>

					</div>
				</div>
	
		</div>
	</div>
</div>

