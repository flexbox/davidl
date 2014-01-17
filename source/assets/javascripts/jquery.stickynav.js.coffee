$ ->
  $(window).scroll ->
    header_top = $('#top').height()
    header_top_breakpoint = header_top / 2

    #console.log( $(window).scrollTop() );
    if $(window).scrollTop() > header_top_breakpoint
      $('.m-control').removeClass('is-hidden').addClass 'is-show'
    else
      $('.m-control').removeClass('is-show').addClass 'is-hidden'
