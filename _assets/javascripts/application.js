//= require vendor/jquery-2.1.1
//= require vendor/scrollup/jquery.scrollUp

$('document').ready(function() {
  $("#core-values .double-field-first").click(function() {
    if ($(this).hasClass("active")) {
      $(this).removeClass("active").parents(".field-item").find(".double-field-second").slideUp();
    } else {
      $(this).addClass("active").parents(".field-item").find(".double-field-second").slideDown();
    }
  });

  $.scrollUp();
});
