$ ->
  $(".js-linkspy-start").click (event) ->
    path = $(event.currentTarget).find(".js-linkspy-target").attr("href")
    window.location = path
