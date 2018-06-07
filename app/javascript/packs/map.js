 import GMaps from 'gmaps/gmaps.js';

 // yourArray.forEach(function (arrayItem) {
 //     var x = arrayItem.prop1 + 2;
 //     console.log(x);
 // });

function buildMap() {
  const mapElement = document.getElementById('map');
  if (mapElement) { // don't try to build a map if there's no div#map to inject in
   const map = new GMaps({ el: '#map', lat: 0, lng: 0 });
   const markers = JSON.parse(mapElement.dataset.markers);
   const markerPath = mapElement.dataset.markerPath;
   trackMe(map, markerPath);

   map.addMarkers(markers);

   if (markers.length === 0) {
     map.setZoom(2);
   } else if (markers.length === 1) {
     // map.setCenter(markers[0].lat, markers[0].lng);
     map.setZoom(10);
   } else {
     map.setZoom(16);
     // map.fitLatLngBounds(markers);
   }
   // setTimeout(buildMap, 10000);
 }
}

function trackMe(map, markerPath) {
  let userPosition = {
    lat: 0,
    lng: 0,
    icon: new google.maps.MarkerImage(markerPath, new google.maps.Size(40,40)),
  }
 if (navigator.geolocation) {
   // this.isTracking = true;
    const userMarker = map.addMarker(userPosition)
    navigator.geolocation.watchPosition((position) => {
      updateCurrentPosition(map, userMarker, position)
    });
  }
}

function updateCurrentPosition(map, marker, position) {
  const newPosition = new google.maps.LatLng({lat: position.coords.latitude, lng: position.coords.longitude});
  map.setCenter(position.coords.latitude, position.coords.longitude);
  marker.setPosition(newPosition)
}

buildMap();
