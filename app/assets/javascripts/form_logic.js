$(document).ready(function(){
  var $author_dropdown   = $("#author_dropdown"),
      $author_text_field = $("#author_text_field");

  $author_text_field.on("keyup", function() {
    if ( $author_text_field.val() === "" ) {
      $author_dropdown.prop('disabled', false);
    } else {
      $author_dropdown.prop('disabled', true);
    }
  });
});