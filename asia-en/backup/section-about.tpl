{include file="header.tpl" title=$section.name keywords=$section.keywords description=$section.description}
<div class="page-banner">
	<div class="fullscreen-container">
		<div class="rev-slider-page row">
			<ul>
				<li data-transition="fade" data-masterspeed="2000">
					<img src="{$SITE_URL}/images/sections/{$section.sectionId}/original.jpg" alt="{$section.summary|smarty:nodefaults|strip_tags}">
					<div class="container">
						<div class="caption slide-header customin customout" data-y="center" data-x="left" data-customin="y:0;opacity:0;" data-customout="y:0;opacity:0;" data-voffset="0" data-hoffset="50" data-speed="2000" data-start="1000" data-ease="easeInBack">
							<h1 data-flicker="{$section.summary|smarty:nodefaults|strip_tags}">{$section.summary|smarty:nodefaults|strip_tags}</h1>
							{$section.content|smarty:nodefaults}
						</div>
					</div>
				</li>
			</ul>
		</div>
	</div>
</div>

{foreach item=about from=$sectionTree name=abouts}{if $about.fileName eq 'about'}
<div class="about">
	<div class="row">
		<div class="container">
			<div class="align-center-sm p-v-60">
				{foreach item=subabout from=$about.subsections name=subabouts}{if $subabout.status eq 'visible'}{if $subabout.fileName eq 'kto_my'}
				<div class="col-md-10 contacts-info-intro float-left m-v-30">
					<blockquote class="blockquote style-1">
						<h3>{$subabout.name}</h2>
						<div class="desc-content">{$subabout.summary|smarty:nodefaults}</div>
					</blockquote>
				</div>
				{/if}{/if}{/foreach}
				{foreach item=subabout from=$about.subsections name=subabouts}{if $subabout.status eq 'visible'}{if $subabout.fileName eq 'chem_my_zanimaemsya'}
				<div class="col-md-10 contacts-info-intro float-right m-v-30">
					<blockquote class="blockquote  style-3 align-right-md">
						<h3>{$subabout.name}</h2>
						<div class="desc-content">{$subabout.summary|smarty:nodefaults}</div>
					</blockquote>
				</div>
				{/if}{/if}{/foreach}
				{foreach item=subabout from=$about.subsections name=subabouts}{if $subabout.status eq 'visible'}{if $subabout.fileName eq 'kak_eto_delaem'}
				<div class="col-md-10 contacts-info-intro float-left m-v-30">
					<blockquote class="blockquote  style-2">
						<h3>{$subabout.name}</h2>
						<div class="desc-content">{$subabout.summary|smarty:nodefaults}</div>
					</blockquote>
				</div>
				{/if}{/if}{/foreach}
			</div>
		</div>
	</div>
	
	<div class="row">
		<div class="bonus-phone">
			<div class="phone-box">
				<figure>
					<div class="desc-content">
						<h4>Звоните !</h4>
						<p>Мы с удовольствием Вам проконсультируем.</p>
						<div class="soc-tel"><img src="{$THEME_URL}/img/icons/tel-white.png" alt="Звоните !"><p>{$config.phone}</p></div>
					</div>
					<div class="img-content"><img src="{$THEME_URL}/img/other/about-phone.png" alt="Звоните! Мы с удовольствием Вам проконсультируем."/></div>
				</figure>
			</div>
		</div>
	</div>
</div>
{/if}{/foreach}

{include file="footer.tpl"}