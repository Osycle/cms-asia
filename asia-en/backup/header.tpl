<!DOCTYPE html>
<html lang="ru">
	<head>
		{include file="micro_templates/meta.tpl"}
		
		{include file="micro_templates/link.tpl"}

	    <!--[if lt IE 9]>
	      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
	      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	    <![endif]-->
  	</head>
	<body>
		<div id="page">
			<noscript><p>Ваш браузер не поддерживает скрипты!<br/> Пожалуйста подключите в настройках браузера Javascript</p></noscript> 
			
			<div class="preloader">
				<div class="loader">
					<span class="img-content"><img id="pre-logo" src="{$SITE_URL}/images/logo.png" alt="{$config.website_name}"/></span>
					<span class="percent">0 %</span>
				</div>
			</div>
			
			<!-- MENU -->
			{include file="micro_templates/menu.tpl"}

			<!-- MAIN -->
			<main class="container-fluid">
				<!-- REV SLIDER -->
	
		
