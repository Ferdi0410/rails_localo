import GMaps from 'gmaps/gmaps.js';


let userPosition = { lat: 0, lng: 0, icon: new google.maps.MarkerImage('//maps.gstatic.com/mapfiles/mobile/mobileimgs2.png',
                                                    new google.maps.Size(22,22),
                                                    new google.maps.Point(0,18),
                                                    new google.maps.Point(11,11)),
                                                     }

function autoUpdate() { const mapElement = document.getElementById('map');
if (mapElement) { // don't try to build a map if there's no div#map to inject in
  const map = new GMaps({ el: '#map', lat: 0, lng: 0 });
  setUserPosition(map)
  const markers = JSON.parse(mapElement.dataset.markers);
  map.addMarkers(markers);
  if (markers.length === 0) {
    map.setZoom(2);
  } else if (markers.length === 1) {
    map.setCenter(markers[0].lat, markers[0].lng);
    map.setZoom(10);
  } else {
    map.fitLatLngBounds(markers);
  }
  setTimeout(autoUpdate, 10000000);
}
}
autoUpdate();

function setUserPosition(map) {
  GMaps.geolocate({
    success: function(position) {
      userPosition.lat = position.coords.latitude
      userPosition.lng = position.coords.longitude
      map.setCenter(position.coords.latitude, position.coords.longitude);
      map.addMarker(userPosition)
    }
  })
}

// map.drawRoute({
//   origin: [-12.044012922866312, -77.02470665341184],
//   destination: [-12.090814532191756, -77.02271108990476],
//   travelMode: 'driving',
//   strokeColor: '#131540',
//   strokeOpacity: 0.6,
//   strokeWeight: 6
// });
