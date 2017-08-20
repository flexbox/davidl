$(function() {

  $.ajax({
    url: 'https://www.codeschool.com/users/_flexbox.json',
    dataType: 'jsonp',
    success: function(data) {
      populateWithCourses(data.courses.completed)
    }
  });

  function populateWithCourses(courses) {
    var $badges = $('#js-badges');
    $badges.html('');

    courses.forEach(function(course) {
      $div = $('<div />', {
        'class': 'colums'
      }).appendTo($badges);

      $('<img />', {
        src: course.badge
      }).appendTo($div);

      $('<a />', {
        'class': 'button',
        target: '_blank',
        href: course.url,
        text: 'Voir le cours'
      }).appendTo($div);
    });
  }
});
