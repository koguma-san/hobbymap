$(document).on('turbolinks:load', function() {

  $('.star-rating .fa').on('mouseover', function() {
    var rating = $(this).data('rating');
    setRating(rating);
  });

  $('.star-rating .fa').on('click', function() {
    var rating = $(this).data('rating');
    $('#book_rating').val(rating);
    setRating(rating);
  });

  function setRating(rating) {
    $('.star-rating .fa').each(function() {
      if ($(this).data('rating') <= rating) {
        $(this).addClass('checked');
      } else {
        $(this).removeClass('checked');
      }
    });
  }
});
