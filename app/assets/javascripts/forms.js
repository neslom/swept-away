$(document).ready(function() {
  $("#ward_id").change(function() {
    var ward_id = $(this).val();
    $.ajax({
      method: "GET",
      url: "/search",
      data: { street_sweep: { ward_id: ward_id } },
      success: function(data) {
        addSections(data);
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
