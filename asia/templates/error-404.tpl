
{fetch_articles}
{php}
	get_fetch_articles();
{/php}
{foreach item=article from=$sectionArticles name=sectionArticles}{/foreach}






<div class="error-page" id="sectionContent">

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

					<div class="error-404 align-center-sm m-v-60">
						<div class="p-v-60 m-v-60 align-center">
							<h1>
								<font size="7" face="cursive" color="#2678b7">
									<sub>4</sub>0<sup>4</sup>
								</font>
							</h1>
							<h3>Страница не найдена</h3>
							<p>
								<strong>Вероятные причины:</strong><br>
								Была допущена ошибка при наборе адреса.<br>
								Вы нажали на устаревшую ссылку.
							</p>
							<p>
								<a href="{$SITE_URL}"><u>Перейти на главную</u></a>
							</p>
						</div>
					</div>

				</div>
			</div>
		</div>
	</div>

</div>

