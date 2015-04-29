$(document).ready(function() {
  $("a").click(function(e) {
    var target = $(this).attr('href');
    e.preventDefault();
    $("html, body").animate({
      scrollTop: $(target).offset().top
    }, 1500);
  });
});
