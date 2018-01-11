{*	
<div class="header-hidden"></div>
<header id="header" class="header-scroll">
	<!-- HEADER TOP -->
	<div class="skin-header-top hidden-sm hidden-xs">
		<div class="container">
			<!-- HEADER NAVBAR -->
			<div class="header-navbar">
				<!-- LOGOTYPE -->
				<div class="logo">
					<a  href="{$SITE_URL}" ><img src="{$SITE_URL}/images/logo.png" alt="{$config.website_name}"/></a>
					<p>{$config.website_name|smarty:nodefaults|substr:9}</p>
				</div>
				<!-- MAIN NAVBAR -->
				<nav class="main-navbar">
					<div class="nav-menu">
						<div class="nav-header">
							<ul class="menu-list">
								<li>{foreach item=page from=$allWebpages name=pages}{if $page.top_menu eq '1'}<a href="{$SITE_URL}">{$page.alias}</a></li>{/if}{/foreach}
								{foreach item=navItem1 from=$sectionTree name=navItems1}{if $navItem1.top_menu eq '1'}
								<li><a href="{$navItem1.url}">{$navItem1.alias}</a></li>
								{/if}{/foreach}
							</ul>
						</div>
					</div>
				</nav><!-- ./MAIN NAVBAR -->
				<div class="header-tel">
					<p><img src="{$THEME_URL}/img/icons/tel.png"/><a href="tel:{$config.phone}">{$config.phone}</a></p>
					<p><img src="{$THEME_URL}/img/icons/telegram.png"/><a href="tel:{$config.dopphone}">{$config.dopphone}</a></p>
				</div>
				<div class="header-social">
					<ul>{if $config.facebookLink !=''}<li><a href="{$config.facebookLink}"><i class="i-ls-facebook-circle"></i></a></li>{/if}</ul>
				</div>
		 	</div><!-- ./HEADER NAVBAR -->
		</div><!-- ./CONTAINER -->
	</div><!-- ./HEADER TOP -->
		<!-- HEADER BOTTOM -->
		
	<div class="skin-header-bottom hidden-sm hidden-xs">
		<div class="container">
			<div class="header-cat">
				{foreach item=navItem1 from=$sectionTree name=navItems1}{if $navItem1.fileName eq 'catalog'}
				{foreach item=navItem2 from=$navItem1.subsections name=navItems2}{if $navItem2.status eq 'visible'}
			  	<div class="col-md-2 header-cat-item"><a href="{$navItem2.url}"><i class="i-ls-{$navItem2.section_icon}"></i><p>{$navItem2.name}</p></a></div>
			  	{/if}{/foreach}
			  	{/if}{/foreach}
			</div>
		</div>
	</div>
</header>
<!-- MIN - MENU -->
<div class="min-menu hidden-md hidden-lg">
	<div class="bg-black clearfix"></div>
  	<div class="min-menu-logo"><a href="{$SITE_URL}/images/logo.png"><img src="{$SITE_URL}/images/logo.png" alt="{$config.website_name}"/></a></div>
	<input id="hamburger" class="hamburger" type="checkbox"/>
	<label class="hamburger" for="hamburger">
		<i></i>
		<text><close>Закрыть</close></text>
	</label>
	<section class="drawer-list">
	 	<hr class="line-shadow-1">
	  	<div class="min-menu-skin">
			<ul>
				<li {if $webpage}class="active"{/if}>
					{foreach item=webpage from=$allWebpages name=webpages}
						{if $webpage.top_menu eq '1'}
							<a href="{$SITE_URL}">{$webpage.alias}</a>
						{/if}
					{/foreach}
				</li>

				{foreach item=navItem1 from=$sectionTree name=navItems1}
					{if $navItem1.top_menu eq '1'}
						<li {if $section.fileName eq $navItem1.fileName} class="active"{/if}>
							<a href="{$navItem1.url}">{$navItem1.alias}</a>
						</li>
					{/if}
				{/foreach}

			</ul>
			<div class="min-menu-cat col-xs-12">
				{foreach item=navItem1 from=$sectionTree name=navItems1}{if $navItem1.fileName eq 'catalog'}
				{foreach item=navItem2 from=$navItem1.subsections name=navItems2}{if $navItem2.status eq 'visible'}
			  	<div class="col-sm-6 col-xs-12 min-menu-cat-item"><a href="{$navItem2.url}"><i class="i-ls-{$navItem2.section_icon}"></i><p>{$navItem2.name}</p></a></div>
			  	{/if}{/foreach}
			  	{/if}{/foreach}
		    </div>
	  	</div>
	  	<hr class="line-shadow-2">
	</section>
</div>


*}








	<!-- HEADER -->
	<div class="header-hidden"></div>
	<header id="header" class="header-scroll aLoad">
		<!-- HEADER TOP -->
		<div class="skin-header-top row hidden-sm hidden-xs">
			<div class="container">
					<!-- LOGOTYPE -->
		      <div class="logo pie-lg-3 pie-md-1">
		      	<a  href="{$SITE_URL}" ><img src="{$SITE_URL}/images/logo.png" alt="{$config.website_name}"/></a>
		      	<span>{$config.website_name}</span>
		      	<!-- <p>{$config.website_name|smarty:nodefaults|substr:9}</p> -->
		      </div>

					<!-- MAIN NAVBAR -->
					
				 	<nav class="main-navbar pie-lg-7 pie-md-11">
		       	<div class="nav-menu">
			       	<div class="nav-header">
			          <ul class="menu-list">
									{foreach item=navItem1 from=$sectionTree name=navItems1}
										{if $navItem1.top_menu eq '1'}

										<router-link  filename="{$navItem1.fileName}" v-bind:to="'{$navItem1.fileName}'" tag="li">
											<a role="button" href="javascript:void(0)">{$navItem1.alias}</a>
										</router-link>
										{* COMMENT
											<li  filename="{$navItem1.fileName}" to="{$navItem1.fileName}" tag="li">
												<a role="button" href="#/{$navItem1.fileName}">{$navItem1.alias}</a>
											</li>
										*}
										{/if}
									{/foreach}
							  </ul>
								 <div class="menu-border">
						  		<svg class="line-full">
								  	<line x1="0" y1="100%" x2="100%" y2="100%"></line>
								  </svg>
								  <svg class="line-item">
								  	<line x1="0" y1="100%" x2="100%" y2="100%"></line>
								  </svg>

							  </div>
			      	</div>

			      </div>
				  </nav><!-- ./MAIN NAVBAR -->



			</div><!-- ./CONTAINER -->
		</div><!-- ./HEADER TOP -->
		
	</header>

	<!-- MIN - MENU -->
  <div class="min-menu hidden-md hidden-lg">
  	<div class="bg-black-hidden clearfix"></div>
  	<div class="bg-black clearfix"></div>
  	<div class="min-menu-logo">
			<a  href="{$SITE_URL}" ><img src="{$SITE_URL}/images/logo.png"/></a>
  	</div>
	  <input id="hamburger" class="hamburger" type="checkbox"/>
	  <label class="hamburger" for="hamburger">
	    <i></i>
	  	<text>
	  		<close>Закрыть</close>
	  	</text>
	  </label>

		<section class="drawer-list ">
	  	<div class="min-menu-skin">
	      <ul>
				{foreach item=navItem1 from=$sectionTree name=navItems1}
					{if $navItem1.top_menu eq '1'}
						<router-link  filename="{$navItem1.fileName}" to="{$navItem1.fileName}" tag="li">
							<a role="button" href="javascript:void(0)">{$navItem1.alias}</a>
						</router-link>
					{/if}
				{/foreach}
			  </ul>
	  	</div>
	  </section> 

	</div>
{literal}
<script>
setTimeout( function(){


	if( typeof $ != "undefined" )
		(function( $ ){

		$(".menu-list a").map( function( i, el ){
			var href = $( el ).attr("href");
			var hash = location.hash.replace( /#\//gim, "" );
			console.log( href );
			//$( el ).attr("href", "#/"+href.substring( href.search( new RegExp( hash, 'g') ) ) );

		} )
	})( $ )
}, 1000 );
</script>
{/literal}