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

<div class="contacts">
	<div class="row">
		<div class="container">
			<div class="align-center-sm p-v-60">
				<div class="col-md-6 contacts-info-intro m-v-30">
					<blockquote class="blockquote style-1">
						<h3>Напишите нам !</h2>
						<div class="desc-content"><p>Мы с удовольствием ответим на все Ваши вопросы !</p></div>
					</blockquote>
				</div>
				<div class="col-xs-12 contacts-form m-v-30">
					<div id="success-yes"></div>
					<form id="feedback" method="post" action="{$SITE_URL}/feedback/feedback.php" class="contact-form">
						<div id="success-error"></div>
						<input type="hidden" name="subject" value="Сообщение с сайта Bumezo">
						<input type="text" id="validator" class="hide" name="validator" value="">
						
						<span class="col-md-4"><input class="form-control" placeholder="Email Адрес" type="text" id="input-1" name="email" minlength="2" autocomplete="off" /></span>
						<span class="col-md-4"><input class="form-control" placeholder="Ваше имя" type="text" id="input-2" name="name" autocomplete="off" /></span>
						<span class="col-md-4"><input class="form-control" placeholder="+998 (xx) xxx-xx-xx" type="text" id="input-3" name="phone" autocomplete="off" /></span>
						<span class="col-md-12 m-v-30"><textarea class="form-control" placeholder="Ваше сообщение..." id="textarea-4" name="message" ></textarea></span>
						<div class="form-footer align-center col-xs-12"><button type="submit" class="btn-bid submit"><font size="3">Отправить</font></button></div>
					</form>
				</div>
				
				<div class="col-xs-12 contacts-info m-v-30">
					<div class="col-md-4 p-h-15 contacts-info-item">
						<blockquote class="blockquote style-3">
							<h3>Наш адрес:</h2>
							<div class="desc-content"><p>{$config.address|smarty:nodefaults}</p></div>
						</blockquote>
					</div>
					<div class="col-md-4 p-h-15 contacts-info-item">
						<blockquote class="blockquote  style-4">
							<h3>Контакты:</h2>
							<div class="desc-content soc-tel">
								<p><img src="{$THEME_URL}/img/icons/tel.png"/><a href="tel:{$config.phone}">{$config.phone}</a></p>
								<p><img src="{$THEME_URL}/img/icons/telegram.png"/><a href="tel:{$config.dopphone}">{$config.dopphone}</a></p>
							</div>
						</blockquote>
					</div>
					<div class="col-md-4 p-h-15 contacts-info-item">
						<blockquote class="blockquote style-2">
							<h3>Почты:</h2>
							<div class="desc-content"><p>{$config.feedback_email}</p></div>
							<p>{$config.email1}</p>
						</blockquote>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="contacts-map m-t-30">
			<h1><i></i>Найдите нас</h1>
			<div id="map-canvas"class="m-t-30"></div>
		</div>
	</div>
</div>


{include file="footer.tpl"}