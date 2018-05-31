// a method that return the current location
// a method that get all the attraction locations
// a method that compares current location with the attraction location (with radius proximity)
// play the file attached to this specifci attraction
// you launch the code when the page loads.
// it fetches the current coordinates every 15 seconds and do the comparison

function fetchCurrentLocation() {
  // return a object with lat and lng
  let userLocation = {
    lat: 0,
    lng: 0
  }
  var options = {
    enableHighAccuracy: true,
    timeout: 5000,
    maximumAge: 0
  };

  function success(pos) {
    var crd = pos.coords;
    userLocation.lat = crd.latitude;
    userLocation.lng = crd.longitude;
  }

  function error(err) {
    console.warn(`ERROR(${err.code}): ${err.message}`);
  }

  navigator.geolocation.getCurrentPosition(success, error, options);

  return userLocation;
}


function getAttractionsCoordinates() {

  // should return an array of JS object with lat and lng
}

function runCoordinatesAudioChecking() {
  const currentLocation = fetchCurrentLocation()


  //....
}

runCoordinatesAudioChecking()


