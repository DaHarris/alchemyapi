$(document).ready(function() {

  $('#options').on('click', function() {
    var inputs = $('.tweet, .stack');
    $.each(inputs, function(index, value) {
      text = $(this).text();
      $.ajax({
        url: "/api/getSentiment",
        data: {text: text}
      }).success(function(value) {
        var div = $("div:contains(" + value['text']+ ")").last();
        var score = parseFloat(value['score']);
        var hslValues = evaluateScoreForColor(score);
        div.css('color', hslValues);
      })
    });
  });

  function evaluateScoreForColor(score) {
    var saturation = "100%";
    var lightness = "50%";
    var top = 120;

    score = score + 1;
    score = score/2;
    var hue = top*score;

    return "hsl(" + hue + "," + saturation + "," + lightness + ")";
  }

});
