// import { Controller } from "@hotwired/stimulus"

// export default class extends Controller {
//   static values = {
//     apiKey: String,
//     markers: Array
//   }

//   connect() {
//     mapboxgl.accessToken = this.apiKeyValue
//     const geojson = {
//       'type': 'FeatureCollection',
//       'features': []
//     };

//     this.markersValue.forEach((marker) => {
//       geojson.features << {
//         'type': 'Feature',
//         'properties': {
//         },
//         'geometry': {
//         'type': 'Point',
//         'coordinates': [marker.lng, marker.lat]
//         };
//       };
//     });

//     const map = new mapboxgl.Map({
//       container: 'map',
//       style: "mapbox://styles/mapbox/light-v9",
//       center: [130, 35],
//       zoom: 0.75,
//       projection: 'globe'
//     });

//     map.on('style.load', () => {
//       map.setFog({});
//       });

//     for (let marker of geojson.features) {
//       // Create a DOM element for each marker.
//       const el = document.createElement('div');
//       el.className = 'marker';
//       const size = marker.properties.height / 100;
//       el.style.width = `${size}px`;
//       el.style.height = `${size}px`;

//       // Add a popup displayed on click for each marker
//       const popup = new mapboxgl.Popup({ offset: 25 });
//       popup.setHTML(
//       `<h2>${marker.properties.name}</h2>${marker.properties.height}m<br/>`
//       );

//       // Add markers to the map.
//       new mapboxgl.Marker({
//       element: el,
//       // Point markers toward the nearest horizon
//       rotationAlignment: 'horizon',
//       offset: [0, -size / 2]
//       })
//       .setLngLat(marker.geometry.coordinates)
//       .setPopup(popup)
//       .addTo(map);
//       }

//     this.#addMarkersToMap();
//     this.#fitMapToMarkers();
//   };

//   #addMarkersToMap() {
//     this.markersValue.forEach((marker) => {
//       new mapboxgl.Marker()
//         .setLngLat([ marker.lng, marker.lat ])
//         .addTo(this.map)
//     });
//   }

//   #fitMapToMarkers() {
//     const bounds = new mapboxgl.LngLatBounds()
//     this.markersValue.forEach(marker => bounds.extend([ marker.lng, marker.lat ]))
//     this.map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 })
//   };
// }
