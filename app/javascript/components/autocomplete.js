function autocomplete() {
  document.addEventListener("DOMContentLoaded", function() {
    var coworkingSpaceAddress = document.getElementById('coworking_space_address');

    if (coworkingSpaceAddress) {
      var autocomplete = new google.maps.places.Autocomplete(coworkingSpaceAddress, { types: [ 'geocode' ] });
      google.maps.event.addDomListener(coworkingSpaceAddress, 'keydown', function(e) {
        if (e.key === "Enter") {
          e.preventDefault(); // Do not submit the form on Enter.
        }
      });
    }
  });
}

export { autocomplete };
