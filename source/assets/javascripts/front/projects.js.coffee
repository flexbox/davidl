$ ->
  $('#js-sub-nav--home a').click (event) ->
    event.preventDefault()
    $('#js-sub-nav--home dd').removeClass('active')
    $(this).parent('dd').addClass('active')

  $('#js-mixitup-container').mixItUp
    animation:
      enable: false

    callbacks:
      onMixLoad: ->
        $(this).mixItUp "setOptions",
          animation:
            enable: true
            duration: 300
            effects: 'fade translateZ(-360px) stagger(34ms)'
            easing: 'ease'
        return
