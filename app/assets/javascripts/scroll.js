$(document).ready(function() {
  $("a.scroll").click(function(e) {
    var target = $(this).attr('href');
    if (target != "/auth/twitter") {
      e.preventDefault();
      $("body").animate({
        scrollTop: $(target).offset().top
      }, 1500);
    }
  });

  $("#about").click(function() {
    $.dialog({
      title: "Street Sweep",
      content: "We use data to help you avoid a car towing situation"
    });
  });
});
