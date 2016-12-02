<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
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
		function initMap() {
			var myLatLng = {lat: 37.566535, lng: 126.977969};
			
			var map = new google.maps.Map(document.getElementById('map'), {
				center : myLatLng,
				zoom : 12
			});
			
			var marker1 = new google.maps.Marker({
			    position: myLatLng,
			    map: map,
			    label: "500000000",
			    title: "Hello World! 1"
			});
			
			var marker2 = new google.maps.Marker({
			    //position: myLatLng,
			    position: {lat: 37.576535, lng: 126.987969},
			    title: "Hello World! 2"
			});
			
			// To add the marker to the map, call setMap();
			marker2.setMap(map);
			
			//marker2.setMap(null);
			//marker2 = null;
			
		}
	</script>
	<script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBE_VO_ZX-ge_nM6o8dkOlvDdoGyui_vZ4&callback=initMap"></script>

</body>
</html>
