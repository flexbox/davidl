$ ->
  $('#js-sub-nav--home a').click (event) ->
    event.preventDefault()
    $('#js-sub-nav--home dd').removeClass('active')
    $(this).parent('dd').addClass('active')

  $('#js-mixitup-container').mixItUp(
    animation:
      duration: 400
      effects: 'scale(1.00)'
      easing: 'ease'
    )
