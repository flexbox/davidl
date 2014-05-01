$ ->
  lastScrollTop = 0
  $(window).scroll (event) ->
    scrollTop = $(this).scrollTop()
    if scrollTop > lastScrollTop
      # downscroll code
      $('.m-header').removeClass('is-show').addClass 'is-hidden'
    else
      $('.m-header').removeClass('is-hidden').addClass 'is-show'
    lastScrollTop = scrollTop

  $('#js-off-canvas-toggle').click ->
    $("html,body").animate
      scrollTop: 0
    , 500

