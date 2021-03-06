$(document).ready(function() {
  $("#phone_number").click(function() {
    var phoneNumber = $("#phone_number_input").val();
    $.ajax({
      method: "POST",
      url: "/alerts/welcome",
      dataType: "json",
      data: { phoneNumber: phoneNumber },
      success: function(data) {
        $.alert({
          title: "Thanks!",
          content: data.message,
          animationSpeed: 500
        })
      },
      error: function(data) { errorMessages(data) }
    });
  });
});

function errorMessages(data) {
  if (data.responseJSON !== undefined) {
    $.alert({
      title: "Oops",
      content: data.responseJSON.message
    })
  } else {
    $.alert({
      title: "Status " + data.status + "... something went wrong",
      content: data.statusText
    })
  };
  $("body").stop();
};
