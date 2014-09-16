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
            effects: 'fade'
            easing: 'cubic-bezier(0.645, 0.045, 0.355, 1)'
        return
