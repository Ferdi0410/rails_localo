let latitude;
let longitude;

// a method that return the current location
// a method that get all the attraction locations
// a method that compares current location with the attraction location (with radius proximity)
// play the file attached to this specifci attraction
// you launch the code when the page loads.
// it fetches the current coordinates every 15 seconds and do the comparison

function fetchCurrentLocation() {
  // return a object with lat and lng
  // check if geolocation is supported/enabled on current browser
  // console.log('CALLING GEO FUNCTION');

  if ("geolocation" in navigator) {
    navigator.geolocation.getCurrentPosition(
      function success(position) {
        // for when getting location is a success
        latitude = position.coords.latitude;
        longitude = position.coords.longitude;

        if (window.location.pathname.includes("tours")) {
          $.ajax({
            url: window.location.pathname + '.js?latitude=' + latitude + '&longitude=' + longitude,
            method: 'get'
          })
        }
     },
    function error(error_message) {
      console.error('An error has occured while retrieving location', error_message);
      // Uncomment if debug needed
      // document.getElementById('howler-errors').innerHTML = error_message.message + error_message.code;
    }
  );
  } else {
    console.log('geolocation is not enabled on this browser')
  }
}

document.addEventListener('DOMContentLoaded', fetchCurrentLocation);
