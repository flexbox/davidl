$ ->
  $(window).scroll ->
    header_top = $('#top').height()
    header_top_middle = header_top / 2

    #console.log( $(window).scrollTop() );
    if $(window).scrollTop() > header_top
      $('.m-control').removeClass('is-hidden').addClass 'is-show'
    else
      $('.m-control').removeClass('is-show').addClass 'is-hidden'

    if $(window).scrollTop() > 0
      $('.m-masterhead').addClass 'is-scrolling'
    else
      $('.m-masterhead').removeClass 'is-scrolling'
