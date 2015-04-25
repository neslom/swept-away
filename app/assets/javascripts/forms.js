$(document).ready(function() {
  $("#ward_id").change(function() {
    var ward_id = $(this).val();
    $.ajax({
      method: "GET",
      url: "/search",
      data: { ward_id: ward_id },
      success: function(data) {
        addSections(data);
      }
    });
  });

  $("#section").change(function() {
    var section = $(this).val();
    var ward_id = $("#ward_id").val();
    $.ajax({
      method: "GET",
      url: "/search",
      data: { ward_id: ward_id, section: section },
      success: function(data) {
        $(".signup-input").remove();
        $(".dates").append("<p>" + data + "</p>");
      }
    });
  });

  function addSections(data) {
    data.forEach(function(e) {
      $(optionValues(e)).appendTo("#section");
    });
    $("#section").show();
  };

  function optionValues(data) {
    return "<option value=" + data + ">" + data + "</option>";
  };
});
