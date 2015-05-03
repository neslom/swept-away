$(document).ready(function() {
  L.mapbox.accessToken = 'pk.eyJ1IjoibmVzbG9tIiwiYSI6ImJDd2pwVHMifQ.3BbhgKs-v8-O0Uy2qF179g';
  var map = L.mapbox.map('map', 'neslom.a5edca51')
    .setView([41.854, -87.623], 10);

  //map.touchZoom.disable();
  //map.scrollWheelZoom.disable();

  $("#map").click(function() {
    if (!($(".map-tooltip").is(":hidden"))) {
      $("#submit").toggle("block");
    } else if ($(".map-tooltip").is(":hidden")) {
      $("#submit").fadeOut();
    }
  });

  $(".close").click(function() {
    $("#submit").fadeOut();
  });

  $("#submit").click(function() {
    var wardSection = $(".map-tooltip-content").text();
    $.ajax({
      method: "GET",
      url: "street_sweeps/" + wardSection,
      dataType: "json",
      success: function(data) {
        $("#dates").append("<h3>Ward " + wardSection + "'s street sweeping schedule:</h4><br>")
        printSchedule(data)
      }
    });
  });

  function printSchedule(data) {
    data.forEach(function(e) {
      return $("#dates").append("<h4>" + e.month + " " + e.days + "</h4><br>")
    });
  };
});
