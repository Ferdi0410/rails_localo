 import GMaps from 'gmaps/gmaps.js';

 // yourArray.forEach(function (arrayItem) {
 //     var x = arrayItem.prop1 + 2;
 //     console.log(x);
 // });
const styles = [
    {
        "featureType": "landscape.man_made",
        "elementType": "geometry.fill",
        "stylers": [
            {
                "color": "#e9e5dc"
            }
        ]
    },
    {
        "featureType": "landscape.natural",
        "elementType": "geometry.fill",
        "stylers": [
            {
                "visibility": "on"
            },
            {
                "color": "#b8cb93"
            }
        ]
    },
    {
        "featureType": "poi",
        "elementType": "all",
        "stylers": [
            {
                "visibility": "off"
            }
        ]
    },
    {
        "featureType": "poi.business",
        "elementType": "all",
        "stylers": [
            {
                "visibility": "simplified"
            }
        ]
    },
    {
        "featureType": "poi.medical",
        "elementType": "all",
        "stylers": [
            {
                "visibility": "on"
            }
        ]
    },
    {
        "featureType": "poi.park",
        "elementType": "all",
        "stylers": [
            {
                "visibility": "on"
            }
        ]
    },
    {
        "featureType": "poi.park",
        "elementType": "geometry.fill",
        "stylers": [
            {
                "color": "#ccdca1"
            }
        ]
    },
    {
        "featureType": "poi.sports_complex",
        "elementType": "all",
        "stylers": [
            {
                "visibility": "on"
            }
        ]
    },
    {
        "featureType": "road",
        "elementType": "geometry.fill",
        "stylers": [
            {
                "hue": "#ff0000"
            },
            {
                "saturation": -100
            },
            {
                "lightness": 99
            }
        ]
    },
    {
        "featureType": "road",
        "elementType": "geometry.stroke",
        "stylers": [
            {
                "color": "#808080"
            },
            {
                "lightness": 54
            },
            {
                "visibility": "off"
            }
        ]
    },
    {
        "featureType": "road",
        "elementType": "labels.text.fill",
        "stylers": [
            {
                "color": "#767676"
            }
        ]
    },
    {
        "featureType": "road",
        "elementType": "labels.text.stroke",
        "stylers": [
            {
                "color": "#ffffff"
            }
        ]
    },
    {
        "featureType": "water",
        "elementType": "all",
        "stylers": [
            {
                "saturation": 43
            },
            {
                "lightness": -11
            },
            {
                "color": "#89cada"
            }
        ]
    }
];

function buildMap() {
  const mapElement = document.getElementById('map');
  if (mapElement) { // don't try to build a map if there's no div#map to inject in
   const map = new GMaps({ el: '#map', lat: 0, lng: 0 });
   const markers = JSON.parse(mapElement.dataset.markers);
   const markerPath = mapElement.dataset.markerPath;
   map.addStyle({
     styles: styles,
     mapTypeId: 'map_style'
   });
   map.setStyle('map_style');
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
