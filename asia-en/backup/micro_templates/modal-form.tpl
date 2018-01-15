<div class="bid-modal modal fade animated" id="modal-bid" tabindex="-1" role="dialog">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<button type="button" class="btn" data-dismiss="modal">
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<div class="modal-body">
				<div class="success-info">
					<div id="success-message"></div>
					<div id="fail-message"></div>
				</div>
				<h3>Оставить заявку на<br /> <small>{$article.title}</small></h3>
				<form id="mail" method="post" action="{$SITE_URL}/mail/mail.php" class="contact-form">
					<input type="hidden" name="subject" value="Заявка на {$article.title}">
					<input id="validator" class="hide" type="text" name="validator" value="">
					<!-- NAME -->
					<span class="input input--nariko input-name">
						<input class="input__field input__field--nariko" type="text" id="input-1" name="name" minlength="2" autocomplete="off" />
						<label class="input__label input__label--nariko" for="input-1"><span class="input__label-content input__label-content--nariko">Имя</span></label>
					</span>
					<!-- EMAIL -->
					<span class="input input--nariko input-email">
						<input class="input__field input__field--nariko" type="email" id="input-2" name="email" autocomplete="off" />
						<label class="input__label input__label--nariko" for="input-2"><span class="input__label-content input__label-content--nariko">Электронная почта</span></label>
					</span>
					<!-- TEL -->
					<span class="input input--nariko input-phone">
						<input class="input__field input__field--nariko" type="tel" id="input-3" name="phone" autocomplete="off" />
						<label class="input__label input__label--nariko" for="input-3"><span class="input__label-content input__label-content--nariko">Номер телефона</span></label>
					</span>
					<!-- MESSAGE -->
					<span class="textarea">
						<label class="" for="textarea-4"><span class="">Сообщение</span></label>
						<textarea class="" style="resize: none;" id="textarea-4" name="message"></textarea>
					</span>
					<div class="form-footer">
						<button type="submit" class="align-right btn-def"><b>Отправить</b></button>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>



