$(document).ready(function(){
  var fadeTime = 1500;

  $(".fa").fadeIn(fadeTime, function() {
    fadesOut();
  });

  function fadesIn() {
    $(".fa").fadeIn(fadeTime, function() {
      fadesOut();
    });
  };

  function fadesOut() {
    $(".fa").fadeOut(fadeTime, function() {
      fadesIn();
    });
  };
});
