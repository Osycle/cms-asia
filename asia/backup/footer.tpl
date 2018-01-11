			</main><!-- ./MAIN -->
			<!-- FOOTER -->
			<footer id="footer" class="container-fluid align-center-sm">
				<div class="container">
					<div class="footer-content">
						<div class="sec-1 col-md-3">
							<div class="footer-logo">
								<img src="{$THEME_URL}/img/logo-white.png"/>
								<p>{$config.website_name|smarty:nodefaults|substr:9}</p>
							</div>
							<div class="footer-contacts">
								<address>{$config.address|smarty:nodefaults}</address>
								<p>{$config.phone}</p>
								<p>{$config.feedback_email}</p>
							</div>
						</div>
						<div class="sec-2 col-md-2">
							<h4>Навигация</h4>
							<div class="footer-menu">
								<ul>
									<li>{foreach item=nomepage from=$allWebpages name=nomepages}{if $nomepage.top_menu eq '1'}<a href="{$SITE_URL}">{$nomepage.alias}</a></li>{/if}{/foreach}
									{foreach item=footermenu from=$sectionTree name=footermenus}{if $footermenu.top_menu eq '1'}{if $footermenu.sectionId != '2'}
									<li><a href="{$footermenu.url}">{$footermenu.alias}</a></li>
									{/if}{/if}{/foreach}
								</ul>
							</div>
						</div>
						<div class="sec-3 col-md-5 col-md-offset-1">
							{foreach item=catalog from=$sectionTree name=catalogs}{if $catalog.fileName eq 'catalog'}
							<h4>{$catalog.name}</h4>
							<div class="footer-cat">
								<ul>
									{foreach item=catalog1 from=$catalog.subsections name=catalogs}{if $catalog1.status eq 'visible'}
								  	<li><a href="{$catalog1.url}">{$catalog1.alias}</a></li>
								  	{/if}{/foreach}
								</ul>
							</div>
							{/if}{/foreach}
							<div class="footer-copy p-v-30 link-hover hidden-xs hidden-sm">
								<p>© <time id="copydate"></time> {$config.website_copyright}</p>
								<script>copydate.innerText = new Date().getFullYear()</script>
								<p>
									<a href="https://www.life-style.uz" title="Создание и продвижение сайтов в Ташкенте">Создание сайтов</a> 
									<em><font color="#F0A03D">Life </font></em><font color="ghostwhite">Style</font>
								</p>
							</div>
						</div>
						<div class="sec-4 col-md-1">
							<div class="footer-social"><ul>{if $config.facebookLink !=''}<li><a href="{$config.facebookLink}"><i class="i-ls-facebook-circle"></i></a></li>{/if}</ul></div>
						</div>
					</div>
				</div>
			</footer>

			<!-- SCRIPTS -->
			<script src="{$THEME_URL}/js/scripts.min.js"></script>
			<script src="{$THEME_URL}/js/main.js"></script>
			
			<!-- jQuery REVOLUTION Slider  -->
			<script type="text/javascript" src="{$THEME_URL}/rs-plugin/js/jquery.themepunch.revolution.min.js"></script>
			<script type="text/javascript" src="{$THEME_URL}/rs-plugin/js/jquery.themepunch.plugins.min.js"></script>
			
			<script src="{$SITE_URL}/mail/mail.js"></script>
			
			{if $section.sectionId eq '3'}
			<script src="{$SITE_URL}/feedback/feedback.js"></script>
			<style>
				{literal}
				#map-canvas {
					width: {/literal}{$config.maps_wight}{literal};
					height: {/literal}{$config.maps_height}{literal};
				}
				{/literal}
			</style>

			<script src="https://maps.googleapis.com/maps/api/js?key={$config.api_key}"></script>
			<script type="text/javascript">
				{literal}
				var map;
				function initialize() {
				
					var mapOptions = {
						mapTypeId: google.maps.MapTypeId.ROADMAP,
						mapTypeControl: false,
						zoom: {/literal}{$config.zoom}{literal},
						zoomControl: true,
						zoomControlOptions: {
							style: google.maps.ZoomControlStyle.DEFAULT,
							position: google.maps.ControlPosition.DEFAULT
						},
						panControl: true,
						panControlOptions: {
							position: google.maps.ControlPosition.LEFT_TOP
						},
						streetViewControl: false,
						scaleControl: false,
						overviewMapControl: false,
						center: new google.maps.LatLng({/literal}{$config.lat}{literal}, {/literal}{$config.lng}{literal})
					};
					
					map = new google.maps.Map(document.getElementById('map-canvas'),
						mapOptions);
					
					var mapStyles = [
						{
							"featureType": "landscape",
							"stylers": [
								{ "visibility": "on" },
								{ "hue": "#0033ff" },
								{ "saturation": -100 },
								{ "lightness": 77 },
								{ "gamma": 0.34 }
							]
						},{
							"featureType": "water",
							"stylers": [
								{ "visibility": "on" },
								{ "hue": "#ff0000" },
								{ "saturation": -100 },
								{ "lightness": 23 },
								{ "gamma": 1 }
							]
						},{
							"featureType": "water",
							"elementType": "labels",
							"stylers": [
								{ "visibility": "on" }
							]
						},{
							"featureType": "administrative",
							"stylers": [
								{ "visibility": "on" }
							]
						},{
							"featureType": "administrative",
							"elementType": "labels",
							"stylers": [
								{ "visibility": "on" }
							]
						},{
							"featureType": "poi",
							"stylers": [
								{ "visibility": "on" },
								{ "hue": "#ff0000" },
								{ "saturation": -100 },
								{ "lightness": 0 },
								{ "gamma": 1 }
							]
						},{
							"featureType": "road",
							"stylers": [
								{ "visibility": "on" },
								{ "hue": "#ff0000" },
								{ "saturation": -100 },
								{ "lightness": 0 },
								{ "gamma": 1 }
							]
						},{
							"featureType": "transit",
							"stylers": [
								{ "visibility": "on" },
								{ "hue": "#ff0000" },
								{ "saturation": -100 },
								{ "lightness": 0 },
								{ "gamma": 1 }
							]
						}
					];
					
					map.setOptions({
						styles: mapStyles,
						disableDefaultUI: true
					});
					
					var transitLayer = new google.maps.TransitLayer();
					transitLayer.setMap(map);
					
					var bicyclingLayer = new google.maps.BicyclingLayer();
					bicyclingLayer.setMap(map);
					
					var infoContent = '<div class="window-content">'+
															'<div class="logo-map m-v-15"><img src="{/literal}{$SITE_URL}{literal}/images/logo.png"/></div>'+
															'<p>{/literal}{$config.address|smarty:nodefaults}{literal}</p>'+
														'</div>';
					
					var infowindow = new google.maps.InfoWindow({
						content: infoContent
					});
					
					var icon = {
						path: 'M16.5,51s-16.5-25.119-16.5-34.327c0-9.2082,7.3873-16.673,16.5-16.673,9.113,0,16.5,7.4648,16.5,16.673,0,9.208-16.5,34.327-16.5,34.327zm0-27.462c3.7523,0,6.7941-3.0737,6.7941-6.8654,0-3.7916-3.0418-6.8654-6.7941-6.8654s-6.7941,3.0737-6.7941,6.8654c0,3.7916,3.0418,6.8654,6.7941,6.8654z',
						anchor: new google.maps.Point(16.5, 51),
						fillColor: '#F0A03D',
						fillOpacity: 0.6,
						strokeWeight: 0,
						scale: 1
					};
					
					var marker = new google.maps.Marker({
						position: new google.maps.LatLng({/literal}{$config.lat}{literal}, {/literal}{$config.lng}{literal}),
						map: map,
						icon: icon,
						title: 'marker'
					});
					
					google.maps.event.addListener(marker, 'click', function() {
						infowindow.open(map,marker);
					});
				}
				
				google.maps.event.addDomListener(window, 'load', initialize);
				
				function checkResize(){
				
					var center = map.getCenter();
					google.maps.event.trigger(map, 'resize');
					map.setCenter(center);
				}
				
				window.onresize = checkResize;	
				{/literal}		
			</script>  
			{/if}
		</div> 
		
		{if $config.yandex_metrika !=''}{yandex_metrika}{/if}
		{if $config.google_analytics !=''}{google_analytics}{/if}	
	</body>
</html>