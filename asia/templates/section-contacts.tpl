

	<div class="contacts" id="sectionContent">

		<div class="bg-page row">
			<div class="layer">
		
				<div class="bg-wall hidden-xs hidden-sm"></div>
					<div id="map-canvas" class="map-content" data-aos="fade" data-aos-duration="1600" data-aos-delay="1000"></div>

						<div class="bg-img" style="background-image: url('{$SITE_URL}/images/sections/{$section.sectionId}/original.jpg');"></div>
			
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
							<div class="contacts-content row">

								<div class="col-md-offset-7 col-md-5 p-h-15">
									<div class="contacts-info pie-md-10 m-v-30" data-aos="fade" data-aos-duration="2000" data-aos-delay="600">
										<h3>Контакты</h3>
										<p>E-mail: im@sh.uz</p>
										<p>Tel: {$config.phone}</p>
										<p>Fax: {$config.fax}</p>
										<p>{$config.address|smarty:nodefaults}</p>
									</div>
									<div class="social pie-md-2 m-v-30">
										<ul>
			                <li data-aos="fade-left" data-aos-delay="500"><a href="{$config.InstagramLink}"><i class="i-ls-instagram"></i></a></li>
			                <li data-aos="fade-left" data-aos-delay="750"><a href="{$config.facebookLink}"><i class="i-ls-facebook"></i></a></li>
			                <li data-aos="fade-left" data-aos-delay="1000"><a href="{$config.telegramLink}"><i class="i-ls-telegram"></i></a></li>
			                <li data-aos="fade-left" data-aos-delay="1250"><a href="{$config.okLink}"><i class="i-ls-ok"></i></a></li>
										</ul>
									</div>
								</div>

							</div>
						</div>
					</div>
		
			</div>
		</div>

		{literal}
			<script type="text/javascript">
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
						fillColor: '#2678b7',
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
				
				//google.maps.event.addDomListener(window, 'load', initialize);
				initialize();

				function checkResize(){
					var center = map.getCenter();
					google.maps.event.trigger(map, 'resize');
					map.setCenter(center);
				}
				
				window.onresize = checkResize;	
				
			</script>  
		{/literal}

	</div>

