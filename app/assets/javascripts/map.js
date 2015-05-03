$(document).ready(function() {
  L.mapbox.accessToken = 'pk.eyJ1IjoibmVzbG9tIiwiYSI6ImJDd2pwVHMifQ.3BbhgKs-v8-O0Uy2qF179g';
  var map = L.mapbox.map('map', 'neslom.a5edca51')
    .setView([41.854, -87.623], 10);

  map.touchZoom.disable();
  map.scrollWheelZoom.disable();

  map.featureLayer.on("layeradd", function(e) {
    var marker = e.layer;
    var ward = marker.feature.properties.WARD;

    var popupContent = "<a href=/street_sweeps/" + ward + " remote='true' class='ward-submit'>" + ward + "</a>";

    marker.bindPopup(popupContent);
  });

  $("#map").click(function() {
    if (!($(".map-tooltip").is(":hidden"))) {
      $("#submit").toggle("block");
    } else if ($(".map-tooltip").is(":hidden")) {
      $("#submit").hide();
    }
  });

  $(".close").click(function() {
    $("#submit").hide();
  });

 //.map-tooltip-content is what I need to grab for submission to controller

  //$("#map").on("click", ".ward-submit", function() {
    //$(".ward-submit").click(function() {
      //var wardId = $(this).val();
      //$.ajax({
        //method: "GET",
        //url: "street_sweeps/" + wardId
      //});
    //});
  //});
});
