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
	
	<!-- <script type="text/javascript">
		var map;
		function initMap() {
			map = new google.maps.Map(document.getElementById('map'), {
				center : {
					lat : 37.335887,
					lng : 126.584063
				},
				/* center : {
					lat : -34.397,
					lng : 150.644
				}, */
				zoom : 8
			});
		}
	</script>
	<script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBE_VO_ZX-ge_nM6o8dkOlvDdoGyui_vZ4&callback=initMap"></script> -->

	<script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=false"></script>
	<script type="text/javascript">
		function initialize() {
			var myLatlng = new google.maps.LatLng(37.335887, 126.584063);
			var myOptions = {
				zoom : 10,	// 0 ~ 18
				center : myLatlng
				//mapTypeId : google.maps.MapTypeId.ROADMAP,
			}
			var map = new google.maps.Map(document.getElementById("map"), myOptions);
		}

		initialize();
	</script>

</body>
</html>
