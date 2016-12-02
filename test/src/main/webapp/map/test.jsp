<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Map Test</title>
<style type="text/css">
html,body {
	height: 100%;
	margin: 0;
	padding: 0;
}

#map {
	height: 100%;
}
</style>
</head>
<body>
	<div id="map"></div>
	
	<script type="text/javascript">
		var map = null;
		
		// 맵 초기화
		function initMap() {
			var center = {lat: 40.889169, lng: 127.821108};
			
			// 지도 옵션
			var mapOptions = {
				zoom : 7,
				center : center,
				//maxZoom : 18,
				fullscreenControl : true
			};
			
			// 지도 생성
			map = new google.maps.Map(document.getElementById("map"), mapOptions);
			
			/* map.addListener("dragend", function() {
				var center = map.getCenter();
				console.log("lat=" + map.getCenter().lat() + ";lng=" + map.getCenter().lng());
			}); */
			

			
			var markers = [];
			
			var markerImage = new google.maps.MarkerImage("/js/js-marker-clusterer-gh-pages/images/n_pin.png", new google.maps.Size(26, 34));
			
			var position = new google.maps.LatLng('42.819907', '130.360107');
			var marker = new google.maps.Marker({position: position, map: map, icon:markerImage});
			marker.setTitle('중국 길림성 용두산');
			markers.push(marker);
		
			position = new google.maps.LatLng('42.852358', '130.271060');
			marker = new google.maps.Marker({position: position, map: map, icon:markerImage});
			marker.setTitle('중국 길림성 혼춘현');
			markers.push(marker);
		
			position = new google.maps.LatLng('42.852342', '130.271017');
			marker = new google.maps.Marker({position: position, map: map, icon:markerImage});
			marker.setTitle('중국 길림성 혼춘현 팔련성');
			markers.push(marker);
		
			position = new google.maps.LatLng('42.692555', '130.759314');
			marker = new google.maps.Marker({position: position, map: map, icon:markerImage});
			marker.setTitle('러시아 프리모르스키 크레이');
			markers.push(marker);
		
			position = new google.maps.LatLng('43.349900', '132.476768');
			marker = new google.maps.Marker({position: position, map: map, icon:markerImage});
			marker.setTitle('러시아 연해주 스쵸클랴누하');
			markers.push(marker);
		
			position = new google.maps.LatLng('40.254090', '128.316255');
			marker = new google.maps.Marker({position: position, map: map, icon:markerImage});
			marker.setTitle('함경남도 북청군');
			markers.push(marker);
		
			position = new google.maps.LatLng('42.045038', '129.959980');
			marker = new google.maps.Marker({position: position, map: map, icon:markerImage});
			marker.setTitle('함경북도 청진시');
			markers.push(marker);
		
			position = new google.maps.LatLng('41.156677', '126.150280');
			marker = new google.maps.Marker({position: position, map: map, icon:markerImage});
			marker.setTitle('중국 길림성 집안현 환도산성');
			markers.push(marker);
		
			position = new google.maps.LatLng('41.278375', '125.350548');
			marker = new google.maps.Marker({position: position, map: map, icon:markerImage});
			marker.setTitle('중국 요녕성 환인현');
			markers.push(marker);
		
			position = new google.maps.LatLng('41.329317', '125.414987');
			marker = new google.maps.Marker({position: position, map: map, icon:markerImage});
			marker.setTitle('중국 요녕성 환인현 오녀산');
			markers.push(marker);
		
			position = new google.maps.LatLng('41.285837', '125.33506');
			marker = new google.maps.Marker({position: position, map: map, icon:markerImage});
			marker.setTitle('중국 요녕성 환인현 하고성자촌');
			markers.push(marker);
		
			position = new google.maps.LatLng('41.298095', '125.333779');
			marker = new google.maps.Marker({position: position, map: map, icon:markerImage});
			marker.setTitle('중국 요녕성 환인현 상고성자묘군');
			markers.push(marker);
		
			position = new google.maps.LatLng('41.343771', '125.113376');
			marker = new google.maps.Marker({position: position, map: map, icon:markerImage});
			marker.setTitle('중국 요녕성 환인현 고력묘자촌');
			markers.push(marker);
		
			position = new google.maps.LatLng('41.125982', '126.195630');
			marker = new google.maps.Marker({position: position, map: map, icon:markerImage});
			marker.setTitle('중국 길림성 집안현');
			markers.push(marker);
		
			position = new google.maps.LatLng('41.125612', '126.183498');
			marker = new google.maps.Marker({position: position, map: map, icon:markerImage});
			marker.setTitle('중국 길림성 집안현 국내성');
			markers.push(marker);
		
			position = new google.maps.LatLng('41.148050', '126.220336');
			marker = new google.maps.Marker({position: position, map: map, icon:markerImage});
			marker.setTitle('중국 길림성 집안현 우산하고분');
			markers.push(marker);
		
			position = new google.maps.LatLng('41.054300', '126.073600');
			marker = new google.maps.Marker({position: position, map: map, icon:markerImage});
			marker.setTitle('중국 길림성 집안현 서대총');
			markers.push(marker);
		
			position = new google.maps.LatLng('41.148066', '126.220261');
			marker = new google.maps.Marker({position: position, map: map, icon:markerImage});
			marker.setTitle('중국 길림성 집안현 태왕릉');
			markers.push(marker);
		
			position = new google.maps.LatLng('39.037519', '125.754069');
			marker = new google.maps.Marker({position: position, map: map, icon:markerImage});
			marker.setTitle('북한 평양');
			markers.push(marker);
		
			position = new google.maps.LatLng('39.037519', '125.754069');
			marker = new google.maps.Marker({position: position, map: map, icon:markerImage});
			marker.setTitle('북한 평양시 모란봉공원');
			markers.push(marker);
		
			position = new google.maps.LatLng('41.092700', '126.133400');
			marker = new google.maps.Marker({position: position, map: map, icon:markerImage});
			marker.setTitle('중국 길림성 집안현 장군총');
			markers.push(marker);
		
			position = new google.maps.LatLng('39.035994', '125.754284');
			marker = new google.maps.Marker({position: position, map: map, icon:markerImage});
			marker.setTitle('북한 평양시 모란봉공원');
			markers.push(marker);
		
			position = new google.maps.LatLng('39.041517', '125.759543');
			marker = new google.maps.Marker({position: position, map: map, icon:markerImage});
			marker.setTitle('북한 평양시 모란봉공원');
			markers.push(marker);
		
			position = new google.maps.LatLng('39.037083', '125.759758');
			marker = new google.maps.Marker({position: position, map: map, icon:markerImage});
			marker.setTitle('북한 평양시 모란봉공원');
			markers.push(marker);
		
			position = new google.maps.LatLng('39.023288', '125.757376');
			marker = new google.maps.Marker({position: position, map: map, icon:markerImage});
			marker.setTitle('북한 평양시');
			markers.push(marker);
		
			position = new google.maps.LatLng('39.022610', '125.756797');
			marker = new google.maps.Marker({position: position, map: map, icon:markerImage});
			marker.setTitle('북한 평양시 대동문공원');
			markers.push(marker);
		
			position = new google.maps.LatLng('39.027140', '125.741793');
			marker = new google.maps.Marker({position: position, map: map, icon:markerImage});
			marker.setTitle('북한 평양시');
			markers.push(marker);
		
			position = new google.maps.LatLng('38.915949', '125.966111');
			marker = new google.maps.Marker({position: position, map: map, icon:markerImage});
			marker.setTitle('북한 평양시 제령산');
			markers.push(marker);
		
			position = new google.maps.LatLng('38.863887', '125.415029');
			marker = new google.maps.Marker({position: position, map: map, icon:markerImage});
			marker.setTitle('북한 평안남도 남포시 덕흥리');
			markers.push(marker);
		
			position = new google.maps.LatLng('38.864004', '125.414814');
			marker = new google.maps.Marker({position: position, map: map, icon:markerImage});
			marker.setTitle('북한 평안남도 남포시 고구려 고분군');
			markers.push(marker);
		
			position = new google.maps.LatLng('38.449261', '125.508838');
			marker = new google.maps.Marker({position: position, map: map, icon:markerImage});
			marker.setTitle('북한 황해남도 안악군 오국리');
			markers.push(marker);
		
			position = new google.maps.LatLng('43.286922', '128.188648');
			marker = new google.maps.Marker({position: position, map: map, icon:markerImage});
			marker.setTitle('중국 길림성');
			markers.push(marker);
		
			position = new google.maps.LatLng('43.284860', '128.199205');
			marker = new google.maps.Marker({position: position, map: map, icon:markerImage});
			marker.setTitle('중국 길림성 돈화시');
			markers.push(marker);
		
			position = new google.maps.LatLng('43.921414', '126.489157');
			marker = new google.maps.Marker({position: position, map: map, icon:markerImage});
			marker.setTitle('중국 길림성 성산자산성');
			markers.push(marker);
		
			position = new google.maps.LatLng('43.284860', '128.199205');
			marker = new google.maps.Marker({position: position, map: map, icon:markerImage});
			marker.setTitle('중국 길림성 둔화시');
			markers.push(marker);
		
			position = new google.maps.LatLng('44.122026', '129.169635');
			marker = new google.maps.Marker({position: position, map: map, icon:markerImage});
			marker.setTitle('중국 흑룡강성 영안현');
			markers.push(marker);
		
			position = new google.maps.LatLng('44.122026', '129.169635');
			marker = new google.maps.Marker({position: position, map: map, icon:markerImage});
			marker.setTitle('중국 흑룡강성 영안현');
			markers.push(marker);
		
			position = new google.maps.LatLng('44.133784', '129.160702');
			marker = new google.maps.Marker({position: position, map: map, icon:markerImage});
			marker.setTitle('중국 흑룡강성 연안현');
			markers.push(marker);
		
			position = new google.maps.LatLng('44.133004', '129.138317');
			marker = new google.maps.Marker({position: position, map: map, icon:markerImage});
			marker.setTitle('중국 흑룡강성 영안현');
			markers.push(marker);
		
			position = new google.maps.LatLng('44.167365', '129.116678');
			marker = new google.maps.Marker({position: position, map: map, icon:markerImage});
			marker.setTitle('중국 흑룡강성 무단장시');
			markers.push(marker);
		
			position = new google.maps.LatLng('42.546641', '129.010771');
			marker = new google.maps.Marker({position: position, map: map, icon:markerImage});
			marker.setTitle('중국 길림성 화룡 시');
			markers.push(marker);
		
			position = new google.maps.LatLng('42.713114', '129.154023');
			marker = new google.maps.Marker({position: position, map: map, icon:markerImage});
			marker.setTitle('중국 길림성 화룡시 서고성');
			markers.push(marker);
		
			position = new google.maps.LatLng('37.583331', '126.977190');
			marker = new google.maps.Marker({position: position, map: map, icon:markerImage});
			marker.setTitle('대한민국 서울특별시');
			markers.push(marker);
		
			position = new google.maps.LatLng('37.985892', '126.859802');
			marker = new google.maps.Marker({position: position, map: map, icon:markerImage});
			marker.setTitle('경기도 연천군 장남면 고랑포');
			markers.push(marker);
		
			position = new google.maps.LatLng('37.541643', '127.097554');
			marker = new google.maps.Marker({position: position, map: map, icon:markerImage});
			marker.setTitle('경기도 구리시 아차산 일대');
			markers.push(marker);
		
			position = new google.maps.LatLng('37.522119', '127.120724');
			marker = new google.maps.Marker({position: position, map: map, icon:markerImage});
			marker.setTitle('서울시 송파구 오륜동');
			markers.push(marker);
		
			position = new google.maps.LatLng('37.541609', '127.097608');
			marker = new google.maps.Marker({position: position, map: map, icon:markerImage});
			marker.setTitle('서울시 광진구 광장동 홍련봉보루유적');
			markers.push(marker);
		
			position = new google.maps.LatLng('37.050125', '127.854954');
			marker = new google.maps.Marker({position: position, map: map, icon:markerImage});
			marker.setTitle('충청북도 충주시 가금면');
			markers.push(marker);
		
			position = new google.maps.LatLng('37.028151', '127.848479');
			marker = new google.maps.Marker({position: position, map: map, icon:markerImage});
			marker.setTitle('충청북도 충주시 가금면 용전리');
			markers.push(marker);
		
			position = new google.maps.LatLng('43.284860', '128.199205');
			marker = new google.maps.Marker({position: position, map: map, icon:markerImage});
			marker.setTitle('중국 길림성 돈화시');
			markers.push(marker);
		
			position = new google.maps.LatLng('41.148066', '126.220261');
			marker = new google.maps.Marker({position: position, map: map, icon:markerImage});
			marker.setTitle('중국 길림성 집안현 태왕릉');
			markers.push(marker);
			
			var styles= [[
	      		{
	      			url:'/js/js-marker-clusterer-gh-pages/images/n_m1.png',
	      			width:43,
	      			height:43,
	      			anchor:[0, 0],
	      			textColor: '#000000',
	      			textSize: 10
	      		},
	      		{
	      			url:'/js/js-marker-clusterer-gh-pages/images/n_m2.png',
	      			width:67,
	      			height:67,
	      			anchor:[0, 0],
	      			textColor: '#000000',
	      			textSize: 10
	      		},
	      		{
	      			url:'/js/js-marker-clusterer-gh-pages/images/n_m3.png',
	      			width:91,
	      			height:91,
	      			anchor:[0, 0],
	      			textColor: '#000000',
	      			textSize: 10
	      		},
	      		{
	      			url:'/js/js-marker-clusterer-gh-pages/images/n_m4.png',
	      			width:113,
	      			height:113,
	      			anchor:[0, 0],
	      			textColor: '#000000',
	      			textSize: 10
	      		},
	      		{
	      			url:'/js/js-marker-clusterer-gh-pages/images/n_m5.png',
	      			width:137,
	      			height:137,
	      			anchor:[0, 0],
	      			textColor: '#000000',
	      			textSize: 10
	      		}
	      	]];
			
			var marekerClusterer = new MarkerClusterer(map, markers, {
				imagePath: "/js/js-marker-clusterer-gh-pages/images/m"
				//styles: styles[0]
			});
		}
	</script>
	<script type="text/javascript" src="/js/js-marker-clusterer-gh-pages/src/markerclusterer.js"></script>
	<script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBE_VO_ZX-ge_nM6o8dkOlvDdoGyui_vZ4&callback=initMap"></script>

	

</body>
</html>
