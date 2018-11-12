import GMaps from 'gmaps/gmaps.js';
import { autocomplete } from '../components/autocomplete';


const mapElement = document.getElementById('map');
if (mapElement) { // don't try to build a map if there's no div#map to inject in
  const map = new GMaps({ el: '#map', lat: 0, lng: 0 });
  const markers = JSON.parse(mapElement.dataset.markers);
  map.addMarkers(markers);
  map.markers.forEach(marker => {
      marker.addListener('mouseover', function(e) {
        const spaceElement = document.querySelector(`#space-${marker.space_id}`);
        spaceElement.classList.add("card-active");
      });
      marker.addListener('mouseout', function(e) {
        const spaceElement = document.querySelector(`#space-${marker.space_id}`);
        spaceElement.classList.remove("card-active");
      });
    }
  )
  if (markers.length === 0) {
    map.setZoom(2);
  }
  else if (markers.length === 1) {
    map.setCenter(markers[0].lat, markers[0].lng);
    map.setZoom(14);
    // var marker = new google.maps.Marker({
    //   position: uluru,
    //   map: map,
    //   title: "#{space.name}"
    // });
    // markers.addListener('click', function() {
    //   infowindow.open(map, marker);
    // });
    }

  else {
      map.fitLatLngBounds(markers);
    }
  }

autocomplete();


