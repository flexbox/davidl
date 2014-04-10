$('.js-mailchimp-destination').click ->
  $('#js-mailchimpemail').focus()

$('#js-sub-nav--home a').click (event) ->
  event.preventDefault()
  $('#js-sub-nav--home dd').removeClass('active')
  # $(this).addClass('active')
  return

$ ->
  $('#js-mixitup-container').mixItUp()
  return


