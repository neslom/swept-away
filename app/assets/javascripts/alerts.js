$(document).ready(function() {
  $("#phone_number").click(function() {
    var phoneNumber = $("#phone_number_input").val();
    $.ajax({
      method: "POST",
      url: "/alerts/welcome",
      dataType: "json",
      data: { phoneNumber: phoneNumber },
      success: function(data) { alert(data.message) },
      error: function(data) { alert(data.responseJSON.message) }
    });
  });
});
