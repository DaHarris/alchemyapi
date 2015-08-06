$(document).ready(function() {

  $('#keywords').on('click', function() {
    var inputs = $('.tweet, .stack')
    $.each(inputs, function(index, value) {
      text = $(this).text();
      $.ajax({
        url: "/api/getKeywords",
        data: {text: text}
      }).success(function(values) {
        var div = $("div:contains(" + values['text']+ ")").last();
        for (var i=values.keywords.length-1; i>=0; i--) {
          div.after('<a href="#" class="button small">' + values.keywords[i].text + "</a>");
        }
      })
    });
  });

});
