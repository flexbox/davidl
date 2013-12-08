$ ->
  $(window).scroll ->
    headerTop = $('#top').height()

    #console.log( $(window).scrollTop() );
    if $(window).scrollTop() > headerTop
      $('.m-control').removeClass('is-hidden').addClass 'is-show'
    else
      $('.m-control').removeClass('is-show').addClass 'is-hidden'
