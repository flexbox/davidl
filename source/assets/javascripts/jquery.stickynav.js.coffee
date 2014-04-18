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
    st = $(this).scrollTop()
    if st > lastScrollTop
      # downscroll code
      wat
    else
    # upscroll code
    lastScrollTop = st

