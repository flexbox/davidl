$ ->
  $(window).scroll ->
    # header_top = $('#top').height()
    # header_top_breakpoint = header_top / 2

    # if $(window).scrollTop() > header_top_breakpoint
    #   $('.m-control').removeClass('is-hidden').addClass 'is-show'
    # else
    #   $('.m-control').removeClass('is-show').addClass 'is-hidden'


  lastScrollTop = 0
  $(window).scroll (event) ->
    scrollTop = $(this).scrollTop()
    if scrollTop > lastScrollTop
      # downscroll code
      $('.m-header').removeClass('is-show').addClass 'is-hidden'
    else
      $('.m-header').removeClass('is-hidden').addClass 'is-show'
    lastScrollTop = scrollTop

