$(document).ready(function() {
  $('.js-video-popup').click(function(e) {
    e.preventDefault();
    $('#video-popup').removeClass('hidden');
    $('body').addClass('lock');
  });

  $('#video-popup .close').click(function(e) {
    e.preventDefault();

    // Stop Video
    var $videoId = $('#aa-video');
    var url = $videoId.attr('src');
    $videoId.attr('src', '');
    $videoId.attr('src', url);

    // Close popup
    $('#video-popup').addClass('hidden');
    $('body').removeClass('lock');
  });
});
