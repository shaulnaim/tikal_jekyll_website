



$('document').ready(function() {
  $("#core-values .double-field-first").click(function() {
    if ($(this).hasClass("active")) {
      $(this).removeClass("active").parents(".field-item").find(".double-field-second").slideUp();
    } else {
      $(this).addClass("active").parents(".field-item").find(".double-field-second").slideDown();
    }
  });

  $.scrollUp();

  // enable careers vertiavl carousel
  Drupal.behaviors.tikalScrollItems.attach();
});
