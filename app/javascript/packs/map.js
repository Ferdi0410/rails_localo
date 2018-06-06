 import GMaps from 'gmaps/gmaps.js';




function buildMap() {
  const mapElement = document.getElementById('map');
  if (mapElement) { // don't try to build a map if there's no div#map to inject in
   const map = new GMaps({ el: '#map', lat: 0, lng: 0 });
   trackMe(map)
   const markers = JSON.parse(mapElement.dataset.markers);
   map.addMarkers(markers);
   if (markers.length === 0) {
     map.setZoom(2);
   } else if (markers.length === 1) {
     // map.setCenter(markers[0].lat, markers[0].lng);
     map.setZoom(10);
   } else {
     map.fitLatLngBounds(markers);
   }
   // setTimeout(buildMap, 10000);
 }
}
buildMap();


function trackMe(map) {
 let userPosition = { lat: 0, lng: 0, icon: new google.maps.MarkerImage('https://maps.gstatic.com/mapfiles/mobile/mobileimgs2.png',
                                                   new google.maps.Size(22,22),
                                                   new google.maps.Point(0,18),
                                                   new google.maps.Point(11,11)),
                                                    }
 if (navigator.geolocation) {
   // this.isTracking = true;
     const userMarker = map.addMarker(userPosition)
   navigator.geolocation.watchPosition((position) => {
     updateCurrentPosition(map, userMarker, position)
   });

function updateCurrentPosition(map, marker, position) {
const newPosition = new google.maps.LatLng({lat: position.coords.latitude, lng: position.coords.longitude});
map.setCenter(position.coords.latitude, position.coords.longitude);
marker.setPosition(newPosition)
}
  }
 }
