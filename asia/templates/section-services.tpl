

{foreach item=navItem1 from=$sectionTree name=navItems1}{if $navItem1.sectionId eq $section.sectionId}
<div class="services" id="sectionContent">

	<div class="bg-page row">
		{foreach item=navItem2 from=$navItem1.subsections name=navItems2}{if $navItem2.status eq 'visible'}
		<div class="bg-service-{$smarty.foreach.navItems2.iteration}">
			<div class="bg-img" style="background-image: url('{$SITE_URL}/images/sections/{$navItem2.sectionId}/original.jpg');"></div>
		</div>
		{/if}{/foreach}
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

					<div class="services-content">
						{foreach item=navItem2 from=$navItem1.subsections name=navItems2}{if $navItem2.status eq 'visible'}
						<div class="services-item">
							<div class="desc-content" data-aos="fade-up" data-aos-anchor-placement="center-bottom" data-aos-duration="1750">
								{$navItem2.summary|smarty:nodefaults}
							</div>
							<span class="btn-def" role="button" data-aos="fade-up">
								<a data-toggle="modal" data-target="#bidModal">Заказать</a>
							</span>
						</div>
						{/if}{/foreach}
					</div>

				</div>
			</div>
		</div>
	</div>
</div>
{/if}{/foreach}

