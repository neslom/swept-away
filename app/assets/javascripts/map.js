$(document).ready(function() {
  L.mapbox.accessToken = 'pk.eyJ1IjoibmVzbG9tIiwiYSI6ImJDd2pwVHMifQ.3BbhgKs-v8-O0Uy2qF179g';
  var map = L.mapbox.map('map', 'neslom.m1o8j7i1')
  .setView([41.854, -87.623], 10);

  map.touchZoom.disable();
  map.scrollWheelZoom.disable();

  $(".leaflet-clickable").click(function() {
    alert("hello");
  });
});
