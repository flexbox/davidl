$ ->
  $('#js-sub-nav--home a').click (event) ->
    event.preventDefault()
    $('#js-sub-nav--home dd').removeClass('active')
    $(this).parent('dd').addClass('active')

  $('#js-mixitup-container').mixItUp(
    animation:
      duration: 400
      effects: 'fade translateZ(-360px) stagger(34ms)'
      easing: 'ease'
    )
