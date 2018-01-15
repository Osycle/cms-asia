
<!-- {$SITE_URL}/mail/mail.php -->

<!-- BID MODAL-->
<div class="bid-modal modal fade animated" id="bidModal" tabindex="-1" role="dialog">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<button type="button" class="btn" data-dismiss="modal">
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<div class="modal-body">
				<div class="col-md-12 success-info hide">
					<div id="success-message"></div>
					<div id="fail-message"></div>
				</div>
				<h3>Связаться с нами</h3>
				<form id="mail" method="post" action="{$SITE_URL}/mail/mail.php" class="contact-form">
					<input type="hidden" name="subject" value="Заказа услуги   ">
					<input id="validator" class="hide" type="text" name="validator" value="">
					<!-- NAME -->
					<span class="input input--jiro input-name">
						<input class="input__field input__field--jiro" type="text" name="name" autocomplete="off" />
						<label class="input__label input__label--jiro" for="input-1">
							<span class="input__label-content input__label-content--jiro">Имя, фамилия</span>
						</label>
					</span>
					<!-- NAME ORG-->
					<span class="input input--jiro input-name">
						<input class="input__field input__field--jiro" type="text" name="organization" autocomplete="off" />
						<label class="input__label input__label--jiro" for="input-1">
							<span class="input__label-content input__label-content--jiro">Название организации</span>
						</label>
					</span>
					<!-- EMAIL -->
					<span class="input input--jiro input-email">
						<input class="input__field input__field--jiro" type="text" name="email" autocomplete="off" />
						<label class="input__label input__label--jiro" for="input-2">
							<span class="input__label-content input__label-content--jiro">Электронная почта</span>
						</label>
					</span>
					<!-- TEL -->
					<span class="input input--jiro input-phone">
						<input class="input__field input__field--jiro" type="text" name="tel" autocomplete="off" />
						<label class="input__label input__label--jiro" for="input-3">
							<span class="input__label-content input__label-content--jiro">Номер телефона</span>
						</label>
					</span>
					<div class="form-footer">
				      	<button type="submit" class="align-right btn-def submit">
				      		<b>Отправить</b>
				      	</button>
			      	</div>
				</form>
			</div>
		</div>
	</div>
</div>

